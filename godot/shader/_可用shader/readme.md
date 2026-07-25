update 2026/07/25:粒子 https://share.gemini.google/ekn3VVYPBLo7
# **🎨 Godot Shader & VFX 著色器資源庫**

本倉庫收集並整理了適用於 Godot Engine 的各類 **3D/2D Shader 著色器**、**HTML 可視化預覽工具** 以及相關 AI 提示詞與參考資源。

## **📂 Shader 資源分類與對應工具**

| 分類 | Shader 檔案 (.gdshader) | HTML 預覽 / 可視化工具 (.html) | 說明 / 備註 |
| :---- | :---- | :---- | :---- |
| **水體與水流** | • [場景\_3D\_water.gdshader](https://github.com/pwhoae/Artbank/blob/main/godot/shader/_%E5%8F%AF%E7%94%A8shader/%E5%A0%B4%E6%99%AF_3D_water.gdshader) • [3D 瀑布.gdshader](https://github.com/pwhoae/Artbank/blob/main/godot/shader/_%E5%8F%AF%E7%94%A8shader/3D%20%E7%80%91%E5%B8%83.gdshader) | — | 3D 水面、流動瀑布效果 |
| **天空與大氣** | • [全動態天空.gdshader](https://github.com/pwhoae/Artbank/blob/main/godot/shader/_%E5%8F%AF%E7%94%A8shader/%E5%85%A8%E5%8B%95%E6%85%8B%E5%A4%A9%E7%A9%BA.gdshader) • [極光\_polarlight.gdshader](https://github.com/pwhoae/Artbank/blob/main/godot/shader/_%E5%8F%AF%E7%94%A8shader/%E6%A5%B5%E5%85%89_polarlight.gdshader) • [極光\_v2.gdshader](https://github.com/pwhoae/Artbank/blob/main/godot/shader/_%E5%8F%AF%E7%94%A8shader/%E6%A5%B5%E5%85%89_polarlight_v2.gdshader) | • [2D 藍天白雲.html](https://github.com/pwhoae/Artbank/blob/main/godot/shader/_%E5%8F%AF%E7%94%A8shader/html/2D%20%E8%97%8D%E5%A4%A9%E7%99%BD%E9%9B%B2.html) • [3D 藍天白雲.html](https://github.com/pwhoae/Artbank/blob/main/godot/shader/_%E5%8F%AF%E7%94%A8shader/html/3D%20%E8%97%8D%E5%A4%A9%E7%99%BD%E9%9B%B2.html) | 動態日夜/天空變化、藍天白雲、極光效果 |
| **天體與宇宙** | • [月亮\_moon.gdshader](https://github.com/pwhoae/Artbank/blob/main/godot/shader/_%E5%8F%AF%E7%94%A8shader/%E6%9C%88%E4%BA%AE_moon.gdshader) • [黑洞\_blackhole.gdshader](https://github.com/pwhoae/Artbank/blob/main/godot/shader/_%E5%8F%AF%E7%94%A8shader/%E9%BB%91%E6%B4%9E_blackhole.gdshader) • [星軌.gdshader](https://github.com/pwhoae/Artbank/blob/main/godot/shader/_%E5%8F%AF%E7%94%A8shader/%E6%98%9F%E8%BB%8C.gdshader) | • [天空星軌.html](https://github.com/pwhoae/Artbank/blob/main/godot/shader/_%E5%8F%AF%E7%94%A8shader/html/%E5%A4%A9%E7%A9%BA%E6%98%9F%E8%BB%8C.html) | 星球、引力透鏡黑洞與夜空星軌 |
| **視覺特效 (VFX)** | • [特效\_像素化消散.gdshader](https://github.com/pwhoae/Artbank/blob/main/godot/shader/_%E5%8F%AF%E7%94%A8shader/%E7%89%B9%E6%95%88_%E5%83%8F%E7%B4%A0%E5%8C%96%E6%B6%88%E6%95%A3.gdshader) • [燃烧消融.gdshader](https://github.com/pwhoae/Artbank/blob/main/godot/shader/_%E5%8F%AF%E7%94%A8shader/%E7%87%83%E7%83%A7%E6%B6%88%E8%9E%8D.gdshader) • [3D 龍捲風.gdshader](https://github.com/pwhoae/Artbank/blob/main/godot/shader/_%E5%8F%AF%E7%94%A8shader/3D%20%E9%BE%8D%E6%8D%B2%E9%A2%A8.gdshader) • [霓虹傳送門.gdshader](https://github.com/pwhoae/Artbank/blob/main/godot/shader/_%E5%8F%AF%E7%94%A8shader/%E9%9C%93%E8%99%B9%E5%82%B3%E9%80%81%E9%96%80.gdshader) | • [Godot 3D Shader 消散特效.html](https://github.com/pwhoae/Artbank/blob/main/godot/shader/_%E5%8F%AF%E7%94%A8shader/html/Godot%203D%20Shader%20%E6%B6%88%E6%95%A3%E7%89%B9%E6%95%88.html) • [警戒線.html](https://github.com/pwhoae/Artbank/blob/main/godot/shader/_%E5%8F%AF%E7%94%A8shader/html/%E8%AD%A6%E6%88%92%E7%B7%9A.html) | 消散、溶解、傳送門與粒子特效 |
| **全息與科幻** | • [全息投影.gdshader](https://github.com/pwhoae/Artbank/blob/main/godot/shader/_%E5%8F%AF%E7%94%A8shader/%E5%85%A8%E6%81%AF%E6%8A%95%E5%BD%B1_Holographic_Projection.gdshader) • [全息弱光.gdshader](https://github.com/pwhoae/Artbank/blob/main/godot/shader/_%E5%8F%AF%E7%94%A8shader/%E5%85%A8%E6%81%AF%E5%BC%B1%E5%85%89.gdshader) • [故障著色器.gdshader](https://github.com/pwhoae/Artbank/blob/main/godot/shader/_%E5%8F%AF%E7%94%A8shader/%E6%95%85%E9%9A%9C%E8%91%97%E8%89%B2%E5%99%A8.gdshader) | • [2D空間掃描着色.html](https://github.com/pwhoae/Artbank/blob/main/godot/shader/_%E5%8F%AF%E7%94%A8shader/html/2D%E7%A9%BA%E9%97%B4%E6%89%AB%E6%8F%8F%E7%9D%80%E8%89%B2.html) • [3D空間掃描着色器.html](https://github.com/pwhoae/Artbank/blob/main/godot/shader/_%E5%8F%AF%E7%94%A8shader/html/3D%E7%A9%BA%E9%97%B4%E6%89%AB%E6%8F%8F%E7%9D%80%E8%89%B2%E5%99%A8.html) • [描邊\_受擊邊緣光\_死亡全像故障消解.html](https://github.com/pwhoae/Artbank/blob/main/godot/shader/_%E5%8F%AF%E7%94%A8shader/html/%E6%8F%8F%E9%82%8A_%E5%8F%97%E6%93%8A%E9%82%8A%E7%B7%A3%E5%85%89_%E6%AD%BB%E4%BA%A1%E5%85%A8%E5%83%8F%E6%95%85%E9%9A%9C%E6%B6%88%E8%A7%A3.html) | 全息圖、掃描線、Glitch 故障與受擊反饋 |
| **風格化與渲染** | • [抖動輪廓與卡通渲染.gdshader](https://github.com/pwhoae/Artbank/blob/main/godot/shader/_%E5%8F%AF%E7%94%A8shader/%E6%8A%96%E5%8B%95%E8%BC%AA%E5%BB%93%E8%88%87%E5%8D%A1%E9%80%9A%E6%B8%B2%E6%9F%93.gdshader) • [輪廓邊界.gdshader](https://github.com/pwhoae/Artbank/blob/main/godot/shader/_%E5%8F%AF%E7%94%A8shader/%E8%BC%AA%E5%BB%93%E9%82%8A%E7%95%8C.gdshader) • [3D 纸糊.gdshader](https://github.com/pwhoae/Artbank/blob/main/godot/shader/_%E5%8F%AF%E7%94%A8shader/3D%20%E7%BA%B8%E7%B3%8A.gdshader) • [紙糊.gdshader](https://github.com/pwhoae/Artbank/blob/main/godot/shader/_%E5%8F%AF%E7%94%A8shader/%E7%B4%99%E7%B3%8A.gdshader) | • [godot\_3d\_jitter\_toon\_outline\_shader\_demo.html](https://github.com/pwhoae/Artbank/blob/main/godot/shader/_%E5%8F%AF%E7%94%A8shader/html/godot_3d_jitter_toon_outline_shader_demo.html) | Jitter 卡通描邊、描邊邊界與紙糊質感 |
| **UI / 系統與鏡頭** | — | • [3D 攝影機控制器與電影鏡頭.html](https://github.com/pwhoae/Artbank/blob/main/godot/shader/_%E5%8F%AF%E7%94%A8shader/html/3D%20%E6%94%9D%E5%BD%B1%E6%A9%9F%E6%8E%A7%E5%88%B6%E5%99%A8%E8%88%87%E9%9B%BB%E5%BD%B1%E9%8F%A1%E9%A0%AD.html) • [回血.html](https://github.com/pwhoae/Artbank/blob/main/godot/shader/_%E5%8F%AF%E7%94%A8shader/html/%E5%9B%9E%E8%A1%80.html) • [文字軌跡移動.html](https://github.com/pwhoae/Artbank/blob/main/godot/shader/_%E5%8F%AF%E7%94%A8shader/html/%E6%96%87%E5%AD%97%E8%BB%8C%E8%B7%A1%E7%A7%BB%E5%8B%95.html) • [文字形狀軌跡移動\_.html](https://github.com/pwhoae/Artbank/blob/main/godot/shader/_%E5%8F%AF%E7%94%A8shader/html/%E6%96%87%E5%AD%97%E5%BD%A2%E7%8B%80%E8%BB%8C%E8%B7%A1%E7%A7%BB%E5%8B%95_.html) • [背包.html](https://github.com/pwhoae/Artbank/blob/main/godot/shader/_%E5%8F%AF%E7%94%A8shader/html/%E8%83%8C%E5%8C%85.html) • [角色圖鑑.html](https://github.com/pwhoae/Artbank/blob/main/godot/shader/_%E5%8F%AF%E7%94%A8shader/html/%E8%A7%92%E8%89%B2%E5%9C%96%E9%91%91.html) | UI 動態、鏡頭控制與介面演示 |

## **🖼️ 效果展示 (Demo Preview)**

| 效果名稱 | 預覽圖 / 動圖 |
| :---- | :---- |
| **像素化消散** |  |
| **全息投影 (Holographic Projection)** |  |
| **輪廓邊界** |  |
| **場景 3D 水面 (3D Water)** |  |
| **黑洞 (Black Hole)** |  |

## **🤖 AI 生成對話與參數分享 (Gemini Shares)**

* [Godot 3D 抖動輪廓 Shader 生成對話](https://share.gemini.google/Ap20SUSWodTF)  
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

1. **Shader 代碼寫作原則**：儘可能使用 AI 輔助編寫或參考社區現成庫，避免重頭手寫。挑選簡單、邏輯清晰的 Shader 進行修改。  
2. **無縫貼圖與運動**：針對水面或流體效果，務必勾選 Seamless（無縫），並使用 UV1 配合 time \* 速度 作偏移。  
3. **可視化調參**：利用倉庫內提供的 HTML 預覽文件可以直接在瀏覽器中快速調試參數與預覽動態效果。
