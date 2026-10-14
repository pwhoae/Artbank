怎麼用ai做ui
:ai 做ui :介面自動拼裝：透過幾句提示詞（Prompts）即可將 AI 生成的 UI 設計圖在引擎中自動拆解並拼接成完整介面。  /入場動效 (Entrance Animation)：自動製作 UI 元素進入畫面的動畫流程。  /待機動效 (Idle Animation)：自動為 UI 元素（如水面、光暈、微光掃過）添加持續循環的待機動效與特效。
UI
「AI做的UI設計為什麼總是很丑？我總結了3套解決方案。」
直接使用成熟的 UI Kit 推薦工具： shadcn/ui、HeroUI、Mantine、Ant Design 等。 
建立專屬的 Design.md（適用於大型/長期專案）
做法： 組件庫僅解決區域一致性，產品品牌與視覺語言需靠 Design.md（設計 DNA 文檔）來約束。  
規範內容： 包含品牌顏色、字體規範、間距規則、卡片樣式、動效原則及設計哲學等。  
生成方式： 可將參考網站（如 Vercel）、設計風格截圖或設計系統丟給 AI，讓其自動總結並提取 Token 生成 Design.md。 
