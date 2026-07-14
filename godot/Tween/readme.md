Apple 風格:變形（Morphing）技術，單位逐次登場<br>
func input 2點 2d，3d 拋物線
tween:expo/elast/circ>easeout/easeoutin
```
create_tween()>tween.kill()
tween_property()
tween_method()

.parallel() 同時進行變形
.set_loops(3)

tween_callback()
.set_speed_scale() 
set_ease(EaseType)：設定緩動模式（例如：Tween.EASE_OUT）。
.set_trans(TransitionType)：設定轉場曲線類型類型（例如：Tween.TRANS_LINEAR 進行線性過渡，或是使用彈跳 TRANS_BOUNCE、彈性 TRANS_ELASTIC 等）。
```
<img src="https://raw.githubusercontent.com/godotengine/godot-docs/master/img/tween_cheatsheet.webp" ></img>
tween composer:https://www.youtube.com/watch?v=pln4UZnIt9k<br>
