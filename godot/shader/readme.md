shader demo
1. 像素化消散
<img src="https://github.com/pwhoae/Artbank/blob/main/godot/shader/%E5%83%8F%E7%B4%A0%E5%8C%96%E6%B6%88%E6%95%A3.gif" width="200" height="200"></img>

3. 

4. 

<h1>shader code不要研究</h1>
有可視化設定 但碼code直接點
vertex
uv
shader庫
shader找簡單的
seamless 無縫

【【Godot4】快速实现简易真实的3D水面】 https://www.bilibili.com/video/BV11b421e7xQ/?share_source=copy_web material seamless uv1 time*0.02
Aurora shader effect:https://www.youtube.com/watch?v=cCu-TwZItUo
像素化傳送門:https://godotshaders.com/shader/pixelated-portal/

shader 不考慮手寫 用ai寫 **不好用** https://godotshaders.com

1. 像素化特效 (Pixel Art Shader)
原理：將 UV 座標乘以設定的「像素解析度（Pixel Resolution）」，再透過 Floor 節點向下取整（例如將 10.9 轉為 10），最後再除以像素解析度。這會將 UV 座標切割成格狀塊狀。
輸出：輸出處理後的 Vector 2 (UV)，作為後續節點的 UV 輸入。
2. 扭曲/擾動特效 (Distortion Shader)
原理：將時間（Time）乘以一個二維向量，輸入到 Tiling and Offset 中，作為 Gradient Noise（漸變雜訊）的 UV，產生滾動的噪點。將此噪點乘以一個微小的「強度（Strength）」，再與原本的 UV 相加。
輸出：輸出新的 Vector 2 (UV)。
3. 外框線特效 (Outline Shader)
原理：
建立一個子圖標（Subgraph Helper）來計算在特定方向（上下左右與對角線）移動特定厚度（Line Thickness）後的 Alpha 值。
在主圖標中複製 8 份該子圖標（對應 8 個方向），相加後使用 Saturate 節點將數值限制在 0~1 之間。
將得到的加總 Alpha 減去原始圖片的 Alpha，即可過濾出「外框」部分。
外框乘以設定顏色，並與原圖混色。
輸出：輸出 Vector 4 (Color) 與 Float (Alpha)。
4. 自發光特效 (Emission Shader)
原理：將圖片顏色（Color）直接乘以「發光強度倍數（Emission Multiplier）」。若專案開啟 Bloom 後期處理特效，會產生漂亮的霓虹發光效果。
輸出：輸出 Vector 4 (Color)。
5. 受擊閃白特效 (Hit Effect Shader)
原理：利用 Blend 節點（設定為 Overwrite 覆蓋模式），將原始顏色與「受擊顏色 × 發光強度」進行混合。不透明度（Opacity）設為 0~1 的滑桿：0 代表無受擊效果，1 代表完全覆蓋受擊色。
輸出：輸出 Vector 4 (Color)。
6. 對比度調整 (Contrast Shader)
原理：使用 Unity 內建的 Contrast 節點，直接輸入一個對比值進行調整。
輸出：輸出 Vector 4 (Color)。
7. 亮度調整 (Brightness Shader)
原理：將原色加上「亮度值」，並使用 Blend 節點（Overwrite 模式，不透明度預設為 1）輸出。數值為 0 時無變化，-1 為全暗，1 為全亮。
輸出：輸出 Vector 4 (Color)。
8. 反相/負片特效 (Negative Shader)
原理：將顏色輸入至 1 Minus 節點（反轉顏色），再利用 Blend 節點（Overwrite 模式）將原圖與反轉圖混合，以「反相程度（Negative Amount）」作為不透明度，實現平滑漸變。
輸出：輸出 Vector 4 (Color)。
9. 飽和度調整 (Saturation Shader)
原理：極為簡單，直接使用內建的 Saturate（或 Saturation）節點，並連入飽和度參數調整。
輸出：輸出 Vector 4 (Color)。
10. 色相偏移特效 (Hue Shift Shader)
原理：將顏色輸入至 Hue 節點。提供一個動畫開關：若啟用動畫，則將時間（Time）乘以「動畫速度」作為偏移量；若不啟用，則使用靜態的「色相偏移角度」。
輸出：輸出 Vector 4 (Color)。
