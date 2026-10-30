**必須清楚回答「我到底為什麼要開發這款遊戲？我最想從中獲得什麼？」<br> 唯獨「開發初衷」是無法繞過的根本動力。**
<hr>

### 流程:認證玩法->確立美術>均衡性能+細節
需要策劃案 vs. Demo 策劃案決定上限<br><a href="https://github.com/pwhoae/Artbank/blob/main/godot/%E9%81%8A%E6%88%B2%E7%AD%96%E5%88%92.md">遊戲策划</a>
<hr>

<a id="玩法"></a>
### 玩法靈感
```
创意就是組合
```
<hr>

<a id="美術"></a>
### 美術
<h1>建議找美術包</h1>
<a href="https://github.com/pwhoae/Artbank/blob/main/godot/%E5%9C%B0%E7%BC%96%E5%8F%82%E8%80%83.md">地编参考</a>

```
什麼是繪畫中的生命力？欣賞生命力的本質是在欣賞多樣性。世界上沒有一模一樣的物體，如果不畫出獨有的生命力，就是在忽視個性、抹殺多樣性。
觀察與抽象化動態>大型與小型上的動態強化
繪畫不是要把每一件物體都死記硬背畫一遍，而是「理解了一個東西的規律之後，可以解釋萬物」，做到舉一反三。  
人在學畫畫時往往比較放不開，而畫得好的人普遍膽子都特別大。影片歸納了畫畫膽子大的三點好處：  
敢於嘗試，打破框架:繪畫沒有絕對標準的公式，所有的技法與風格都是透過不斷嘗試摸索出來的。  
敢於修改，不留情面地推倒重來:膽子大的人面對畫錯的地方時，敢於大膽否定自己。   
敢於發問，拒絕無謂的內耗:膽子小的人往往不好意思開口求教，容易在同一個盲點上鑽牛角尖、重複犯錯。  
```
<hr>

### 技巧
<a href="https://github.com/pwhoae/Artbank/blob/main/godot/Godot_coding.md">Godot coding</a>
1. 不要重复造轮子>Assets
2. [視差省MB+Low poly(Quaternius)+與低解析度貼圖]
3. tscn | gdscript **GD 名Tscn+number+_nodename** | assets (audio,png,glb,)
4. 收藏 property (position,rotation,scale,shape) Collision3D常用>Margin以防止穿墙。
5. tripoAI+地編
```
把圖中的結構部件按照3D資產圖一次擺放，所有結構部件不能重複，按照大中小依次排放，8k解析度，頂級攝影照片。電影級布，泛光，風格化PBR，半寫實材質搭配法線貼圖效果為主，輔以手繪質感的磨損細節，絕區零遊戲風格
```
<hr>
