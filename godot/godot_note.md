**必須清楚回答「我到底為什麼要開發這款遊戲？我最想從中獲得什麼？」<br> 唯獨「開發初衷」是無法繞過的根本動力。**
<hr>

### 流程:認證玩法->確立美術>均衡性能+細節
需要策劃案 vs. Demo 策劃案決定上限<br><a href="https://github.com/pwhoae/Artbank/blob/main/godot/%E9%81%8A%E6%88%B2%E7%AD%96%E5%88%92.md">遊戲策划</a>
<hr>

<a id="玩法"></a>
### 玩法靈感
```
创意就是組合
社會實驗
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
參考 《绝区零》风格细节表现:避免平面化的造型（如平扁的武器/刀具）。必须画出块面的透视厚度与立面转折，体现强烈的体积感与空间穿插（如绳索的前后层次） 
```
<hr>

### 技巧
<a href="https://github.com/pwhoae/Artbank/blob/main/godot/Godot_coding.md">Godot coding</a>
1. 不要重复造轮子>Assets
2. [視差省MB+Low poly(Quaternius)+與低解析度貼圖]
3. tscn | gdscript **GD 名Tscn+number+_nodename** | assets (audio,png,glb,)
4. 收藏 property (position,rotation,scale,shape) Collision3D常用>Margin以防止穿墙。
5. 用ai寫Tween/Shader
6. tripoAI+地編
```
把圖中的結構部件按照3D資產圖一次擺放，所有結構部件不能重複，按照大中小依次排放，8k解析度，頂級攝影照片。電影級布，泛光，風格化PBR，半寫實材質搭配法線貼圖效果為主，輔以手繪質感的磨損細節，絕區零遊戲風格
```

### Juicy 方法
1. wennie:會讓人不知不覺地被吸引到某個地方
2. 加打擊感:只要互動就加音效|推拉摇移
3. 分段坠落血条/滴體/分段/緩沖血量
4. UI 与 3D 元素的结合:Ipad/iphone show setting/音效/粒子/字體|偽3d效果>2.5D|3d插畫
5. 建造類遊戲|派對屬性
6. 機制:宝箱|门|NPC|子弹|抓钩勾索,傳送門槍,coin〉升級,爬墻,動作設計：技能普攻/強化/大招,無縫第三人稱視角傳送門+robot核心就是key
7. 信息量=完成度|中間插入漫畫演出|武器立繪要立體|連段+斬殺boss 擊破 動畫+處決動畫 攻击音+受击音+攻击vector+粒子特效+相机震动|BoneAttachment3D 节点 绑定到角色的右手骨骼（Right Hand）上，使武器能随角色动作自然移动。弹反和拼刀 (signal)|skilltree+連線 5. 6. 粒子特效|camera delay|遊戲運鏡
<img src="https://github.com/pwhoae/Artbank/blob/main/GPT%E7%94%9F%E6%88%90/%E6%BC%AB%E7%95%AB%E6%BC%94%E5%87%BA.jpeg" width="300" height="300"></img>
<hr>

### 遊戲參考
[過3關下棋/砍擊抖動閃光/格子黃綠/戰鬥/技能：33-》44/先手+2步/分身召喚物]
喵斯/phigro/絕區零/街霸6/小醜牌
挑战把粉丝做成游戏关卡 only up
萌萌夾擊
21點+拼點攻擊
卡反絕區零火鍋,3D 掃雷, 瘋狂鴿子3d /滾動的天空/ 號角保齡球/ 閃避球/ 滑雪/ 美夢zzz/ TNT弹道轨迹
Galumb:彈床/滾木/棍/拳頭/激光
大希王模拟器 https://game.hiro.idealland.info/
<a href="https://www.bilibili.com/video/BV1PDez63E9F/?share_source=copy_web&vd_source=d7f849d08eeb1405afe10c2ea0062d8e">【涩之炼金术～エロ文本写作指南】 </a>
<a href="https://github.com/pwhoae/Artbank/blob/main/html/Godot_html/juicy%20Idea/Godot%203D%20%E5%B0%84%E5%87%BB%E6%B8%B8%E6%88%8F%E5%85%A8%E5%A5%97%E7%89%B9%E6%95%88%203D%20%E4%BA%A4%E4%BA%92%E6%BC%94%E7%A4%BA.html">射擊遊戲   </a>
<hr>
