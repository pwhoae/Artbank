# Bilibili黑名单管理SOP

# Bilibili 黑名單管理 SOP

版本：v1.0　更新日期：2026-11-25
適用工具：`bilibili_blacklist_tool.py`（與本 SOP 同目錄）

---

## 1. 目的

標準化以下三件事，避免重複試錯與誤操作：

1. 從 Bilibili 黑名單 API 匯出使用者名稱（`uname`），並以 `|` 串接成單行。
2. 依指定頁碼範圍（含倒序）抓取黑名單。
3. 安全地批次取消拉黑（解封），並保留可回溯的測試與停止機制。

---

## 2. 前置準備

### 2.1 取得 Cookie

1. 瀏覽器登入 `https://www.bilibili.com`。
2. F12 → **Network** → 重新整理 → 點任一請求 → **Request Headers** → 複製整行 `cookie`。
3. 必須包含 `SESSDATA`（登入態）與 `bili_jct`（CSRF token，解封時必要）。

### 2.2 本機存放（不要在聊天或程式碼中貼 Cookie）

```bash
# 將整串 cookie 存到家目錄，例如：
%USERPROFILE%\.bilibili_cookie
```

> 注意：Cookie 等同帳號憑證。若曾貼到對話或公開場合，請重新登入以更新 `SESSDATA` / `bili_jct`。

### 2.3 環境

- Python 3（僅使用標準庫，無需 `pip install`）
- 網路可達 `api.bilibili.com`

---

## 3. API 與限制（必讀）

| 項目 | 說明 |
| --- | --- |
| 查黑名單 | `GET https://api.bilibili.com/x/relation/blacks`，參數 `pn`（頁碼）、`ps`（每頁，最大 50） |
| 回傳欄位 | `data.list[].mid`、`data.list[].uname`、`data.total` |
| 取消拉黑 | `POST https://api.bilibili.com/x/relation/modify`，表單參數 `fid=<mid>&act=6&csrf=<bili_jct>&re_src=11` |
| 批量介面限制 | `/x/relation/batch/modify` 只支援 `act=1`（關注）與 `act=5`（拉黑），**不能解封**，因此必須逐筆 POST |
| 必要 Header | `Cookie`、`Referer: https://www.bilibili.com/`、瀏覽器 `User-Agent`、`Origin` |
| 常見錯誤 | `-101` 未登入、`-400` 請求/Cookie 錯誤、`-412` 風控限流 |
| 建議間隔 | 每筆解封 ≥ 1.2 秒；遇到 `-412/-403/-101` 立即停止 |

`act` 對照：`1` 關注、`2` 取關、`3` 悄悄關注（已下線）、`4` 取消悄悄關注、`5` 拉黑、`6` 取消拉黑、`7` 踢出粉絲。

---

## 4. 流程 A：匯出 uname 清單

### A1. 網頁版（手動）

1. 啟動工具：

```bash
python "bilibili_blacklist_tool.py"
```

1. 開啟 `http://127.0.0.1:8765`。
2. 貼上 Cookie → 設定 `Pages`（例如 `1 → 249`）→ 輸出格式選 `uname joined by |` → **Fetch & convert**。
3. 按 **Copy** 或 **Download .txt**。

輸出範例：`甲|乙|丙`（單行，無連結）。

### A2. 命令列（自動化）

```bash
python "bilibili_blacklist_tool.py" ^
  --crawl --from 1 --to 249 ^
  --cookie-file "%USERPROFILE%\.bilibili_cookie" ^
  --out "%USERPROFILE%\blacklist.txt"
```

### A3. 只有 API JSON 時（不帶 Cookie）

把 API 回傳的 JSON 貼進 GitLab/本機檔案，再：

```bash
python "bilibili_blacklist_tool.py" --parse api.json --out names.txt
```

---

## 5. 流程 B：指定頁碼範圍（含倒序）

工具支援 `pn` 由大到小；空頁（超出總頁數）會自動略過。

```bash
# 250 往回爬到 240（實際上第 250 頁為空，會抓到 249～240）
python "bilibili_blacklist_tool.py" --crawl --from 250 --to 240 ^
  --cookie-file "%USERPROFILE%\.bilibili_cookie" ^
  --out "%USERPROFILE%\blacklist_250_240.txt"
```

> 頁數換算：`總頁數 = ceil(data.total / ps)`。總數 4980、`ps=20` → 249 頁。

---

## 6. 流程 C：批次取消拉黑（解封）

> 此流程會**實際修改帳號**，請務必依序執行 C1 → C2 → C3。

### C1. 試算（不更動帳號）

```bash
python "bilibili_blacklist_tool.py" --unblock --from 1 --to 249 ^
  --cookie-file "%USERPROFILE%\.bilibili_cookie"
```

預期輸出：`Dry run: would unblock N users. Add --yes to execute.`

### C2. 小規模驗證（建議 10 筆）

```bash
python "bilibili_blacklist_tool.py" --unblock --from 1 --to 249 ^
  --cookie-file "%USERPROFILE%\.bilibili_cookie" ^
  --yes --limit 10 --delay 1.2
```

完成後用流程 A 重新抓取第 1 頁，確認 `data.total` 下降且前 10 位消失。

### C3. 全量執行

```bash
python "bilibili_blacklist_tool.py" --unblock --from 1 --to 249 ^
  --cookie-file "%USERPROFILE%\.bilibili_cookie" ^
  --yes --delay 1.2
```

- 每 25 筆印一次進度。
- 遇到 `-101 / -403 / -412` 自動停止並回報 `ok / failed` 數量。
- 5000 筆 × 1.2 秒 ≈ 1.5 小時，請保持程式在前台直到結束。

---

## 7. 例外處理

| 狀況 | 處理 |
| --- | --- |
| `API error -101` | Cookie 失效或缺少 `SESSDATA`；重新登入並更新 cookie 檔 |
| `API error -400` | Cookie 不完整／過期；重新複製整行 cookie |
| `API error -412` | 被風控；停止程式，等待 10～30 分鐘，加大 `--delay` 後重試 |
| `Cookie is missing bili_jct` | 解封需要 CSRF；確認 cookie 含 `bili_jct` |
| 倒序抓取直接結束沒資料 | 頁碼超出總頁數；工具會略過空頁，若仍無資料檢查 `--from/--to` 是否相反 |
| 解封後 total 與預期不符 | 以重新抓取的 `data.total` 為準，不要用快取值 |

---

## 8. 檢查清單

- [ ] Cookie 含 `SESSDATA` 與 `bili_jct`
- [ ] Cookie 只存在本機檔案，未上傳或貼到公開場合
- [ ] 先用 `--parse` / `--crawl` 驗證名單正確
- [ ] 解封前先跑 dry-run
- [ ] 解封先跑 `--limit 10`，成功後再全量
- [ ] 全量執行時記錄開始/結束時間與 `ok/failed`
- [ ] 完成後重新抓取黑名單總數覆核

---

## 9. 現況記錄（2026-11-25）

- 黑名單總數：4980（初次抓取）→ 4929（測試解封 10 位後）→ **4729（解封 pn=1–10 共 200 位後）**
- 已完成：倒序 `pn=250→240` 名單匯出，200 位，存於 `blacklist_250_240.txt`
- 已完成：解封測試 10/10 成功
- 已完成：`pn=1→10` 名單匯出（200 位，存於 `blacklist_1_10.txt`）並全數解封，200/200 成功、0 失敗
- 待確認：其餘約 4729 位是否全量解封
