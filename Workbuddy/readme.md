### vibe coding 極限


wechat 微信助理 https://www.workbuddy.ai/space/d/u9NTBrTIqBn3Dl3TmR3xVV

考慮security

1. bili 黑名單去掉
2. 


Vibe coding 的重點是：AI 負責寫得快，你要另外加一層「不信任審查」。幾個實際可做的：

**1. 把生成結果當實習生寫的 code**
逐行看 diff，不要只看「能跑」。高風險區塊（登入/權限、支付、檔案上傳、SQL 查詢、反序列化、crypto）一律人工重讀。

**2. 密鑰分離**
API key、service role key 不進前端、不進 Git、不進 prompt。用 env / secret manager，commit 前跑 gitleaks 或 trufflehog。曾經進過 Git 的密鑰要視為已洩漏，直接輪換。Supabase 那類 service role key 放前端是最常見的災難。

**3. 給 AI/Agent 最小權限**
MCP、plugin、tool 只開需要的 scope；工作目錄讀寫範圍限縮；刪除、部署、付款、發信這類操作要手動確認。另外要防 prompt injection——工具描述、網頁內容、issue 裡都可能藏指令，別讓 agent 直接照做。

**4. 依賴投毒（slopsquatting）**
AI 會幻構出看似合理的 package 名。裝之前核對名稱、鎖 lockfile、開 Dependabot/Renovate，必要時生成 SBOM。

**5. 用框架的安全預設，別手搓**
ORM / parameterized query 防 SQL injection、輸出編碼 + CSP 防 XSS、CSRF token、用 Zod/Pydantic 驗證輸入。auth 和加密交給成熟庫，不要讓 AI 自己 implement。

**6. 隔離執行**
在 container / sandbox 裡跑 AI 生成的程式，不要用掛著正式憑證的開發環境直接跑。

**7. CI 上強制 gate**
Semgrep/CodeQL 做 SAST、dependency audit、secret scan、必要時加 DAST。上線前自己問一句：「這個 endpoint 被濫用會怎樣？」——AI 通常沒想過攻擊者視角。

**8. 上線後**
rate limit、log、監控異常 token 消耗和 API 呼叫量。AI 生成的 code 常缺節流，短信/LLM 接口被刷帳很常見。

如果你告诉我具体在用哪套栈（比如 Next.js + Supabase、Flask、还是小程序），我可以给一份更针对性的检查清单。
