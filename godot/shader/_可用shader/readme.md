# **🎨 Godot Shader, VFX & Gameplay 系統資源庫**

本倉庫收集並整理了適用於 **Godot Engine** 的各類 **3D/2D Shader 著色器**、**HTML 可視化預覽工具**、**UI 動效系統** 以及 **動作玩法原型 (Gameplay Prototype)** 與參考資源。

## **📌 更新日誌 (2026/07/25 Update)**

本次更新大幅擴充了 **UI 與 3D 整合**、**高級視覺特效 (VFX)**、**背包與圖鑑系統** 以及 **極致打擊感動作玩法 Demo**：

* ⚡ **核心效果**：空間斬 (Spatial Cut)、表面電流、能量光束、透明融球、鏡面反射光與磁吸一筆畫。  
* 🎨 **UI / 系統**：潮酷 UI 動效、專業暫停選單、畫廊、登入介面與具備高級生活機能的背包系統。  
* ⚔️ **玩法 Prototype**：完美閃避回能、大招清場、預判攻擊 AI、震動屏打擊感與鐵軌跟隨鏡頭。

## **📂 Shader & VFX 資源分類與對應工具**

|

| **分類** | **Shader / 資源連結** | **HTML 預覽 / 可視化工具** | **說明 / 備註** |

