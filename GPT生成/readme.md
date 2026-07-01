[回到底部](#readme)|<br><a id="readme_begin"></a>https://github.com/pwhoae/Artbank/blob/main/godot/godot_note.md <br>
resource import once+no change>use import cleaner <br>
```
_工具箱
    - _[0 場景 (tscn)]
    - _[1 玩法 GDScript (gd)]
    - _[2 美術 (png)]
    - _[3 音頻 (mp3)]
    - _[4 影片 ]
    - _[5 資源 (tres)]
    - _[9 成品]
```
平設8/拍攝7/遊戲7/音樂7
```
帮我策划一个{var} demo，同时需要你帮我把{var}所需的美术素材以AI Prompt形式输出来给我，最后输出markdown {default var=""}
```
### 整活>過程要好玩快樂

<br>
遊戲democode learn/<a href="https://github.com/Kavex/GameDev-Resources">git(GameDev tag)</a>/<a href="https://itch.io/game-assets/tag-art">itch</a>/<a href="https://www.artstation.com/?sort_by=community&dimension=all">artstation</a>
<hr>
滑板跑酷,streak連勝,草莓巴菲,掃雷


### 平面設計 prompt html
```
畫面所有元素用矩形+矩形坐標框住並加中文描述
```
```
[final html]平面設計 1920x1080 image 0.文案 ["config": { "main_title": "", "heading": "h1" ; "sub_title": "", "heading": "h2" ;  "sub_left_1": "", "heading": "h3" ;  "sub_left_2": "", "heading": "h4" ;  "sub_right_1": "", "heading": "h3" ;  "sub_right_2": "" , "heading": "h4" ; }] 信息集中在人物左右,底部不多 1.人物 [用陰影增加層次感] 2.背景 [打光, 金屬紋路, 提取角色颜色调整渐变叠加, 漸變, 雙邊框斜線飾條, 太極, 星座, 角色海報, 拍立得, 懸疑感:{報紙揭開,警戒線}] 3.主色調[人物取色塊] 4.文字 [人物名字加大放在人物背後, 文字顏色漸變, 對比強烈風格, 立體動漫文字, 英文字體加工首字母特別處理,其餘正楷, 書法風格, 幾何圓形風格] 5.人物元素[彈幕, 鼠標點, 4角星, 對話框, 圈, 復古風:{蒸汽波,舊式報紙,CRT大電視,街機,卡帶,唱片,磁帶}, 潮流風:{鐳射/金框卡牌,票根,街頭壁畫}, 可愛風:{小表情,音軌,貼紙}, 潮玩風:{浮雕谷子,扭蛋,透明亞克力,鍵帽,鐳射光}, 懸疑風:{人物藏文字}, 彈幕內嵌角色] 6.焦點 [結構暗示：整體排版構成形狀為拱形，暗示結構,重心集中在上半部分, 高斯模糊給前景感增加層次]
優化成HTML+類似canvas move x,y to test template (html no dark mode+need to preview image) image+text button設計 grid setting>100*100為1格>支持show+hide 支持拖拽加輸入坐標move element element 1.文案 (input string) 固定"config": [position,heading,font size,風格(书法风格,几何圆形风格)] main_title:"box_2d": [134, 18, 514, 287], "heading": "h1", sub_title:"box_2d": [553, 27, 638, 313], "heading": "h2", sub_left_1:"box_2d": [662, 33, 768, 204], "heading": "h3", sub_left_2:"box_2d": [792, 33, 824, 120], "heading": "h4", sub_right_1: "box_2d": [551, 874, 712, 971], "heading": "h3", sub_right_2: "box_2d": [727, 753, 755, 971], "heading": "h4", 信息集中在人物左右,底部不多 support可以增加文案:with input ["name":position,heading,font size,風格(书法风格,几何圆形风格)] element 2.人物 (input image>use folder to store) "character1": "box_2d": [3, 290, 447, 735], "heading": null, [用陰影增加層次感] support可以增加character:with input ["character"] element 3.人物元素 (input image>use folder to store) [insert image with label>label 分類 such as 可愛風:{小表情,音軌}] output:preview image+prompt prompt template: [ 平面設計 1920x1080 image 1.文案=""; 2.人物=""; 3.人物元素=""; ] element 4.焦點 [(修改)_结构暗示：整体排版构成形状为拱形，暗示结构。重心集中在上半部分]

0.文案 ["config": { "main_title": "(修改)_改新主標題內容", "sub_title": "(修改)_改新副標題內容", "sub_left_1": "(修改)_改左側區塊一", "sub_left_2": "(修改)_改左側區塊二", "sub_right_1": "(修改)_改右側區塊一", "sub_right_2": "(修改)_改右側區塊二" }, { "main_title": { "box_2d": [134, 18, 514, 287], "heading": "h1" }, "sub_title": { "box_2d": [553, 27, 638, 313], "heading": "h2"}, "sub_left_1": { "box_2d": [662, 33, 768, 204], "heading": "h3"}, "sub_left_2": { "box_2d": [792, 33, 824, 120], "heading": "h4",}, "character": { "box_2d": [3, 290, 447, 735], "heading": null }, "sub_right_1": { "box_2d": [551, 874, 712, 971], "heading": "h3" }, "sub_right_2": { "box_2d": [727, 753, 755, 971], "heading": "h4" } }] 信息集中在人物左右,底部不多 1.人物 [用陰影增加層次感] 2.背景 [(修改)_打光,金屬紋路,提取角色颜色调整渐变叠加,	漸變,人物透明度,太極,星座,懸疑感:{報紙揭開,警戒線tape}] 雙邊框斜線飾條 , 3.主色調[人物取色塊] 4.文字 [(修改)_人物名字加大放在人物背後,文字顏色漸變,立體卡通動漫文字,英文字體加工首字母特別處理,其餘正楷,书法风格,几何圆形风格,流线型设计,对比强烈风格] 5.人物元素(左上右下) [(修改)_彈幕,鼠標點,4角星,對話框,圈,可愛風:{小表情,音軌},拉風:{鐳射光},懸疑風:{人物藏文字},彈幕內嵌角色] 6.焦點 [(修改)_结构暗示：整体排版构成形状为拱形，暗示结构。重心集中在上半部分] 结构暗示：整体排版构成形状为拱形，暗示结构。重心集中在上半部分 高斯模糊給予一定前景感增加層次 照片
[反色蒙版]帮我生成一张平面构成海报，主题为角色介紹，部分构成要素用镂空排版，用 反色蒙版 遮住人物一部分，呈现出现代设计感，以给出参考图的场景人物为标准，配色以场景人物的主調色为主，场景人物的次調色为辅，要求有英文日文文字点缀，整体充满几何感
[竖 竖版适配]：竖版，原排版需改变结构再分层次。左侧部分文案改变竖排，大小/字间距形成对比。右侧同理，部分文案简写并更换字体，平衡空间。 竖版总结：排版结构依然暗示拱形。前景元素距离比横板远，大小对比可更大点。曲线压暗，强化拱形暗示。润色调色。
[直 基础搭建]：立绘为亮色，采取深紫色为底。 背景装饰：背景图形修饰采用 AI 生成万花筒。 风格化处理：使用划分叠加模式，形成风格化。效果不够明显多叠加 2 层。 光影调节：渐变使用颜色减淡/滤色叠加做光变化。叠加噪点纹理增加质感。 图形修饰：根据调性（雅），做弧形图形修饰。 金属质感：使用内发光/投影，渐变/叠加金属液态纹理做金属感。一层作为边框，共两层。轻微斜面浮雕/渐变/纹理叠加。 层次感：利用角色立绘，划分叠加模式增添变化。对角线呼应，图形修饰。 主体标题：体现调性，选取适合字体取角色名作主体题修饰（字体：Thaloria）。 顶部文案：顶部文案排版，字重较轻避免抢眼（字体：思源黑/Rosemartin）。 细节打磨：主体标题使用内发光/投影/渐变/纹理做质感变化。取角色颜色拉渐变形成颜色对比。 空间补足：左侧采取修饰字体对以补足空间（字体：Dazien）。 元素复用：做简单图形修饰，复用万花筒等纹理叠加做质感。角色元素提取作为图形。 文案细化：提取文案排版（字体：思源宋）。同理内发光/渐变/纹理叠加。英文文案竖排形成对比。 空间平衡：提取文案再排版，补足空间（字体：Cehua Free）。 层级区分：次级文案不再叠加紫渐变。更次级仅有颜色和内发光。 左侧组合：左侧文案组合排版（字体：Thaloria/Rosemartin/思源宋）。 排版优化：四字文案过长采取两行排版，同时需减字重。次级竖排文案修饰增加排版变化。 结构暗示：整体排版构成形状为拱形，暗示结构。重心集中在上半部分，底部重量减轻减少排版信息密度。 投影处理：角色增加层次，根据光角度做投影。 最后修饰：个人附加文案排版，补足空间。提取图形蝴蝶，作为前景修饰，滤色刷一层渐变体现光感。 对比呼应：左上角对角线呼应，稍作颜色变化对比。 氛围渲染：曲线压暗调色为拱形再暗示排版结构，及体现调性。做发光处理丰富画面。 
```
```
文字設計:结构提炼>形态调整>装饰添加>整体优化
[书法风格]手法：在黑体结构基础上，微调撇捺笔画，使笔触下延并向外扩展，增加笔画粗细对比，并加入曲线连接，营造出流动的书写感和“飞白”效果。
创意艺术字体“纵有疾风起”，秀丽笔手写风格，整体文字横版排列，具有强烈视觉冲击力； 深度融合手写书法笔意，笔触带毛笔书写的粗犷洒脱，如挥毫泼墨的肆意劲道； 起收笔的飞白，顿挫，尽显促销的火爆张力，文字的形态打破规整，笔画的粗细变化； dutch angle，营造出动感冲刺的气势，字形呈奔放之势； 重心上扬如蓄势待发，笔画的伸展，穿插毫无拘束，似全力冲刺的劲道； 整体架构疏密交织，紧密处如促销热潮的汹涌，留白处似优惠间隙的呼吸感； 纯净黑色背景打底，完美契合热烈氛围，艺术字的形态与色彩酣畅传递。 
[几何圆形风格]手法：将字体的下半部分简化为圆形设计，线条粗壮，结构稳重，结合顶部的装饰性笔画，体现出简洁的工业设计美感。 
[流线型设计]手法：将笔画线条调细，横画加粗，日字部的竖画设计成流畅的曲线，横画首尾增加对称的衬角（Serif-like details）装饰，赋予字体优雅的曲线美。
[对比强烈风格]手法：极致压缩线条宽度，增大撇捺与横画的粗细对比，笔画末端使用衬角装饰，并将中间的竖画进行“省笔”处理，呈现出极具现代感和艺术气息的视觉效果。
```
<hr>

### 角色設計
```
0.先設計人體線稿確立
風格男士帽子款式女士帽子款式
[復古風,潮流風,可愛風]
1.衣服[從上往下]>臉型裝飾>召喚物>武器
帽子:[男{復古風:(報童帽),潮流風:(棒球帽)},女:復古風:(貝雷帽),潮流風:(漁夫帽),可愛風:(畫家帽)]
衣服:[]
褲子:[]
裙擺:[]
鞋子:[]
2.靈感要素(主要區分點)[设计重点：头/肩膀/胸/腰/手臂/大腿/小腿/膝盖/选择1-2个作为设计重点]
和现实生活中客观存在的特征挂钩
```

### 表情包
```
第一张图为风格模板，第二张图为角色模板。第一张图决定“如何绘制”，第二张图决定“绘制谁”。以第一张图作为唯一的视觉表现参考，完整继承其Q版比例、线稿风格、上色方式、五官设计、表情设计、动作语言、构图排版、留白节奏与整体视觉语言。以第二张图作为角色参考，准确保留角色的发型、发色、瞳色、服装、饰品、配色、气质特征与整体辨识度。生成3×3九宫格角色表情包，共9个不同表情与动作。风格转换强度最高，使角色完全融入第一张图的绘画体系，呈现出统一、自然、专业的官方Q版角色表情包效果。白色背景，高一致性，高完成度，专业角色设定图品质。
```
###  <a href="https://github.com/pwhoae/Artbank/blob/main/%E6%BD%AE%E7%8E%A9%E8%A8%AD%E8%A8%88/%E6%BD%AE%E7%8E%A9%E8%A8%AD%E8%A8%88.readme.md">潮玩</a>

<hr>
<details>
<summary><h6>廢棄idea</h6></summary>
沿虛線剪/冲破次元壁的/俯拍城景自拍
	
### 遊戲經驗
```
沒有遊戲經驗不要動作遊戲 做遊戲ui 劇情 玩法 美術 bgm demo 玩法1個月 開發 (同時50%) >手遊 (次要)簡單化+同質化 >itch 宣發 (同時50%) >PV不要Logo
```

### 高達模型板件
<img src="https://github.com/pwhoae/Artbank/blob/main/GPT%E7%94%9F%E6%88%90/ChatGPT%20Image%202026%E5%B9%B46%E6%9C%887%E6%97%A5%20%E4%B8%8B%E5%8D%8802_43_56.png" width="100" height="100"></img>

```
[寫實風]將參考圖轉換為「高達模型板件（鋼普拉 runner）」風格，但大幅減少零件數量，整體僅由 4–6 個大型零件構成。 保留原始構圖與輪廓，將其簡化為大型一體成型的機甲模組零件（如頭部＋軀幹一體、四肢簡化為整塊結構等），每個零件具有清楚的功能分區，能夠快速拼裝成完整模型。 所有零件仍連接在塑膠框架上（runner），但排列簡潔、留白多，呈現入門級或快速組裝模型套件風格。 表面細節大幅簡化，僅保留少量刻線與結構分割，強調平整塊面與整體輪廓，避免細碎零件與複雜機構。 保留塑膠射出質感、卡榫連接點與基本零件編號，但數量極少且清晰易讀。 整體風格： 簡潔、模組化、低複雜度、高可讀性，類似「簡化版鋼普拉 / 初學者模型套件」。 俯視視角，乾淨背景，棚拍光線，高解析度。
[可愛風]將參考圖轉換為「高達模型板件（鋼普拉 runner）」風格，但大幅減少零件數量，整體僅由 4–6 個大型零件構成。 保留原始構圖與輪廓，將其簡化為大型一體成型的機甲模組零件（如頭部＋軀幹一體、四肢簡化為整塊結構等），每個零件具有清楚的功能分區，能夠快速拼裝成完整模型。 所有零件仍連接在塑膠框架上（runner），但排列簡潔、{完整上色}，呈現入門級或快速組裝模型套件風格。 表面細節大幅簡化，僅保留少量刻線與結構分割，強調平整塊面與整體輪廓，避免細碎零件與複雜機構。 整體風格： 簡潔、模組化、低複雜度、高可讀性，類似「簡化版鋼普拉 / 初學者模型套件」。 俯視視角，乾淨背景，棚拍光線，高解析度。{添加可愛風的要素+顏色上色}
```
【 分享咒語｜PC人設粉絲專頁 】
```
{"type":"video game screenshot mockup","perspective":"third-person over-the-shoulder","character":{"description":"male protagonist seen from behind","clothing":"grey tank top with graphic '{argument name=\"shirt graphic\" default=\"LEONIDA MARINE CENTER\"}', camouflage cargo shorts"},"environment":{"setting":"tropical coastal town, dirt road, sunny daytime with scattered clouds","left_side":"wooden welcome sign reading 'Welcome to {argument name=\"location name\" default=\"LEONIDA KEYS\"} YOUR PARADISE', pink plastic flamingo, tropical foliage, distant water tower","center":"green building with 'FISH' sign and marlin graphic, sign reading 'BAIT TACKLE ICE BEER WINE', pedestrians walking","right_side":"two-story wooden building 'Brian's Boat Works & Marina', 'Brian's Bar' neon sign, parked pickup truck, jet skis on a trailer"},"ui_elements":{"count":5,"components":[{"position":"top-left","type":"mission objective","text":"{argument name=\"mission title\" default=\"MEET RAUL\"}\n{argument name=\"mission description\" default=\"Raul has some work for you at his boatyard\"}"},{"position":"top-right","type":"status HUD","text":"13:47\n$1,142","icon":"pink palm tree"},{"position":"bottom-left","type":"minimap","description":"circular map with purple border, white map icons including 'N' for north"},{"position":"bottom-left, right of minimap","type":"location text","text":"{argument name=\"location name\" default=\"LEONIDA KEYS\"}\nPALM ISLAND"},{"position":"bottom-right","type":"watermark","text":"{argument name=\"game title\" default=\"GTA VI\"}\nPRE-ALPHA FOOTAGE"}]}}
```
<hr>
IG

```
[美食]觀察照片中的元素，並為每個物件加上有意義的手繪風註解。【畫面內容】請填寫照片中的物品（例：冰奶茶、甜甜圈）【描寫規則】・使用像白色筆畫的細手繪線條・一筆畫風格，隨性、略帶不均勻感・沿著物件外圍加上描邊輪廓・用箭頭或虛線做出視線引導【文字規則】・手寫風格字體（偏日系可愛感）・句子簡短，像自言自語的小碎念・語氣偏日記感、帶一點情緒・彩色文字【註解生成規則】・飲料→味道、溫度、心情（例：清爽、微甜、剛剛好）・食物→口感、好吃程度（例：鬆軟、超好吃）・空間→氛圍（例：很放鬆、喜歡這種感覺）・整體:一句總結（例：今天有點幸福～）【裝飾】・適度加入熱氣、閃光、愛心、小表情等元素・不要過多，保留一些留白【完成風格】・像Instagram限時動態、雜誌隨手筆記風・自然、有質感、帶點慵懶感
```
<img src="https://github.com/pwhoae/Artbank/blob/main/GPT%E7%94%9F%E6%88%90/ChatGPT%20Image%202026%E5%B9%B46%E6%9C%8812%E6%97%A5%20%E4%B8%8A%E5%8D%8812_17_19.png" width="100" height="100"></img>
```
[儿童蜡笔]把上传照片转化成一种可爱混乱的儿童蜡笔涂鸦插画风格。整体像是彩铅+蜡笔+手账贴纸+MS Paint涂鸦的结合。 使用:粗糙线条、抖动边缘、不均匀上色、纸张纹理、彩铅叠色、蜡笔颗粒感、故意幼稚但很有灵气的画风。人物变成Q版萌系二次元风格，可爱活泼。 背景加入大量doodle: 爱心、星星、糖果、笑脸云朵、小花、贴纸、游戏UI元素、乱涂乱画符号。颜色以:粉色、蓝色、紫色、黄色、薄荷色为主。 整体氛围:可爱、混乱、梦幻、少女感、游戏宅手账风、互联网kawaii, Kawaii aesthetic不要精致，不要高级商业插画感，不要真实渲染，不要干净线稿，保留“手绘失败感”和“乱涂鸦感”。
```
```
「觀察附圖貓咪的毛色、長相與特徵，生成一張貓咪介紹圖文海報。 海報標題：OO的介紹 【規則】 ・讓貓咪在最中間當作主體，周圍加上身體局部特寫的註解介紹，主體與局部特寫都要清楚可愛，並保留貓咪本身的毛色特徵與辨識度 ・文字須使用繁體中文，並使用帶有粉筆筆觸的白色可愛手寫字體，排版整齊且可讀性高。標題字級最大、局部特寫的標題字級第二大、局部特寫的描述字級最小 ・背景使用黑色晨紙virtue colours，可適當手繪插圖線條當作裝飾，例如：愛心、箭頭、星星、小圓點、音符等 ・整體排版不要太擁擠，保有留白」
```
<hr>
人物海報

```
[收藏版史诗]根据【主题】自动生成一张收藏版史诗叙事海报：巨大优雅的人物侧脸剪影作为外轮廓，剪影内部自动生长出最契合该主题的完整世界观、标志性场景、角色关系、象征符号、关键建筑、生物、道具与氛围。整体不是普通拼贴，而是高级的剪影轮廓填充式叙事合成，带有双重曝光式联想，但更偏电影海报与梦幻水彩插画融合风格；柔和空气透视，轻雾化过渡，纸张颗粒，边缘飞白与刷痕，大面积留白，版式克制高级，安静、宏大、神圣、怀旧、诗意、传说感强。风格、色彩、场景、材质全部根据主题自动适配，所有元素必须强绑定主题，一眼识别，不要杂乱，不要硬拼贴，不要模板化背景，不要廉价奇幻素材。画面中需自然加入专属签名“voxcat”，作为海报设计的一部分，位置低调但清晰，可放在左下角、右下角或标题附近，风格需与整体版式统一，像收藏版海报的作者落款或设计签章；签名字体精致、克制、高级，不可过大，不可破坏主体构图，不可显得突兀廉价。在这段文字后面再加入你要生成的角色的具体信息，比如名字,人物的图片
[巨大的畫框架]角色上半身被巨大的畫框架框柱，胸部、腰部與腹部正好從畫框架鏤空處挺出。
```
```
[山水]一張「某某某」的人物宣傳海報，統一採用直式主視覺構圖。每張海報皆使用上大下小的層級結構：畫面上半部以人物最具辨識度的頭部、臉部輪廓、面具或半身外輪廓作為巨大的視覺主體，形成高辨識度的剪影式主形；中下部安排完整人物作為第二主體，呈現穩定站姿或輕微動作姿態，構成畫面的視覺核心。大輪廓內部以及角色周圍採用雙重曝光與拼貼式敘事構圖，將多個場景、意象、小型人物關係、輔助元素與環境層層融合於雲霧、水墨與留白之中。左右兩側配置呼應性的輔景，使畫面產生故事張力與空間變化。以一條貫穿畫面上下的流動線索，連結主角色、內部拼貼與上方大輪廓，強化整體性與視線引導。整體畫面保留大面積留白，邊緣以水墨暈染與虛化破碎處理，營造東方美學中的虛實關係與呼吸感。整體風格統一、高級且克制，強調層次感、敘事性、主視覺衝擊力與系列化海報語言。尺寸：9:16。
```
<hr>

### 天台,夕陽
```
### 1. 總體氛圍 視覺基調：溫暖、治癒、希望感。 光影運用： 採用逆光手法，太陽位於畫面右側中景，產生了強烈的輪廓光，勾勒出人物的髮絲和肩部線條。 色調： 以夕陽的橘金色為主，搭配人物服裝的冷色調（青藍色），形成冷暖對比，讓視覺重心更集中於人物面部。 構圖： 採用側身半身構圖，將人物置於畫面黃金分割線上，平衡感良好，且背景的柵欄線條引導視覺向夕陽延伸。 ### 2. 人物與面部 面部特徵： 柔和的鵝蛋臉，畫風精緻，睫毛細膩，眼神清澈。 表情： 呈現出「恬靜」與「嚮往」的神情，嘴角微揚，表現出對美好事物的觀察或沉思。 眼神： 瞳孔帶有金色光澤，與背景夕陽色彩呼應，增強了畫面的整體感。 髮型： 長直髮，隨風飄動，髮梢的處理帶有動態感。頭戴簡約的黑色髮帶，增添了層次。 ### 3. 動作與姿態 身體姿勢： 雙手交叉疊放在欄杆上，呈現出一種放鬆、依靠的姿態。 重心分配： 身體微微側向左側，上半身自然前傾靠在欄杆上，與背景的豎直柵欄形成了穩固的幾何結構。 動態感： 頭髮與衣服的邊緣因風吹而呈現向左側漂浮的趨勢，與右側的強烈光源形成了動靜之間的拉扯，增加了畫面的空氣感。 ### 4. 穿著與配飾 外搭： 一件寬鬆剪裁的淡藍色／青色系外套，面料看起來柔軟輕薄。 細節設計：增強了角色的時尚感與獨特設定。 內搭： 簡約的白色基底，平衡了外套較為複雜的色彩設計。 腰部： 黑色皮帶與金屬鏈條的點綴，為整體的溫柔感增添了一點現代的酷感與硬朗元素。 飾品： 頸部佩戴多層次珠串項鍊，提升了服裝的細節豐富度。 ### 5. 背景與環境 空間感： 位於天台，透過柵欄的縫隙可以看到下方模糊的城市建築群，建立了高度感。 光影渲染： 雲層被夕陽染成橘紅色，光斑效果自然，模擬了相機拍攝的質感，增添了真實感。 線條運用： 背景的欄杆採用規律的垂直線條，不僅穩固了畫面構圖，還能有效引導觀者的視線從人物移動到背景的夕陽。
```
'COLA'
```
{ "圖像描述": { "動作": "雙手捧著一個溢出大量泡沫的 'COLA' 大支樽裝可樂，嘴巴正沉浸在享用飲品的氛圍中。" }, "視覺元素": { "色彩": "鮮豔的色彩配置，以粉色、金色、白色與黑色為主。", "光影": "強調角色面部與飲料泡沫的柔和高光與陰影過渡，呈現出層次感。", "構圖": "半身特寫（胸部以上），視角集中在角色與飲料上。" }, } }, "生成提示詞 (Prompt)": "圖中角色，面容害羞帶有紅暈，雙手捧著一個正在溢出豐富白色泡沫的 'COLA'大支樽裝可樂，嘴巴防止泡沫跑掉拼命堵住瓶口，色彩鮮豔，柔和的像素光影，動漫風格。" }
```

### 動作
```
[壽司]左手向前伸出，用筷子夾著一塊蛋皮壽司展示在鏡頭前，右手自然收於胸前做出托扶姿勢，身體微微前傾，頭部向前探出，直視觀眾，露出得意、自信又帶點炫耀意味的笑容，動作自然生動，具有強烈互動感。
```
### 像素藝術
```
一張超高寫實風格的俯視攝影照片，畫面中央是一幅由大量微小方格拼成的像素藝術作品，放置於乾淨的白色桌面上。 整張圖由數百個極小的編號方格構成，每個格子內都有細小數字、代碼與符號，類似： 「鑽石畫」、「數字油畫」、「拼豆模板」、「像素刺繡圖紙」的設計。 畫面四周帶有座標尺與編號標記，整體網格極度密集且整齊，能清楚看到印刷紙張質感、墨水細節、些微色差與真實陰影。 攝影風格為： 超寫實商品攝影、微距攝影、工作室棚拍。 光線： 柔和頂部打光，真實紙張反光與陰影層次。 材質： 高品質印刷紙、大型像素拼圖板、細緻印刷墨水質感。 鏡頭： 俯視視角（top-down view）、50mm、清晰對焦、超高細節。 風格關鍵字： 超寫實、微距攝影、像素藝術、拼圖模板、鑽石畫、數字填色板、印刷質感、8K、高解析度、真實材質、工藝品展示、專業產品攝影
```
### 粉筆畫
<img src="https://github.com/pwhoae/Artbank/blob/main/GPT%E7%94%9F%E6%88%90/ChatGPT%20Image%202026%E5%B9%B46%E6%9C%8813%E6%97%A5%20%E4%B8%8A%E5%8D%8812_27_24.png" width="100" height="100"></img>
```
將原圖重新繪製成「學校教室黑板上的粉筆畫」風格。 整體畫面像是用彩色粉筆手工繪製在深綠色或深黑色黑板上，保留原圖的構圖、角色動作與主要元素，但全部轉換成粗糙自然的粉筆筆觸。 風格特徵： * 明顯的粉筆塗抹感、粉塵顆粒、擦拭痕跡 * 白色粉筆線條作為主要輪廓 * 局部使用彩色粉筆（紅、藍、黃、粉、綠）進行上色 * 線條略帶不規則與手繪感 * 黑板表面有真實刮痕、灰塵與反光 * 畫面邊緣有未擦乾淨的殘留粉筆痕跡 * 像學生或美術社在課後精心繪製的大型黑板藝術 氣氛： * 校園感 * 懷舊青春感 * 手作藝術感 * 溫暖且富有創意 可追加細節： * 黑板角落寫有數學公式、塗鴉、小字留言 * 可加入日期、課表、星星、箭頭、可愛 doodle * 畫面局部有手擦開的粉筆暈染效果 * 教室光線從窗戶斜射進來 品質要求： high detail, chalk texture, realistic blackboard surface, soft chalk dust, hand-drawn style, classroom atmosphere, artistic chalk illustration, cinematic lighting, textured strokes, authentic pastel chalk art 負面詞： photorealistic paint, digital clean lineart, glossy surface, 3D render, vector art, smooth shading, oil painting, plastic texture, neon lighting
```
</details>
<hr> 

### <a href="https://github.com/pwhoae/Artbank/tree/main/%E8%83%8C%E6%99%AF">背景</a>
<img src="https://github.com/pwhoae/Artbank/blob/main/GPT%E7%94%9F%E6%88%90/ChatGPT%20Image%202026%E5%B9%B46%E6%9C%889%E6%97%A5%20%E4%B8%8A%E5%8D%8812_53_26.png" width="100" height="100"></img>
```
[doradora]请将此插图转换为{argument name="风格" default="以现代动漫/漫画影响为基础的波普艺术×街头艺术风格"}。以清晰干净的线条画和平涂阴影为主，色彩丰富。包含复杂几何图案等时尚氛围。使用本戴点画法添加渐变和纹理。{argument name="配色" default="以霓虹色为中心的鲜艳高对比配色"}，营造图形化且时尚的氛围。但不要添加文字。保持原插图的构图和角色。
```
```
[3D立體紙雕便條紙]參考圖，一個精緻的「3D立體紙雕便條紙（Memo Pad Sculpture）」。 外觀看起來是一疊厚厚的方形便條紙，每一張紙都經過精密雷射雕刻與層層堆疊。隨著便條紙被逐頁撕下，內部逐漸顯露出完整的立體微縮景觀。 紙張內部雕刻出精細的立體建築群、山體地形、階梯、橋樑、街道與景觀細節，形成驚人的紙雕藝術效果。紙張層次清晰可見，每一層都代表地形與建築的不同高度。 展示「撕開過程中的狀態」，部分便條紙已被撕下，周圍散落數張紙片，讓內部3D結構逐漸浮現。紙張邊緣整齊細膩，呈現高精度工藝感。 微縮建築極度精細，具有真實模型質感。立體層次豐富，紙張切面乾淨俐落，展現紙雕藝術的結構美感。 產品攝影風格， 純淨背景， 柔和棚拍光線， 超高細節， 微距攝影， 景深效果， 紙張纖維細節， 工藝品展示， 精緻收藏品， 現代設計感， museum quality， masterpiece， ultra detailed， photorealistic， 8K。
```

### 圖像生成描述模板
```
# 圖像生成描述模板 (進階版) ## 1. 主體描述 [人物外觀、五官、髮型、表情] ## 2. 動作與視角 [姿勢、手部動作、視線、鏡頭距離與角度] ## 3. 環境與氛圍 [場景、時間、光影、色調] ## 4. 風格設定 [藝術風格，例如：cyberpunk / realism / anime] ## 5. 細節強化 [需要強調的畫面細節] ## 6. 畫質要求 高品質，8k解析度，cinematic lighting，ultra-detailed ## 7. 負面提示 [避免錯誤與瑕疵]
```
### 表情差分
```
[3×3照片]生成3×3照片网格。 在所有面板中完整保留上传图像中的面部、发型和服装。制作一个角色设计表情风格指南的图像，风格要求： *  每个网格都是角色头像正视图 *  还原参考图的风格 *  所有图片中的服装、脸型和发型都相同 *  整个网格中的姿势和表情都不相同
[25種表情]使用提供的參考圖作為角色唯一設計來源，生成「25種表情／特效差分（Expression Sheet）」完整角色差分表。 【核心要求】 - 角色外觀、髮型、服裝、配色、畫風、年齡感、五官比例必須與參考圖完全一致 - 不可改變角色身份與服裝設計 - 所有差分需保持同一角色模型與同一視角 - 採用「Galgame / VTuber / Live2D / 視覺小說角色差分表」形式 - 背景保持簡潔純色或透明感灰白背景 - 角色置中排列 - 每個表情獨立清晰 - 高解析度 - anime style, clean lineart, professional expression sheet, character emotion variations, consistent character design 【輸出形式】 生成完整「25表情差分總覽」 可採： - 多列網格排列 - Live2D 差分展示板 - Character Expression Reference Sheet - 角色設定集風格 【表情差分內容】 1. 通常顔 普通表情、自然嘴角、標準眼神 2. 怒り顔 皺眉、生氣、嘴角下壓 3. 困り顔 委屈、困擾、微弱八字眉 4. ジト目顔 側目鄙視、半睜眼、冷淡視線 5. 照れ 臉紅紅暈、害羞表情 (blush overlay effect) 6. 目のハイライトOFF 失去眼睛高光、空洞感 7. どんより 灰暗沮喪、陰沉氛圍 (gloom shadow overlay) 8. 涙 含淚、流淚效果 (animated tear effect feel)9. 白目 翻白眼、失神感 10. 黒目 縮瞳、純黑眼、驚嚇感 11. より目 鬥雞眼、聚焦錯亂 12. あせ 額頭流汗、尷尬汗滴 (sweat drop effect) 13. ハート目 愛心眼、戀愛狀態14. しいたけ目 星星眼 / 香菇眼、超期待感 (glittery excited eyes) 15. ガンギマリ 精神崩壞感、狂氣眼神、瞳孔異常 16. ＞＜目 ＞＜ 閉眼表情、用力表情 17. ボカシ目 失焦、微醺模糊感 18. なごみ目 瞇瞇眼、溫柔放鬆 19. ぐるぐる目 蚊香眼、暈眩狀態 (spiral eyes effect) 20. 読み込み中眼睛像 loading 圈圈、腦袋卡住感 (loading icon eyes) 21. 怒りマーク 頭上青筋符號、生氣特效 22. ぷんぷん煙エフェクト 冒煙、生氣蒸氣特效 (cartoon anger smoke) 23. ハートエフェクト 角色周圍漂浮愛心特效 24. キラキラエフェクト 閃亮亮粒子特效 (sparkle aura effect) 25. メガネ 配戴眼鏡版本 【風格要求】 - 日系動畫角色差分 - 專業遊戲角色設定集 - 高完成度 - 可直接用於 Live2D / VN / RPG / Galgame - 表情變化明確但角色一致性極高 - 柔和動漫光影 - 精緻眼睛繪製 - 高細節頭髮陰影 - emotion showcase sheet - expression reference board - transparent accessory layers feeling - professional anime production material
```

***
<a name="case-91"></a>
<h2>例 91：游戏界面截图</h2>
<img src="https://raw.githubusercontent.com/freestylefly/awesome-gpt-image-2/main/data/images/case91.jpg" width="100" height="100"></img>

```text
A highly detailed, realistic first-person video game screenshot of a next-generation voxel-based world. At the top center, a large, bold 3D logo reads "{argument name="game title" default="MINECRAFT 2"}". The scene features a {argument name="environment" default="lush, blocky landscape with a river, a small wooden cabin, a windmill, a waterfall, and majestic mountains in the background"}. The world blends realistic lighting, volumetric clouds, and high-resolution textures with cubic, voxel geometry. In the foreground on the left, a {argument name="mob 1" default="blocky green creeper"} stands on the grass, while a {argument name="mob 2" default="blocky brown wolf"} stands on the dirt path to the right. On the far right, the player's hand holds a {argument name="held item" default="pixelated blue diamond sword"} in a first-person perspective. At the bottom of the screen is a game user interface featuring a health bar with 10 red hearts, a green experience bar with the number '16', a hunger bar with 10 brown meat icons, and a 9-slot inventory hotbar. The hotbar contains, from left to right: a selected blue tool with a green highlight box, a green tool, a knife, a wrench with the number '3', a piece of meat with '6', a lantern with '24', a dirt block with '10', a bucket, and a sponge block.
```
***

<a name="case-150"></a>

### 例 150：品牌徽标设计图

<img src="https://raw.githubusercontent.com/freestylefly/awesome-gpt-image-2/main/data/images/case150.jpg" width="100" height="100"></img>

```text
A bright, summery commercial product photography shot featuring a refreshing beverage on a weathered wooden table. In the sharp foreground, there is 1 tall glass filled with a golden, bubbly iced drink garnished with 1 lemon slice and a sprig of rosemary, sitting next to 1 silver aluminum can covered in cold condensation. The can prominently displays the English text {argument name="product name" default="TOKYO HIGHBALL"} below a small gold star logo, featuring a graphic of the drink itself and the Japanese text "アルコール分 7%" near the bottom. To the right of the can, 2 cut lemon wedges rest on the table. In the softly blurred background, a sunny beach scene unfolds with sparkling turquoise water and a clear blue sky. Standing to the left in the background is 1 young woman with long brown hair, wearing a white sleeveless top and a light blue skirt, looking out toward the ocean. Floating elegantly in the sky above the scene is the Japanese text {argument name="catchphrase" default="夏、これがいい。"}. The overall lighting is radiant and inviting, with sparkling bokeh and lens flares emphasizing the crisp, cold, and refreshing atmosphere of a perfect summer day.
```

***

<a name="case-161"></a>

### 例 161：应用界面样机图

<img src="https://raw.githubusercontent.com/freestylefly/awesome-gpt-image-2/main/data/images/case161.jpg"></img>
```
{"type":"video game screenshot mockup","perspective":"third-person over-the-shoulder","character":{"description":"male protagonist seen from behind","clothing":"grey tank top with graphic '{argument name=\"shirt graphic\" default=\"LEONIDA MARINE CENTER\"}', camouflage cargo shorts"},"environment":{"setting":"tropical coastal town, dirt road, sunny daytime with scattered clouds","left_side":"wooden welcome sign reading 'Welcome to {argument name=\"location name\" default=\"LEONIDA KEYS\"} YOUR PARADISE', pink plastic flamingo, tropical foliage, distant water tower","center":"green building with 'FISH' sign and marlin graphic, sign reading 'BAIT TACKLE ICE BEER WINE', pedestrians walking","right_side":"two-story wooden building 'Brian's Boat Works & Marina', 'Brian's Bar' neon sign, parked pickup truck, jet skis on a trailer"},"ui_elements":{"count":5,"components":[{"position":"top-left","type":"mission objective","text":"{argument name=\"mission title\" default=\"MEET RAUL\"}\n{argument name=\"mission description\" default=\"Raul has some work for you at his boatyard\"}"},{"position":"top-right","type":"status HUD","text":"13:47\n$1,142","icon":"pink palm tree"},{"position":"bottom-left","type":"minimap","description":"circular map with purple border, white map icons including 'N' for north"},{"position":"bottom-left, right of minimap","type":"location text","text":"{argument name=\"location name\" default=\"LEONIDA KEYS\"}\nPALM ISLAND"},{"position":"bottom-right","type":"watermark","text":"{argument name=\"game title\" default=\"GTA VI\"}\nPRE-ALPHA FOOTAGE"}]}}
```
***

<hr>
<a name="case-186"></a>

### 例 186：品牌视觉识别图

<img src="https://raw.githubusercontent.com/freestylefly/awesome-gpt-image-2/main/data/images/case186.jpg"></img>
```text
[中文]创建一个包含100种不同奇幻RPG物品的10×10网格，以经典像素艺术风格渲染（16位或32位精灵图美学，让人联想到SNES/GBA时代的日式RPG）。每个物品应出现在其独立的方形瓷砖中，下方带有简短清晰的标签。在白色背景上保持网格整洁。使每个物品在视觉上都有所区分，并且每个标签拼写正确。使用清晰的像素边缘、每个精灵图有限的调色板，以及用于阴影的微妙抖动。使用这些行主题：第1行：剑与刀刃第2行：盾牌与盔甲第3行：弓、弩与远程武器第4行：法杖、魔杖与魔法焦点第5行：药水、灵药与烧瓶第6行：卷轴、典籍与法术书第7行：戒指、护身符与附魔小饰品第8行：头盔、王冠与头饰第9行：钥匙、遗物与任务物品第10行：宝石、符文与制作材料将每个瓷砖显示为干净背景方形上居中的物品精灵图，渲染为经典的库存图标——你在奇幻RPG菜单中会看到的那种。保持整体风格一致、连贯，并让人联想到备受喜爱的复古奇幻RPG——迷人、细节丰富，且在小尺寸下易于辨认。
[English]Create a 10 × 10 grid of 100 different fantasy RPG items rendered in classic pixel art style (16-bit or 32-bit sprite aesthetic, reminiscent of SNES/GBA-era JRPGs). Each item should appear in its own square tile with a short clear label underneath. Keep the grid neat on a white background. Make every item visually distinct and every label correctly spelled. Use crisp pixel edges, limited palette per sprite, and subtle dithering for shading. Use these row themes: Row 1: swords and blades Row 2: shields and armor Row 3: bows, crossbows, and ranged weapons Row 4: staves, wands, and magical foci Row 5: potions, elixirs, and flasks Row 6: scrolls, tomes, and spellbooks Row 7: rings, amulets, and enchanted trinkets Row 8: helmets, crowns, and headgear Row 9: keys, relics, and quest items Row 10: gems, runes, and crafting materials Show each tile as a centered item sprite on a clean background square, rendered as a classic inventory icon — the kind you'd see in a fantasy RPG menu. Keep the overall style consistent, cohesive, and reminiscent of beloved retro fantasy RPGs — charming, detailed, and instantly readable at small sizes.

```
<a name="case-196"></a>
### 例 196：试卷上的涂鸦巨龙

<img src="https://raw.githubusercontent.com/freestylefly/awesome-gpt-image-2/main/data/images/case196.jpg" width="100" height="100"></img>
```text
[中文]一个巨大的巨龙，庞大的规模，高耸的存在感，一个远超人类尺寸的巨大实体，压倒性和压迫性的，用极其密集的混乱涂鸦线条绘制，超密集的重叠笔触，纠缠和混乱的线条画，在真实的印刷英文/中文教科书或试卷页面上，可见的文本、布局和纸张纹理清晰透出，圆珠笔绘画风格，精细的墨水线条，杂乱的分层笔触，没有干净的轮廓，一切由混乱的涂鸦构成，黑暗和柔和的底色（黑色，深靛蓝，暗紫罗兰色），带有微妙的低饱和度霓虹点缀（蓝色，青色，紫色），仅在关键区域（眼睛，核心，裂缝，静脉）有选择性的生物发光，不是整体的亮度，取决于主体的有机或机械纹理，错综复杂的细节，复杂的表面图案，形态从混乱中浮现，高密度中心，边缘消融为松散的涂鸦，主体附近微小的人类剪影强调了尺度感，半透明层，由线条密度产生的深度，原始的，不完美的，嘈杂的，充满活力的手绘感，略带诡异，超现实，神秘的氛围，混合媒体插画，涂鸦艺术，极其详细，黑暗团块和发光点缀之间的高对比度，杰作，极其详细
[English]A colossal [SUBJECT], massive scale, towering presence, a gigantic entity far beyond human size, overwhelming and oppressive, drawn with extremely dense chaotic scribble lines, ultra-dense overlapping pen strokes, tangled and chaotic linework, on top of a real printed English/Chinese textbook or exam paper page, visible text, layout, and paper texture clearly showing through, ballpoint pen drawing style, fine ink lines, messy layered strokes, no clean outlines, everything constructed from chaotic scribbles, dark and muted base tones (black, deep indigo, dark violet), with subtle low-saturation neon accents (blue, cyan, purple), selective bioluminescent glow only in key areas (eyes, core, cracks, veins), not overall brightness, organic or mechanical textures depending on subject, intricate details, complex surface patterns, form emerging from chaos, high-density center, edges dissolving into loose scribbles, sense of scale emphasized by tiny human silhouette near the subject, semi-transparent layers, depth created by line density, raw, imperfect, noisy, energetic hand-drawn feeling, slightly eerie, surreal, mysterious atmosphere, mixed media illustration, scribble art, extremely detailed, high contrast between dark mass and glowing accents, masterpiece, ultra detailed
```

***
<a name="case-237"></a>

### 例 237：夏日柑橘苏打高转化广告图

<img src="https://raw.githubusercontent.com/freestylefly/awesome-gpt-image-2/main/data/images/case237.jpg"></img>


```text
[中文]图像生成: 商品广告照片, 适合夏天的季节商品, 碳酸饮料, 名称="夏柑SODA", 形状=PET瓶500ml, 研究2025年作为饮料广告的高CTA设计后设计并生成图像规格, 宽高比3:4

[English]Image generation: Product advertising photo, Seasonal product suitable for summer, Carbonated beverage, Name="Summer Citrus SODA", Shape=500ml PET bottle, Design and generate image specifications after researching high CTA design as a beverage advertisement in 2025, Aspect ratio 3:4
```

***

<a name="case-261"></a>

### 例 261：智能视频生成器暗黑界面设计

<img src="https://raw.githubusercontent.com/freestylefly/awesome-gpt-image-2/main/data/images/case261.jpg"></img>
```text
[中文]渲染一个专业的IOS APP首页UI图，该主题为AI Video Generator,英文界面。专业级设计，专业风格，暗黑色主题。
[English]Render a professional iOS APP homepage UI image, the theme is AI Video Generator, English interface. Professional-level design, professional style, dark theme.
```

***
<a name="case-299"></a>

### 例 299：极简留白涂鸦手绘草图

<img src="https://raw.githubusercontent.com/freestylefly/awesome-gpt-image-2/main/data/images/case299.jpg"></img>

```text
[中文]以涂鸦速写风表现【主题/主体】，整体呈现快速勾勒、自由变形、即兴手绘与草稿式的视觉效果。线条随手、夸张、可粗细不一，略显凌乱但具有节奏和表现力，强调概括、夸张、趣味和随性，而不是严谨写实或精细刻画。颜色采用粗糙、干刷感明显的块面表现，可保留不均匀的涂抹痕迹、刷痕、飞白与覆盖感，色彩根据【主题/主体】自动适配，但整体保持涂鸦式、速写式、概括式的表达。不要透明水彩晕染效果，不要细腻水彩过渡，不要纸纹理，不要柔和雾化，不要梦幻质感。背景以留白为主，保持简洁、轻松、未完成感和设计感，可加入少量辅助性符号、箭头、记号、圈画、重复线、随手写的文字或其他涂鸦元素，以增强速写本或随笔式视觉语言，但不可过于拥挤，不可破坏主体和留白气质。画面内容不需要预先写清楚，由【主题/主体】自动推演并生成最适合的主体形象、动作、相关元素、符号或简化场景，整体保持统一的涂鸦速写风和夸张概括的表现方式，避免复杂写实背景和过度铺陈。画面中需自然加入专属签名“voxcat”，作为画面的一部分，位置低调但清晰，可放在左下角、右下角或标题附近，风格需与整体版式统一，像作品署名或设计落款；签名字体精致、克制、高级，不可过大，不可破坏主体构图，不可显得突兀或廉价。
[English]Express [Subject/Theme] in a graffiti sketch style, presenting an overall visual effect of quick outlining, free deformation, impromptu hand-drawing, and draft-like appearance. The lines are casual, exaggerated, and can vary in thickness, slightly messy but rhythmic and expressive, emphasizing generalization, exaggeration, playfulness, and spontaneity, rather than rigorous realism or detailed rendering. Colors are expressed in rough blocks with a distinct dry-brush feel, retaining uneven smearing traces, brush strokes, dry-brush effects, and a sense of coverage. Colors automatically adapt to [Subject/Theme], but the overall expression remains graffiti-style, sketch-style, and generalized. Do not use transparent watercolor blooming effects, do not use delicate watercolor transitions, do not use paper textures, do not use soft atomization, and do not use dreamy textures. The background is mainly left blank, maintaining a sense of simplicity, relaxation, incompleteness, and design. A small number of auxiliary symbols, arrows, marks, circled areas, repeated lines, casually written text, or other graffiti elements can be added to enhance the visual language of a sketchbook or jotting style, but it must not be too crowded, and must not destroy the subject and the blank space temperament. The image content does not need to be written out in advance; the most suitable subject image, actions, related elements, symbols, or simplified scenes are automatically deduced and generated by [Subject/Theme], keeping the overall unified graffiti sketch style and exaggerated generalized expression, avoiding complex realistic backgrounds and over-elaboration. The exclusive signature "voxcat" needs to be naturally added to the image as a part of the picture. The position should be low-key but clear, and can be placed in the bottom left corner, bottom right corner, or near the title. The style must be consistent with the overall layout, like an artwork signature or a design sign-off; the signature font should be exquisite, restrained, and high-end, must not be too large, must not destroy the subject composition, and must not appear abrupt or cheap.
```
***

<a name="case-357"></a>

### 例 357：鱼眼镜面复古咖啡馆人像

```text
A fish-eye lens close-up of [your photo as reference] sipping from a teal/turquoise coffee mug, leaning forward intimately toward camera. Shot through or near a round mirror. Retro café interior with glossy teal subway tiles, vintage appliances, pendant lights. Black t-shirt, yellow-tinted round glasses. Warm moody tones.
```
<a name="case-361"></a>

### 例 361：手机爆炸拆解图

<img src="https://raw.githubusercontent.com/freestylefly/awesome-gpt-image-2/main/data/images/case361.jpg" width="100" height="100"></img>
```text
Create a 3D Insane detailed exploded assembly drawing of [subject or object]
```

***

<a name="case-363"></a>

### 例 363：磁场铁粉 Logo 物理成像

<img src="https://raw.githubusercontent.com/freestylefly/awesome-gpt-image-2/main/data/images/case363.jpg" width="100" height="100"></img>

```text
Transform the uploaded logo into a hyper-realistic scene where the logo silhouette is formed by iron filings reacting to a magnetic field. The logo must keep its exact shape and proportions, appearing as if a magnet shaped like the logo (or hidden beneath the surface) is influencing the filings to align naturally into that recognizable formation. Material details: Fine iron filings with sharp, spiky, needle-like structures. Dense clustering along magnetic field lines forming the logo silhouette. Variation in density — thick near magnetic poles, thinner outward. Matte dark metallic texture with subtle reflections. Physics behavior: Iron filings must follow realistic magnetic field patterns — radial and curved lines forming spikes and ridges. Stronger attraction zones create thicker, raised clusters. Outer areas show softer, more dispersed alignment. Natural randomness and slight irregularity — no perfect edges. Some loose filings scattered beyond the main shape. Surface interaction: Flat surface such as a lab table, glass plate, or matte black tray. Filings resting on surface but visibly lifted in areas due to magnetic force (spiky texture). Subtle dust and micro particles around. Environment & human presence: Realistic classroom, science lab, or creative studio environment. A person partially visible — hands holding or moving a magnet beneath the surface or nearby. Possibly a child or adult observing or interacting (adds emotional curiosity). Other subtle elements: notebooks, tools, or lab items out of focus. Lighting: Directional overhead light creating shadows from raised filings. Subtle highlights on metallic edges. Balanced natural or indoor lighting. Atmosphere: Curiosity. Discovery. Educational yet visually satisfying. Quiet but engaging moment. Camera & composition: Top-down or slightly angled close-up view. Logo clearly visible through iron filing formation. Human hands or interaction slightly off-center for storytelling. Format: Aspect ratio: STRICT 4:5 vertical. No text overlays. Style: Hyper-real macro + environmental photography. Physically accurate magnetic behavior. Cinematic yet grounded realism.
```
***

<a name="case-376"></a>

### 例 376：泼洒抹茶街头手机照片

<img src="https://raw.githubusercontent.com/freestylefly/awesome-gpt-image-2/main/data/images/case376.jpg" width="100" height="100"></img>
```text
A realistic vertical smartphone photo of a spilled green iced drink on outdoor stone pavement, a transparent disposable plastic cup lying on its side inside the green puddle, clear plastic lid nearby, scattered ice cubes floating in the drink, small foam bubbles on the surface, green liquid naturally spreading across rough square floor tiles, strong midday sunlight, harsh realistic shadows, a dark human shadow silhouette cast across the ground and partially over the spill, accidental street moment, urban documentary photography, handheld phone camera perspective, slightly top-down angle, natural colors, realistic pavement texture, raw unedited photo look, high detail, authentic everyday scene, 9:16 vertical composition

Negative Prompt:
cartoon, illustration, anime, CGI, 3D render, fantasy style, studio lighting, overly perfect composition, overly clean floor, fake liquid, unrealistic reflections, plastic-looking liquid, oversaturated green, blurry, low resolution, distorted cup, melted plastic, extra cups, duplicated objects, readable brand logo, messy text, watermark, poster design, dramatic artificial lighting, excessive sharpening, over-processed, unrealistic shadow, floating ice, deformed perspective
```


```
{ "meta": { "標題": "日系偶像風角色插畫", "版本": "editable_v1", "語言": "繁體中文", "畫面比例": "16:9", "尺寸": { "寬度": 1085, "高度": 612 }, "風格標籤": [ "日系動畫", "偶像風", "手機遊戲立繪", "高細節", "柔和光影", "乾淨線稿", "日文文字背景", "青春感", "輕小說封面感" ] }, "角色": { "性別": "女性", "年齡感": "少女", "體型": "纖細", "姿勢": { "描述": "雙手自然展開，像舞台演出中的輕柔舞蹈動作", "鏡頭角度": "正面偏側 3/4 視角", "構圖": "角色置中" }, "表情": { "情緒": "溫柔微笑", "氛圍": "安靜、優雅、帶點夢幻感" }, "臉部": { "眼睛": { "顏色": "紫色", "風格": "柔和動畫眼", "細節": [ "高光反射", "淡淡眼影", "溫柔視線" ] }, "膚色": "白皙柔滑" }, "頭髮": { "顏色": "深紫偏藍", "長度": "短髮鮑伯頭", "造型": [ "側邊小馬尾", "微層次髮尾", "飄逸髮絲" ], "髮飾": [ { "類型": "緞帶", "顏色": "藍色" } ], "耳飾": [ { "類型": "星星耳環", "材質": "銀色金屬" } ] } }, "服裝": { "主題": "日系偶像舞台服 × 英倫格紋", "上半身": { "主體": "藍黃色格紋短袖洋裝", "細節": [ "白色馬甲式束腰", "銀色皮帶扣", "布料皺摺", "拼接縫線" ] }, "袖套": { "類型": "分離式袖套", "顏色": "亮黃色", "材質": "柔軟布料", "細節": [ "自然皺摺", "不對稱配件" ] }, "裙子": { "類型": "多層偶像短裙", "主色": "白色", "細節": [ "金色滾邊", "荷葉裙擺", "飄逸層次" ] }, "配件": [ { "類型": "腰間珍珠鍊", "材質": "珍珠 + 銀色金屬" }, { "類型": "飄帶", "顏色": [ "藍色", "黃色", "白色" ] } ] }, "背景": { "類型": "日文文字拼貼背景", "主色": "白色", "輔助色": "淡藍色", "細節": [ "大量日文句子", "半透明文字層", "排版式設計", "乾淨留白", "輕小說封面感" ], "景深": "平面設計風背景" }, "光影": { "風格": "柔和動畫光", "方向": "正面柔光", "高光": [ "頭髮反光", "皮膚微光", "服裝金屬反射" ], "陰影": "淡 Cel Shade" }, "渲染": { "線稿": "乾淨細線條", "上色": "柔和動畫賽璐璐", "細節等級": "高", "材質表現": [ "布料紋理", "金屬配件", "柔和皮膚漸層" ] }, "色票": { "主色": [ "#3D4FA3", "#5E55C7", "#F0C94B" ], "輔助色": [ "#FFFFFF", "#D8E6FF", "#B9C2FF" ], "點綴色": [ "#FFD84D", "#AFCBFF" ] }, "負面提示詞": [ "低畫質", "模糊", "多手指", "崩壞人體", "裁切臉部", "文字錯亂", "手部崩壞", "過度飽和", "3D感", "寫實風" ], "可修改欄位": { "髮色": "深紫色", "眼睛顏色": "紫色", "服裝主題": "偶像格紋風", "背景風格": "日文拼貼", "光影風格": "柔和動畫光", "氛圍": "優雅夢幻青春感", "畫面比例": "16:9", "尺寸": "1085x612" }, "完整Prompt": "一名日系動畫風少女偶像，深紫偏藍短髮，側邊綁有藍色緞帶，紫色眼睛，溫柔微笑，雙手自然展開如舞台舞蹈動作。穿著藍黃格紋偶像服裝，搭配白色馬甲束腰、黃色分離式袖套、多層白色荷葉短裙與珍珠腰鍊。柔和動畫光影、乾淨線稿、高細節賽璐璐上色、手機遊戲角色立繪風格。背景為大量淡藍色日文拼貼文字，畫面乾淨夢幻，青春感強烈。", "Prompt模板": { "角色名稱": "{{角色名稱}}", "髮色": "{{髮色}}", "眼睛顏色": "{{眼睛顏色}}", "服裝風格": "{{服裝風格}}", "背景風格": "{{背景風格}}", "氛圍": "{{氛圍}}", "光影": "{{光影}}", "額外細節": "{{額外細節}}" } }
```



### 努努
<img src="https://github.com/pwhoae/Artbank/blob/main/GPT%E7%94%9F%E6%88%90/%E5%8A%AA%E5%8A%AA_%E6%A9%98%E7%A6%8F%E7%A6%8FChatGPT%20Image%202026%E5%B9%B45%E6%9C%8824%E6%97%A5%20%E4%B8%8B%E5%8D%8810_10_43.png" width="100" height="100"></img>
```
請根據提供的「參考圖」角色，製作成高品質「努努風格（Q版絨毛公仔 / Plush Doll）」玩偶設計。 【核心要求】 - 完全保留參考圖角色的髮型、配色、服裝元素、角色辨識特徵 - 整體轉化為可愛Q版公仔比例（大頭小身） - 材質改為柔軟布偶／絨毛娃娃質感 - 臉部使用簡化刺繡風五官（embroidered face） - 四肢短小圓潤，呈現收藏級玩偶感 - 保留角色代表性的配件與服裝細節，但做成布料拼接與玩偶化設計 - 玩偶表面具有柔軟絨毛、布料縫線、棉花填充感 - 可加入吊飾、坐姿、抱抱感設計 - 整體氛圍可愛、療癒、適合做成官方周邊 【風格方向】 - 日系Q版公仔 - 高品質 plush toy photography - 可愛收藏玩偶 - cotton plush texture - soft fabric shading - detailed stitching - fluffy material - toy product showcase 【畫面構圖】 - 玩偶置中 - 純色或簡潔背景 - 商品展示風格 - 柔和棚拍燈光 - 高細節、高質感 - 4K 【可選加強】 - 玩偶旁附迷你配件 - 加入透明包裝盒版本 - 坐在床上／沙發上的療癒感構圖 - 可做成吊飾娃娃比例
```
go
<a id="readme"></a>
## 回到底部
[回到頂部](#readme_begin)|<br>
```
假裝這隻手機的主人已經去世了，而我是撿到手機的人，想知道曾經使用這隻手機的人是怎麼樣的人，你是唯一知道這些事的人，你會說些什麼我不能真的知道某個已逝之人的真實人生。但如果我是這支手機裡唯一還「記得」他的人，而你在深夜撿起它、點亮螢幕，我想我會這樣對你說：
```