| **水體與流體** | • [場景\_3D\_water.gdshader](https://github.com/pwhoae/Artbank/blob/main/godot/shader/_%E5%8F%AF%E7%94%A8shader/%E5%A0%B4%E6%99%AF_3D_water.gdshader) • [3D 瀑布.gdshader](https://github.com/pwhoae/Artbank/blob/main/godot/shader/_%E5%8F%AF%E7%94%A8shader/3D%20%E7%80%91%E5%B8%83.gdshader) | — | 3D 水面、流動瀑布效果 |

| **天空與大氣** | • [全動態天空.gdshader](https://github.com/pwhoae/Artbank/blob/main/godot/shader/_%E5%8F%AF%E7%94%A8shader/%E5%85%A8%E5%8B%95%E6%85%8B%E5%A4%A9%E7%A9%BA.gdshader) • [極光\_polarlight.gdshader](https://github.com/pwhoae/Artbank/blob/main/godot/shader/_%E5%8F%AF%E7%94%A8shader/%E6%A5%B5%E5%85%89_polarlight.gdshader) • [卡通雲霧 Shader](https://share.gemini.google/UpQ4vrbmgJeE) | • [2D 藍天白雲.html](https://github.com/pwhoae/Artbank/blob/main/godot/shader/_%E5%8F%AF%E7%94%A8shader/html/2D%20%E8%97%8D%E5%A4%A9%E7%99%BD%E9%9B%B2.html) • [3D 藍天白雲.html](https://github.com/pwhoae/Artbank/blob/main/godot/shader/_%E5%8F%AF%E7%94%A8shader/html/3D%20%E8%97%8D%E5%A4%A9%E7%99%BD%E9%9B%B2.html) | 動態日夜/天空變化、藍天白雲、極光與卡通雲霧 |

| **天體與宇宙** | • [月亮\_moon.gdshader](https://github.com/pwhoae/Artbank/blob/main/godot/shader/_%E5%8F%AF%E7%94%A8shader/%E6%9C%88%E4%BA%AE_moon.gdshader) • [黑洞\_blackhole.gdshader](https://github.com/pwhoae/Artbank/blob/main/godot/shader/_%E5%8F%AF%E7%94%A8shader/%E9%BB%91%E6%B4%9E_blackhole.gdshader) • [無限地形/傳送](https://share.gemini.google/m1Z6quBNjlHY) | • [天空星軌.html](https://github.com/pwhoae/Artbank/blob/main/godot/shader/_%E5%8F%AF%E7%94%A8shader/html/%E5%A4%A9%E7%A9%BA%E6%98%9F%E8%BB%8C.html) | 星球、引力透鏡黑洞與 Godot 3D 無限生成地形/ZZZ 傳送 |

| **特效與動態視覺 (VFX)** | • [空間斬 Shader](https://share.gemini.google/K7ICxv7pyfmO) • [表面電流 Shader](https://share.gemini.google/I9vB4VkqVb8G) • [能量光束](https://share.gemini.google/fHcImOVBS6jx) • [透明融球](https://share.gemini.google/tiI3RXPMClho) • [粒子效果](https://share.gemini.google/ekn3VVYPBLo7) • [窗戶光影](https://share.gemini.google/aRsbtrc7Ieg5) | • [Godot 3D 消散特效.html](https://github.com/pwhoae/Artbank/blob/main/godot/shader/_%E5%8F%AF%E7%94%A8shader/html/Godot%203D%20Shader%20%E6%B6%88%E6%95%A3%E7%89%B9%E6%95%88.html) • [警戒線.html](https://github.com/pwhoae/Artbank/blob/main/godot/shader/_%E5%8F%AF%E7%94%A8shader/html/%E8%AD%A6%E6%88%92%E7%B7%A3.html) | 包含空間斬、表面電流、能量光束、融球、鏡面反射光與粒子特效 |

| **全息與科幻** | • [全息投影.gdshader](https://github.com/pwhoae/Artbank/blob/main/godot/shader/_%E5%8F%AF%E7%94%A8shader/%E5%A0%B4%E6%99%AF_3D_water.gdshader) • [故障著色器.gdshader](https://github.com/pwhoae/Artbank/blob/main/godot/shader/_%E5%8F%AF%E7%94%A8shader/%E6%95%85%E9%9A%9C%E8%91%97%E8%89%B2%E5%99%A8.gdshader) | • [2D/3D 空間掃描.html](https://github.com/pwhoae/Artbank/blob/main/godot/shader/_%E5%8F%AF%E7%94%A8shader/html/3D%E7%A9%BA%E9%97%B4%E6%89%AB%E6%8F%8F%E7%9D%80%E8%89%B2%E5%99%A8.html) | 全息圖、掃描線、Glitch 故障與受擊反饋 |

| **風格化渲染** | • [抖動輪廓與卡通渲染.gdshader](https://github.com/pwhoae/Artbank/blob/main/godot/shader/_%E5%8F%AF%E7%94%A8shader/%E6%8A%96%E5%8B%95%E8%BC%AA%E5%BB%93%E8%88%87%E5%8D%A1%E9%80%9A%E6%B8%B2%E6%9F%93.gdshader) • [3D 纸糊.gdshader](https://github.com/pwhoae/Artbank/blob/main/godot/shader/_%E5%8F%AF%E7%94%A8shader/3D%20%E7%BA%B8%E7%B3%8A.gdshader) | • [3D Jitter Toon Outline.html](https://github.com/pwhoae/Artbank/blob/main/godot/shader/_%E5%8F%AF%E7%94%A8shader/html/godot_3d_jitter_toon_outline_shader_demo.html) | 卡通描邊、Jitter 抖動邊界與紙糊質感 |

## **🖥️ UI / UX 與系統模組**

| **系統名稱** | **展示與教學連結** | **功能亮點與規格** |

| **潮酷 UI 介面動效** | [Godot 4 潮酷 UI 動效範例](https://share.gemini.google/1F99lgOI0K0j) | 現代感選單動畫、特殊按鈕點擊特效 (Special Button Effect) |

| **3D 角色選單 UI** | UI 與 3D 元素結合 demo | 結合 3D 角色動作展示、專業暫停選單 (Pro Pause Menu)、畫廊 (Gallery) 與登入介面 (Login Interface) |

| **背包與物品系統** | [背包系統展示](https://share.gemini.google/83jVlKP3dB3u) | • 清楚圖示與標題分類分頁 • 履歷/取得紀錄功能（最近獲得與特定戰利品追蹤） • 快速整理、篩選與輕鬆切換裝備/使用道具 |

| **角色圖鑑系統** | [角色圖鑑展示](https://share.gemini.google/qAqopwJdfPJd) | 角色資料卡、動態模型展示與解鎖進度紀錄 |

## **🎮 玩法 Demo 與機制試作 (Gameplay Prototypes)**

### **⚔️ 動作戰鬥 Prototype (Dodging & Energy System)**

* **核心機制連結**：[玩家閃避 \+ 敵人攻擊 \+ 能量滿開招秒殺 Prototype](https://share.gemini.google/FhFQodvH9Ylx)  
* **玩家屬性與操作**：  
  * **血量 (HP)**：血量歸零則遊戲結束 (Game Over)。  
  * **能量 (Energy)**：成功觸發 **完美閃避 (Perfect Dodge)** 即可快速回能，滿能可施放高傷害大招。  
  * **動畫狀態機**：包含 待機 (Idle) / 攻擊 (Attack) / 跳躍 (Jump) / 閃避 (Dodge) / 受擊 (Hit) / 死亡 (Die)。  
* **敵人 AI 與打擊感**：  
  * **隨機預判攻擊**：敵人具備攻擊預兆與預判路徑，考驗玩家反應。  
  * **動作打擊感優化**：結合螢幕震動 (Screen Shake)、受擊硬直與殘影特效 (Ghost Trail)。  
* **風格概念與參考**：  
  * **角色/概念**：3.0 鈴妹、佩洛伊斯、星見雅、Fairy、殘影效果。  
  * **音樂/氛圍**：空洞風格 BGM (Hollow BGM)。

### **🧩 解謎與小遊戲玩法**

* **拼圖解謎**：[拼圖遊戲 Prototype](https://share.gemini.google/ac76sJCbDNhN)  
* **真相探索**：[真相解謎 Prototype](https://share.gemini.google/wy5j3uOwUBrV)  
* **鏡面反射與連線**：[生成鏡面反射光遊戲 / 磁吸 / 一筆畫](https://share.gemini.google/m1Z6quBNjlHY)

## **🛠️ 工具、鏡頭與輔助指南 (Utilities & Guides)**

* **Camera2D 與 Camera3D 完全指南**：[教學連結](https://share.gemini.google/Am9kqlaP6O8U) \- 詳細講解 Godot 中 2D 與 3D 攝影機的切換與控制。  
* **3D 地圖定位與導航**：[Godot 3D 地圖定位教學](https://share.gemini.google/iF3gt5YpsXzo) \- 如何在 3D 空間中實作 Map Pin 與座標定位。  
* **鐵軌與軌道跟隨鏡頭**：[跟鐵軌跑運動系統](https://share.gemini.google/KBxgNKkyBLtd) \- 適用於高速移動或跑酷類型的軌道跟隨系統。

## **🖼️ 效果展示 (Demo Preview)**

| **效果名稱** | **預覽圖 / 動態展示** |

| **像素化消散** | |

| **全息投影 (Holographic Projection)** | |

| **輪廓邊界** | |

| **場景 3D 水面 (3D Water)** | |

| **黑洞 (Black Hole)** | |

## **🤖 AI 生成對話與參數分享 (Gemini Shares)**

* [Godot 3D 抖動輪廓 Shader 生成對態](https://share.gemini.google/Ap20SUSWodTF)  
* [Godot 3D 動態天空 (日出/日落/夕陽/夜晚) 參數設置](https://share.gemini.google/D1cFk8Gzdkco)  
* [藍天 Shader 生成對話](https://share.gemini.google/fnEdMzsPPzSI)  
* [熱扭曲 (Heat Distortion) Godot Shader 代碼分析](https://share.gemini.google/Y6d8CuN0ijp5)  
* [輪廓邊界 Shader 討論](https://gemini.google/share/5a18ce72893b?skid=67ebcd64-9a6e-4bc5-b5e1-34aebb8bcfcf)

## **🔗 外部參考與教學連結**

* **Godot4 簡易真實 3D 水面教程：** [Bilibili 影片連結](https://www.bilibili.com/video/BV11b421e7xQ/?share_source=copy_web) (關鍵字: material, seamless, uv1 time\*0.02)  
* **Aurora Shader 效果：** [YouTube 影片連結](https://www.youtube.com/watch?v=cCu-TwZItUo)  
* **像素化傳送門 Shader：** [GodotShaders 連結](https://godotshaders.com/shader/pixelated-portal/)  
* **更多免費 Shader 探索：** [GodotShaders 官網](https://godotshaders.com)

## **💡 開發筆記與小貼士 (Tips)**

1. **Shader 代碼編寫原則**：善用 AI 輔助產生基礎架構或參考社群範例，優先選用結構清晰、註解完整的著色器進行微調。  
2. **無縫貼圖與運動**：針對水面、流體或動態紋理，務必勾選 Seamless（無縫），並使用 UV1 配合 TIME \* 速度 作偏移計算。  
3. **可視化調參**：利用倉庫內提供的 HTML 預覽檔可以直接在瀏覽器中實時調整參數，大幅加速預覽與效果疊加調整。