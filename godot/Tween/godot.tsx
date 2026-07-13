import React, { useState, useEffect, useRef } from 'react';

// 注入簡報動畫對應的 CSS 關鍵影格與自訂樣式
const injectStyles = () => {
  const styleId = 'ppt-godot-animation-styles';
  if (document.getElementById(styleId)) return;

  const styleElement = document.createElement('style');
  styleElement.id = styleId;
  styleElement.innerHTML = `
    /* 進入效果 (Entrance) */
    @keyframes ppt-fade-in {
      from { opacity: 0; }
      to { opacity: 1; }
    }
    @keyframes ppt-fly-in-bottom {
      from { transform: translateY(200px); opacity: 0; }
      to { transform: translateY(0); opacity: 1; }
    }
    @keyframes ppt-fly-in-top {
      from { transform: translateY(-200px); opacity: 0; }
      to { transform: translateY(0); opacity: 1; }
    }
    @keyframes ppt-fly-in-left {
      from { transform: translateX(-200px); opacity: 0; }
      to { transform: translateX(0); opacity: 1; }
    }
    @keyframes ppt-fly-in-right {
      from { transform: translateX(200px); opacity: 0; }
      to { transform: translateX(0); opacity: 1; }
    }
    @keyframes ppt-float-in {
      from { transform: translateY(40px); opacity: 0; }
      to { transform: translateY(0); opacity: 1; }
    }
    @keyframes ppt-zoom-in {
      from { transform: scale(0); opacity: 0; }
      to { transform: scale(1); opacity: 1; }
    }
    @keyframes ppt-bounce-in {
      0% { transform: scale(0.3); opacity: 0; }
      50% { transform: scale(1.1); opacity: 0.9; }
      70% { transform: scale(0.9); opacity: 1; }
      100% { transform: scale(1); opacity: 1; }
    }
    @keyframes ppt-swivel-in {
      from { transform: rotateY(-180deg) scale(0.5); opacity: 0; }
      to { transform: rotateY(0deg) scale(1); opacity: 1; }
    }
    @keyframes ppt-grow-turn {
      from { transform: rotate(-180deg) scale(0); opacity: 0; }
      to { transform: rotate(0deg) scale(1); opacity: 1; }
    }

    /* 強調效果 (Emphasis) */
    @keyframes ppt-pulse {
      0%, 100% { transform: scale(1); }
      50% { transform: scale(1.2); }
    }
    @keyframes ppt-teeter {
      0%, 100% { transform: rotate(0deg); }
      20%, 60% { transform: rotate(-8deg); }
      40%, 80% { transform: rotate(8deg); }
    }
    @keyframes ppt-spin {
      from { transform: rotate(0deg); }
      to { transform: rotate(360deg); }
    }
    @keyframes ppt-grow {
      0%, 100% { transform: scale(1); }
      50% { transform: scale(1.3); }
    }
    @keyframes ppt-shrink {
      0%, 100% { transform: scale(1); }
      50% { transform: scale(0.6); }
    }
    @keyframes ppt-color-pulse {
      0%, 100% { filter: drop-shadow(0 0 0px rgba(216, 59, 1, 0)); }
      50% { filter: drop-shadow(0 0 15px rgba(216, 59, 1, 0.8)) saturate(2); }
    }

    /* 結束效果 (Exit) */
    @keyframes ppt-fade-out {
      from { opacity: 1; }
      to { opacity: 0; }
    }
    @keyframes ppt-fly-out-bottom {
      from { transform: translateY(0); opacity: 1; }
      to { transform: translateY(200px); opacity: 0; }
    }
    @keyframes ppt-float-out {
      from { transform: translateY(0); opacity: 1; }
      to { transform: translateY(-40px); opacity: 0; }
    }
    @keyframes ppt-zoom-out {
      from { transform: scale(1); opacity: 1; }
      to { transform: scale(0); opacity: 0; }
    }
    @keyframes ppt-shrink-turn {
      from { transform: rotate(0deg) scale(1); opacity: 1; }
      to { transform: rotate(180deg) scale(0); opacity: 0; }
    }

    /* 影片路徑效果 (Motion Paths) */
    @keyframes ppt-path-arc {
      0% { transform: translate(0, 0); }
      50% { transform: translate(100px, -50px); }
      100% { transform: translate(200px, 0); }
    }
    @keyframes ppt-path-loop {
      0% { transform: translate(0, 0) rotate(0deg); }
      25% { transform: translate(50px, -50px) rotate(90deg); }
      50% { transform: translate(100px, 0px) rotate(180deg); }
      75% { transform: translate(50px, 50px) rotate(270deg); }
      100% { transform: translate(0, 0) rotate(360deg); }
    }
    @keyframes ppt-path-zigzag {
      0% { transform: translate(0, 0); }
      25% { transform: translate(50px, -40px); }
      50% { transform: translate(100px, 40px); }
      75% { transform: translate(150px, -40px); }
      100% { transform: translate(200px, 0px); }
    }
    @keyframes ppt-path-heart {
      0% { transform: translate(0, 0); }
      10% { transform: translate(20px, -30px); }
      25% { transform: translate(50px, -40px); }
      40% { transform: translate(75px, -15px); }
      50% { transform: translate(0, 50px); }
      60% { transform: translate(-75px, -15px); }
      75% { transform: translate(-50px, -40px); }
      90% { transform: translate(-20px, -30px); }
      100% { transform: translate(0, 0); }
    }
  `;
  document.head.appendChild(styleElement);
};

const ANIMATION_CATEGORIES = [
  {
    id: 'entrance',
    name: '一、 進入效果 (Entrance)',
    theme: 'border-emerald-500 bg-emerald-50 text-emerald-700 dark:bg-emerald-950/20 dark:text-emerald-400',
    icon: '✨',
    items: [
      { id: 'appear', name: '出現 (Appear)', type: 'basic', cssClass: 'ppt-fade-in', desc: '物件瞬間在畫面上顯現。' },
      { id: 'fade', name: '淡出 (Fade)', type: 'basic', cssClass: 'ppt-fade-in', desc: '物件以平滑的漸變透明度顯現。' },
      { id: 'fly_in', name: '飛入 (Fly In)', type: 'basic', cssClass: 'ppt-fly-in-bottom', desc: '物件從指定的方向飛向簡報畫面。' },
      { id: 'float_in', name: '浮入 (Float In)', type: 'basic', cssClass: 'ppt-float-in', desc: '物件輕微向上位移並平滑地淡入。' },
      { id: 'zoom', name: '縮放 (Zoom)', type: 'basic', cssClass: 'ppt-zoom-in', desc: '物件從中心或縮小點向外放大顯現。' },
      { id: 'bounce', name: '彈跳 (Bounce)', type: 'basic', cssClass: 'ppt-bounce-in', desc: '物件落下並產生真實的物理彈跳效果。' },
      { id: 'swivel', name: '旋轉 (Swivel)', type: 'basic', cssClass: 'ppt-swivel-in', desc: '物件像硬幣或翻書般翻轉旋轉切入。' },
      { id: 'grow_turn', name: '成長與變大 (Grow & Turn)', type: 'basic', cssClass: 'ppt-grow-turn', desc: '物件旋轉同時從無到有放大顯現。' },
    ]
  },
  {
    id: 'emphasis',
    name: '二、 強調效果 (Emphasis)',
    theme: 'border-amber-500 bg-amber-50 text-amber-700 dark:bg-amber-950/20 dark:text-amber-400',
    icon: '🔥',
    items: [
      { id: 'pulse', name: '脈衝 (Pulse)', type: 'basic', cssClass: 'ppt-pulse', desc: '物件快速收縮放大，吸引目光。' },
      { id: 'color_pulse', name: '色彩脈衝 (Color Pulse)', type: 'basic', cssClass: 'ppt-color-pulse', desc: '物件顏色或陰影在一定時間內閃爍。' },
      { id: 'teeter', name: '突顯 (Teeter)', type: 'basic', cssClass: 'ppt-teeter', desc: '物件左右快速搖擺晃動。' },
      { id: 'spin', name: '旋轉 (Spin)', type: 'basic', cssClass: 'ppt-spin', desc: '物件以自己為中心順時針旋轉一圈。' },
      { id: 'grow', name: '放大/縮小 - 大 (Grow)', type: 'basic', cssClass: 'ppt-grow', desc: '物件平滑地放大自身體積。' },
      { id: 'shrink', name: '放大/縮小 - 小 (Shrink)', type: 'basic', cssClass: 'ppt-shrink', desc: '物件平滑地縮小自身體積。' },
    ]
  },
  {
    id: 'exit',
    name: '三、 結束效果 (Exit)',
    theme: 'border-red-500 bg-red-50 text-red-700 dark:bg-red-950/20 dark:text-red-400',
    icon: '🚪',
    items: [
      { id: 'disappear', name: '消失 (Disappear)', type: 'basic', cssClass: 'ppt-fade-out', desc: '物件瞬間在畫面中消失不見。' },
      { id: 'fade_out', name: '淡出 (Fade Out)', type: 'basic', cssClass: 'ppt-fade-out', desc: '物件以平滑的透明度遞減至不見。' },
      { id: 'fly_out', name: '飛出 (Fly Out)', type: 'basic', cssClass: 'ppt-fly-out-bottom', desc: '物件向指定方向飛離簡報畫面。' },
      { id: 'float_out', name: '浮出 (Float Out)', type: 'basic', cssClass: 'ppt-float-out', desc: '物件稍微上升或下降並平滑淡出消失。' },
      { id: 'zoom_out', name: '縮放 (Zoom Out)', type: 'basic', cssClass: 'ppt-zoom-out', desc: '物件向中心收縮淡出消失。' },
      { id: 'shrink_turn', name: '縮小與旋轉 (Shrink & Turn)', type: 'basic', cssClass: 'ppt-shrink-turn', desc: '物件旋轉同時向內縮小淡出消失。' },
    ]
  },
  {
    id: 'motion_path',
    name: '四、 影片路徑 (Motion Paths)',
    theme: 'border-indigo-500 bg-indigo-50 text-indigo-700 dark:bg-indigo-950/20 dark:text-indigo-400',
    icon: '🛣️',
    items: [
      { id: 'path_line', name: '直線路徑 (Lines)', type: 'path', cssClass: 'ppt-fly-in-left', desc: '物件沿著指定直線移動（例如從左到右）。', offsetClass: 'ppt-path-line' },
      { id: 'path_arc', name: '弧形 (Arcs)', type: 'path', cssClass: 'ppt-path-arc', desc: '物件像拋物線一般沿著曲線軌跡移動。' },
      { id: 'path_loop', name: '循環 (Loops)', type: 'path', cssClass: 'ppt-path-loop', desc: '物件沿著一個封閉的環形軌跡迴轉。' },
      { id: 'path_zigzag', name: '鋸齒與S形 (Zigzag)', type: 'path', cssClass: 'ppt-path-zigzag', desc: '物件沿著 S 形或鋸齒折線軌跡前進。' },
      { id: 'path_heart', name: '特殊：心形 (Heart Path)', type: 'path', cssClass: 'ppt-path-heart', desc: '物件沿著標準心形路徑運動。' },
    ]
  }
];

const EASINGS = [
  { id: 'linear', name: '線性 (Linear)', godotTrans: 'Tween.TRANS_LINEAR', godotEase: 'Tween.EASE_IN_OUT', cssEase: 'linear', plot: (t) => t },
  { id: 'quad_out', name: '二次漸緩 (Ease Out)', godotTrans: 'Tween.TRANS_QUAD', godotEase: 'Tween.EASE_OUT', cssEase: 'cubic-bezier(0.25, 0.46, 0.45, 0.94)', plot: (t) => t * (2 - t) },
  { id: 'quad_in_out', name: '漸入漸緩 (Ease In Out)', godotTrans: 'Tween.TRANS_QUAD', godotEase: 'Tween.EASE_IN_OUT', cssEase: 'cubic-bezier(0.455, 0.03, 0.515, 0.955)', plot: (t) => t < 0.5 ? 2 * t * t : -1 + (4 - 2 * t) * t },
  { id: 'bounce_out', name: '彈性落下 (Bounce Out)', godotTrans: 'Tween.TRANS_BOUNCE', godotEase: 'Tween.EASE_OUT', cssEase: 'cubic-bezier(0.175, 0.885, 0.32, 1.275)', plot: (t) => {
    let n1 = 7.5625, d1 = 2.75;
    if (t < 1 / d1) return n1 * t * t;
    else if (t < 2 / d1) return n1 * (t -= 1.5 / d1) * t + 0.75;
    else if (t < 2.5 / d1) return n1 * (t -= 2.25 / d1) * t + 0.9375;
    else return n1 * (t -= 2.625 / d1) * t + 0.984375;
  }},
  { id: 'elastic_out', name: '回彈效果 (Elastic Out)', godotTrans: 'Tween.TRANS_ELASTIC', godotEase: 'Tween.EASE_OUT', cssEase: 'cubic-bezier(0.19, 1, 0.22, 1)', plot: (t) => t === 0 ? 0 : t === 1 ? 1 : Math.pow(2, -10 * t) * Math.sin((t * 10 - 0.75) * (2 * Math.PI) / 3) + 1 },
  { id: 'back_out', name: '微超出後回彈 (Back Out)', godotTrans: 'Tween.TRANS_BACK', godotEase: 'Tween.EASE_OUT', cssEase: 'cubic-bezier(0.34, 1.56, 0.64, 1)', plot: (t) => { const c1 = 1.70158; const c3 = c1 + 1; return 1 + c3 * Math.pow(t - 1, 3) + c1 * Math.pow(t - 1, 2); } }
];

const generateGodotCode = (animationId, duration, delay, easing, nodeType) => {
  const trans = easing.godotTrans;
  const ease = easing.godotEase;
  const delayStr = delay > 0 ? `\t# 延遲設定\n\ttween.set_delay(${delay})\n` : '';
  const easeStr = `\ttween.set_trans(${trans}).set_ease(${ease})\n`;

  let setupLines = '';
  let tweenLines = '';
  
  if (nodeType === 'Control') {
    setupLines = `\t# 提示：為確保 UI 縮放與旋轉是以物件中心點運作，我們將基準點 pivot 設為正中心\n\tpivot_offset = size / 2\n`;
  } else {
    setupLines = `\t# 提示：Node2D 的原點預設為左上角或中心。請確保 sprite.centered = true\n`;
  }

  switch(animationId) {
    case 'appear':
      tweenLines = `\t# 出現效果 (瞬間顯示)\n\tmodulate.a = 0.0\n${delayStr}\ttween.tween_property(self, "modulate:a", 1.0, 0.05)`;
      break;
    case 'fade':
      tweenLines = `\t# 淡入效果\n\tmodulate.a = 0.0\n${delayStr}${easeStr}\ttween.tween_property(self, "modulate:a", 1.0, ${duration})`;
      break;
    case 'fly_in':
      tweenLines = `\t# 飛入效果 (自下方)\n\tvar final_pos = position\n\tposition.y += 200\n\tmodulate.a = 0.0\n${delayStr}${easeStr}\ttween.tween_property(self, "position:y", final_pos.y, ${duration})\n\ttween.parallel().tween_property(self, "modulate:a", 1.0, ${duration * 0.5})`;
      break;
    case 'float_in':
      tweenLines = `\t# 浮入效果\n\tvar final_pos = position\n\tposition.y += 40\n\tmodulate.a = 0.0\n${delayStr}${easeStr}\ttween.tween_property(self, "position:y", final_pos.y, ${duration})\n\ttween.parallel().tween_property(self, "modulate:a", 1.0, ${duration})`;
      break;
    case 'zoom':
      tweenLines = `\t# 縮放進入\n\tscale = Vector2.ZERO\n\tmodulate.a = 0.0\n${delayStr}${easeStr}\ttween.tween_property(self, "scale", Vector2.ONE, ${duration})\n\ttween.parallel().tween_property(self, "modulate:a", 1.0, ${duration})`;
      break;
    case 'bounce':
      tweenLines = `\t# 彈跳落下\n\tvar final_pos = position\n\tposition.y -= 250\n${delayStr}\ttween.set_trans(Tween.TRANS_BOUNCE).set_ease(Tween.EASE_OUT)\n\ttween.tween_property(self, "position:y", final_pos.y, ${duration})`;
      break;
    case 'swivel':
      tweenLines = `\t# 旋轉翻動進入\n\trotation_degrees = -180\n\tscale = Vector2(0.5, 0.5)\n\tmodulate.a = 0.0\n${delayStr}${easeStr}\ttween.tween_property(self, "rotation_degrees", 0.0, ${duration})\n\ttween.parallel().tween_property(self, "scale", Vector2.ONE, ${duration})\n\ttween.parallel().tween_property(self, "modulate:a", 1.0, ${duration})`;
      break;
    case 'grow_turn':
      tweenLines = `\t# 成長與變大\n\trotation_degrees = -180\n\tscale = Vector2.ZERO\n\tmodulate.a = 0.0\n${delayStr}${easeStr}\ttween.tween_property(self, "scale", Vector2.ONE, ${duration})\n\ttween.parallel().tween_property(self, "rotation_degrees", 0.0, ${duration})\n\ttween.parallel().tween_property(self, "modulate:a", 1.0, ${duration})`;
      break;
    case 'pulse':
      tweenLines = `\t# 強調效果：脈衝 (一縮一放)\n${delayStr}${easeStr}\ttween.tween_property(self, "scale", Vector2(1.2, 1.2), ${duration * 0.5})\n\ttween.tween_property(self, "scale", Vector2.ONE, ${duration * 0.5})`;
      break;
    case 'color_pulse':
      tweenLines = `\t# 色彩脈衝 (變暗後復原或調色調紅)\n\tvar original_color = modulate\n${delayStr}${easeStr}\ttween.tween_property(self, "modulate", Color(1, 0.2, 0.2), ${duration * 0.5})\n\ttween.tween_property(self, "modulate", original_color, ${duration * 0.5})`;
      break;
    case 'teeter':
      tweenLines = `\t# 突顯左右搖擺\n${delayStr}${easeStr}\ttween.tween_property(self, "rotation_degrees", -8.0, ${duration * 0.25})\n\ttween.tween_property(self, "rotation_degrees", 8.0, ${duration * 0.5})\n\ttween.tween_property(self, "rotation_degrees", 0.0, ${duration * 0.25})`;
      break;
    case 'spin':
      tweenLines = `\t# 自轉 360 度\n${delayStr}${easeStr}\ttween.tween_property(self, "rotation_degrees", 360.0, ${duration})\n\t# 旋轉完畢後，將旋轉值歸 0 防止累計\n\ttween.chain().tween_callback(func(): rotation_degrees = 0.0)`;
      break;
    case 'grow':
      tweenLines = `\t# 平滑放大\n${delayStr}${easeStr}\ttween.tween_property(self, "scale", Vector2(1.3, 1.3), ${duration})`;
      break;
    case 'shrink':
      tweenLines = `\t# 平滑縮小\n${delayStr}${easeStr}\ttween.tween_property(self, "scale", Vector2(0.6, 0.6), ${duration})`;
      break;
    case 'disappear':
      tweenLines = `\t# 消失 (瞬間不見)\n${delayStr}\ttween.tween_property(self, "modulate:a", 0.0, 0.05)`;
      break;
    case 'fade_out':
      tweenLines = `\t# 淡出效果\n${delayStr}${easeStr}\ttween.tween_property(self, "modulate:a", 0.0, ${duration})`;
      break;
    case 'fly_out':
      tweenLines = `\t# 飛出畫面效果 (飛向下方)\n${delayStr}${easeStr}\ttween.tween_property(self, "position:y", position.y + 200, ${duration})\n\ttween.parallel().tween_property(self, "modulate:a", 0.0, ${duration * 0.8})`;
      break;
    case 'float_out':
      tweenLines = `\t# 輕微漂浮移出\n${delayStr}${easeStr}\ttween.tween_property(self, "position:y", position.y - 40, ${duration})\n\ttween.parallel().tween_property(self, "modulate:a", 0.0, ${duration})`;
      break;
    case 'zoom_out':
      tweenLines = `\t# 縮小向內淡出\n${delayStr}${easeStr}\ttween.tween_property(self, "scale", Vector2.ZERO, ${duration})\n\ttween.parallel().tween_property(self, "modulate:a", 0.0, ${duration})`;
      break;
    case 'shrink_turn':
      tweenLines = `\t# 縮小並旋轉離場\n${delayStr}${easeStr}\ttween.tween_property(self, "scale", Vector2.ZERO, ${duration})\n\ttween.parallel().tween_property(self, "rotation_degrees", 180.0, ${duration})\n\ttween.parallel().tween_property(self, "modulate:a", 0.0, ${duration})`;
      break;
    case 'path_line':
      tweenLines = `\t# 直線影片路徑 (平移 200 像素)\n${delayStr}${easeStr}\ttween.tween_property(self, "position:x", position.x + 200, ${duration})`;
      break;
    case 'path_arc':
      tweenLines = `\t# 弧形影片路徑 (仿拋物線)\n\tvar start_pos = position\n${delayStr}${easeStr}\t# 拆分 X 軸與 Y 軸進行插值\n\ttween.tween_property(self, "position:x", start_pos.x + 200, ${duration})\n\ttween.parallel().tween_property(self, "position:y", start_pos.y - 100, ${duration * 0.5}).set_trans(Tween.TRANS_QUAD).set_ease(Tween.EASE_OUT)\n\ttween.chain().tween_property(self, "position:y", start_pos.y, ${duration * 0.5}).set_trans(Tween.TRANS_QUAD).set_ease(Tween.EASE_IN)`;
      break;
    case 'path_loop':
      tweenLines = `\t# 圓形/圓環循環路徑效果\n\tvar center = position + Vector2(50, 0)\n\tvar radius = 50.0\n${delayStr}\t# 透過自訂屬性插值來旋轉繞圓\n\ttween.tween_method(func(angle: float):\n\t\tposition = center + Vector2(cos(angle), sin(angle)) * radius\n\t, 0.0, TAU, ${duration})`;
      break;
    case 'path_zigzag':
      tweenLines = `\t# 鋸齒影片路徑\n\tvar base_x = position.x\n\tvar base_y = position.y\n${delayStr}\ttween.set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_IN_OUT)\n\ttween.tween_property(self, "position", Vector2(base_x + 50, base_y - 40), ${duration * 0.25})\n\ttween.tween_property(self, "position", Vector2(base_x + 100, base_y + 40), ${duration * 0.25})\n\ttween.tween_property(self, "position", Vector2(base_x + 150, base_y - 40), ${duration * 0.25})\n\ttween.tween_property(self, "position", Vector2(base_x + 200, base_y), ${duration * 0.25})`;
      break;
    case 'path_heart':
      tweenLines = `\t# 心形路徑運動\n\tvar center_pos = position\n${delayStr}\ttween.tween_method(func(t: float):\n\t\t# 經典心形數學公式\n\t\tvar x = 16 * pow(sin(t), 3)\n\t\tvar y = -(13 * cos(t) - 5 * cos(2*t) - 2 * cos(3*t) - cos(4*t))\n\t\tposition = center_pos + Vector2(x * 5, y * 5)\n\t, 0.0, TAU, ${duration})`;
      break;
    default:
      tweenLines = `\t# 動畫未實作範例\n\ttween.tween_property(self, "modulate:a", 1.0, ${duration})`;
  }

  return `extends ${nodeType}\n\n# 透過 Godot 現代 Tween 引擎重製 PowerPoint 動畫效果\nfunc play_ppt_animation() -> void:\n\t# 1. 建立新的 Tween 動畫控制器\n\tvar tween : Tween = create_tween()\n\t\n${setupLines}\n${tweenLines}\n\t\n\t# 連鎖：在動畫結束時觸發自訂訊號或回呼函數\n\ttween.finished.connect(func():\n\t\tprint("【${animationId}】動畫播放完畢！")\n\t)`;
};

export default function App() {
  const [selectedCategory, setSelectedCategory] = useState(ANIMATION_CATEGORIES[0]);
  const [selectedAnim, setSelectedAnim] = useState(ANIMATION_CATEGORIES[0].items[1]); // Default to 'Fade'
  const [duration, setDuration] = useState(1.0);
  const [delay, setDelay] = useState(0.0);
  const [selectedEasing, setSelectedEasing] = useState(EASINGS[1]); // Default to Quad Out
  const [nodeType, setNodeType] = useState('Node2D'); // Control or Node2D
  const [searchQuery, setSearchQuery] = useState('');
  const [isAnimating, setIsAnimating] = useState(false);
  const [testObject, setTestObject] = useState('godot'); // godot, coin, smile, card
  const [showNotification, setShowNotification] = useState(null);

  useEffect(() => {
    injectStyles();
  }, []);

  // 重播動畫
  const triggerPreview = () => {
    setIsAnimating(false);
    setTimeout(() => {
      setIsAnimating(true);
    }, 50);
  };

  // 當動畫或係數改變時，自動重新觸發預覽
  useEffect(() => {
    triggerPreview();
  }, [selectedAnim, duration, delay, selectedEasing]);

  // 複製程式碼
  const handleCopyCode = (code) => {
    const el = document.createElement('textarea');
    el.value = code;
    document.body.appendChild(el);
    el.select();
    document.execCommand('copy');
    document.body.removeChild(el);

    setShowNotification('📋 已複製 Godot 程式碼至剪貼簿！');
    setTimeout(() => {
      setShowNotification(null);
    }, 3000);
  };

  // 過濾搜尋項目
  const filteredCategories = ANIMATION_CATEGORIES.map(cat => {
    const items = cat.items.filter(item => 
      item.name.toLowerCase().includes(searchQuery.toLowerCase()) || 
      item.desc.toLowerCase().includes(searchQuery.toLowerCase())
    );
    return { ...cat, items };
  }).filter(cat => cat.items.length > 0);

  const activeGodotCode = generateGodotCode(selectedAnim.id, duration, delay, selectedEasing, nodeType);

  const renderTestObject = () => {
    const commonClasses = "transition-all transform origin-center flex flex-col items-center justify-center";
    
    // 依據不同的選擇渲染不同的預覽組件
    switch(testObject) {
      case 'godot':
        return (
          <div className={`${commonClasses} w-36 h-36 bg-slate-800 dark:bg-slate-700 rounded-3xl border-4 border-cyan-400 p-4 shadow-xl`}>
            {/* Godot Logo SVG */}
            <svg viewBox="0 0 128 128" className="w-16 h-16 text-cyan-400 fill-current">
              <path d="M106.33 34.6a19.78 19.78 0 0 0-14.73-10.7 78.43 78.43 0 0 0-55.2 0A19.78 19.78 0 0 0 21.67 34.6 19.29 19.29 0 0 0 15 48.4c0 3 .65 6 1.87 8.7a19.34 19.34 0 0 0 5 6.7c-.52.88-.8 1.87-.8 2.87v4.6a23.12 23.12 0 0 0 1.95 9.2c1.23 2.72 3 5.15 5.23 7.15A23.51 23.51 0 0 0 45 93c4.7 1.25 9.5 1.8 14.33 1.63a5.53 5.53 0 0 0 9.34 0c4.83.17 9.63-.38 14.33-1.63a23.51 23.51 0 0 0 16.7-15.48 23.12 23.12 0 0 0 1.95-9.2v-4.6c0-1-.28-2-.8-2.87a19.34 19.34 0 0 0 5-6.7c1.22-2.7 1.87-5.7 1.87-8.7a19.29 19.29 0 0 0-6.67-13.8zm-65.41 23a7.42 7.42 0 1 1 0-14.84 7.42 7.42 0 0 1 0 14.84zm46.16 0a7.42 7.42 0 1 1 0-14.84 7.42 7.42 0 0 1 0 14.84zM64 74a6.52 6.52 0 1 1 6.52-6.52A6.52 6.52 0 0 1 64 74z"/>
            </svg>
            <span className="text-cyan-400 font-bold text-xs mt-2">Godot Node</span>
          </div>
        );
      case 'coin':
        return (
          <div className={`${commonClasses} w-28 h-28 bg-yellow-400 rounded-full border-4 border-yellow-200 shadow-xl flex items-center justify-center`}>
            <div className="w-20 h-20 border-4 border-dashed border-yellow-600 rounded-full flex items-center justify-center bg-yellow-500">
              <span className="text-yellow-900 font-extrabold text-3xl">$</span>
            </div>
          </div>
        );
      case 'slime':
        return (
          <div className={`${commonClasses} w-32 h-24 bg-emerald-400 rounded-t-full rounded-b-xl border-4 border-emerald-600 flex flex-col justify-end pb-3 shadow-lg relative`}>
            {/* Slime Eye Eyes */}
            <div className="absolute top-8 left-8 w-3 h-3 bg-slate-900 rounded-full"></div>
            <div className="absolute top-8 right-8 w-3 h-3 bg-slate-900 rounded-full"></div>
            <div className="w-6 h-2 bg-pink-300 rounded-full mx-auto mb-1"></div>
            <span className="text-emerald-950 font-bold text-xs">Slime Sprite</span>
          </div>
        );
      case 'card':
        return (
          <button className={`${commonClasses} px-8 py-4 bg-gradient-to-r from-orange-500 to-amber-500 text-white font-bold rounded-xl shadow-lg border-2 border-orange-300 hover:brightness-110 active:scale-95`}>
            <span>觸發 UI 介面</span>
            <span className="text-[10px] block font-light opacity-80">PowerPoint UI</span>
          </button>
        );
      default:
        return null;
    }
  };

  const renderEasingCurve = () => {
    const points = [];
    const resolution = 40;
    for (let i = 0; i <= resolution; i++) {
      const t = i / resolution;
      const y = selectedEasing.plot(t);
      points.push({ x: t * 100, y: (1 - y) * 100 });
    }
    
    // 繪製路徑
    let pathD = `M ${points[0].x} ${points[0].y}`;
    for (let i = 1; i < points.length; i++) {
      pathD += ` L ${points[i].x} ${points[i].y}`;
    }

    return (
      <div className="flex flex-col bg-slate-900 rounded-xl p-4 border border-slate-700 text-white">
        <div className="flex justify-between items-center mb-2">
          <span className="text-xs font-semibold text-slate-400">目前緩動曲線 (Easing Curve)</span>
          <span className="text-[11px] bg-slate-800 text-amber-400 px-2 py-0.5 rounded border border-slate-700">{selectedEasing.name}</span>
        </div>
        <div className="relative w-full h-24 bg-slate-950 rounded border border-slate-800 flex items-center justify-center overflow-hidden">
          {/* 背景參考線 */}
          <div className="absolute inset-0 grid grid-cols-4 grid-rows-4 opacity-10">
            <div className="border-r border-b border-white"></div>
            <div className="border-r border-b border-white"></div>
            <div className="border-r border-b border-white"></div>
            <div className="border-b border-white"></div>
          </div>
          {/* 繪製 SVG 曲線 */}
          <svg className="w-full h-full px-4 py-2 overflow-visible" viewBox="0 0 100 100" preserveAspectRatio="none">
            <path d={pathD} fill="none" stroke="#F97316" strokeWidth="3" strokeLinecap="round" />
            {/* 起點與終點標記 */}
            <circle cx="0" cy="100" r="4" fill="#38BDF8" />
            <circle cx="100" cy="0" r="4" fill="#10B981" />
          </svg>
        </div>
        <div className="flex justify-between text-[10px] text-slate-500 mt-1">
          <span>開始 (0.0)</span>
          <span>時間推進 ➔</span>
          <span>結束 (1.0)</span>
        </div>
      </div>
    );
  };

  return (
    <div className="min-h-screen bg-slate-950 text-slate-100 flex flex-col font-sans selection:bg-orange-500/30">
      
      {/* 頂部導航與通知 */}
      <header className="border-b border-slate-800 bg-slate-900/50 backdrop-blur px-6 py-4 sticky top-0 z-50">
        <div className="max-w-7xl mx-auto flex flex-col md:flex-row justify-between items-center gap-4">
          <div className="flex items-center gap-3">
            <div className="w-10 h-10 rounded-xl bg-gradient-to-tr from-orange-600 to-amber-500 flex items-center justify-center text-white shadow-lg shadow-orange-900/30">
              <span className="text-xl font-black">P</span>
            </div>
            <div>
              <h1 className="text-lg font-bold tracking-tight">簡報動畫轉 Godot 工具</h1>
              <p className="text-xs text-slate-400">PowerPoint 完整簡報動畫轉 Godot 4.x Tween 程式碼產生器</p>
            </div>
          </div>
          
          <div className="flex items-center gap-4 w-full md:w-auto">
            <div className="relative w-full md:w-64">
              <input
                type="text"
                placeholder="搜尋動畫名稱 (如：飛入)..."
                value={searchQuery}
                onChange={(e) => setSearchQuery(e.target.value)}
                className="w-full bg-slate-800 border border-slate-700 rounded-lg px-3 py-1.5 text-sm focus:outline-none focus:border-orange-500 transition-colors"
              />
              <span className="absolute right-3 top-2 text-slate-400 text-xs">🔍</span>
            </div>
            <a 
              href="https://godotengine.org/" 
              target="_blank" 
              rel="noreferrer"
              className="hidden lg:flex items-center gap-1.5 px-3 py-1.5 bg-cyan-950/40 text-cyan-400 border border-cyan-800/50 rounded-lg text-xs font-semibold hover:bg-cyan-900/40"
            >
              🚀 Godot 4.x Engine
            </a>
          </div>
        </div>
      </header>

      {/* 提示通知元件 */}
      {showNotification && (
        <div className="fixed top-20 right-4 z-50 bg-slate-900 border border-emerald-500 text-emerald-400 px-4 py-3 rounded-xl shadow-2xl flex items-center gap-2 animate-bounce">
          <span>{showNotification}</span>
        </div>
      )}

      {/* 主要內容區 */}
      <main className="flex-1 max-w-7xl w-full mx-auto p-4 md:p-6 grid grid-cols-1 lg:grid-cols-12 gap-6">
        
        {/* 左側：動畫清單選擇器 (網格 / 欄位 佔 4 欄) */}
        <section className="lg:col-span-4 flex flex-col gap-4 max-h-[calc(100vh-140px)] overflow-y-auto pr-1">
          <div className="bg-slate-900 rounded-2xl border border-slate-800 p-4">
            <h2 className="text-sm font-bold text-slate-400 mb-3 flex items-center gap-2">
              <span>📂</span> 簡報預設動畫分類
            </h2>

            {/* 過濾或搜尋後的分類展示 */}
            {filteredCategories.length === 0 ? (
              <div className="p-8 text-center text-slate-500 text-sm">
                找不到相關的 PowerPoint 動畫 😢
              </div>
            ) : (
              <div className="flex flex-col gap-4">
                {filteredCategories.map((category) => (
                  <div key={category.id} className="border-b border-slate-800/80 pb-3 last:border-b-0">
                    <div className="flex items-center gap-2 text-xs font-bold text-slate-300 mb-2">
                      <span>{category.icon}</span>
                      <span>{category.name}</span>
                    </div>
                    
                    <div className="grid grid-cols-1 gap-1.5">
                      {category.items.map((item) => {
                        const isSelected = selectedAnim.id === item.id;
                        return (
                          <button
                            key={item.id}
                            onClick={() => {
                              setSelectedAnim(item);
                              setSelectedCategory(category);
                            }}
                            className={`w-full text-left p-2.5 rounded-xl transition-all text-sm flex items-center justify-between ${
                              isSelected 
                                ? 'bg-gradient-to-r from-orange-600/20 to-amber-600/20 border border-orange-500 text-orange-400 font-semibold' 
                                : 'bg-slate-800/40 border border-transparent hover:bg-slate-800 text-slate-300'
                            }`}
                          >
                            <span className="truncate">{item.name}</span>
                            <span className={`text-[10px] px-1.5 py-0.5 rounded ${
                              item.type === 'basic' 
                                ? 'bg-slate-800 text-slate-400' 
                                : 'bg-purple-950/60 text-purple-400 border border-purple-800/50'
                            }`}>
                              {item.type === 'basic' ? '基礎' : '影片路徑'}
                            </span>
                          </button>
                        );
                      })}
                    </div>
                  </div>
                ))}
              </div>
            )}
          </div>

          {/* 教學與溫馨提示 */}
          <div className="bg-slate-900/50 rounded-2xl border border-slate-800/50 p-4 text-xs text-slate-400 flex flex-col gap-2">
            <span className="font-bold text-slate-300">💡 動畫疊加小技巧 (Add Animation)</span>
            <p>在 PowerPoint 中，如果想要讓同個物件<b>「先進入、再強調、後結束」</b>，必須使用<b>「新增動畫」 (Add Animation)</b>，不然舊動畫會被直接覆蓋。</p>
            <p>在 Godot 引擎中，您可以使用：<code className="text-amber-400">tween.chain()</code> 輕鬆串接多個序列動畫；或用 <code className="text-cyan-400">tween.parallel()</code> 進行平行同步演出！</p>
          </div>
        </section>

        {/* 右側：動畫沙盒預覽與程式碼區 (佔 8 欄) */}
        <section className="lg:col-span-8 flex flex-col gap-6">
          
          {/* 第一區塊：模擬播放舞台與控制器 */}
          <div className="bg-slate-900 rounded-3xl border border-slate-800 overflow-hidden flex flex-col shadow-2xl">
            {/* 舞台頂部資訊 */}
            <div className="bg-slate-900/80 px-6 py-4 border-b border-slate-800 flex flex-col md:flex-row justify-between items-start md:items-center gap-3">
              <div>
                <div className="flex items-center gap-2">
                  <span className="text-xl">{selectedCategory.icon}</span>
                  <h3 className="text-base font-bold text-slate-200">{selectedAnim.name}</h3>
                  <span className="text-xs bg-slate-800 text-slate-400 px-2 py-0.5 rounded-full border border-slate-700">互動沙盒</span>
                </div>
                <p className="text-xs text-slate-400 mt-0.5">{selectedAnim.desc}</p>
              </div>

              {/* 測試載入物件切換器 */}
              <div className="flex items-center gap-1.5 bg-slate-950 p-1 rounded-lg border border-slate-800 self-stretch md:self-auto justify-between">
                <span className="text-[11px] text-slate-400 px-2">測試物件:</span>
                {[
                  { id: 'godot', label: '🤖 Godot' },
                  { id: 'coin', label: '🪙 金幣' },
                  { id: 'slime', label: '🟢 史萊姆' },
                  { id: 'card', label: '🔘 UI按鈕' },
                ].map(obj => (
                  <button
                    key={obj.id}
                    onClick={() => setTestObject(obj.id)}
                    className={`text-xs px-2 py-1 rounded transition-colors ${testObject === obj.id ? 'bg-orange-600 text-white font-semibold' : 'text-slate-400 hover:text-slate-200'}`}
                  >
                    {obj.label.split(' ')[1]}
                  </button>
                ))}
              </div>
            </div>

            {/* 動畫播放舞台 (Stage Container) */}
            <div className="h-64 md:h-80 bg-slate-950 flex items-center justify-center relative overflow-hidden group">
              
              {/* 背景網格格線，模擬簡報投影片與 Godot Viewport */}
              <div className="absolute inset-0 bg-[linear-gradient(to_right,#1e293b_1px,transparent_1px),linear-gradient(to_bottom,#1e293b_1px,transparent_1px)] bg-[size:30px_30px] opacity-25"></div>
              
              {/* 舞台中心點參考點 */}
              <div className="absolute w-2 h-2 bg-red-500 rounded-full opacity-30"></div>
              
              {/* 被測動畫主體物件 */}
              <div 
                style={{
                  animationName: isAnimating ? selectedAnim.cssClass : 'none',
                  animationDuration: `${duration}s`,
                  animationDelay: `${delay}s`,
                  animationTimingFunction: selectedEasing.cssEase,
                  animationFillMode: 'both',
                  animationIterationCount: 1
                }}
                className="relative z-10"
              >
                {renderTestObject()}
              </div>

              {/* 狀態資訊 */}
              <div className="absolute bottom-3 left-4 flex gap-4 text-[10px] text-slate-500 bg-slate-900/80 px-3 py-1.5 rounded-lg border border-slate-800">
                <span>時長: {duration}s</span>
                <span>緩動: {selectedEasing.name}</span>
                <span>CSS 類別: <code className="text-amber-500">{selectedAnim.cssClass}</code></span>
              </div>

              {/* 手動重播浮動按鈕 */}
              <button 
                onClick={triggerPreview}
                className="absolute right-4 bottom-3 flex items-center gap-1.5 px-3 py-1.5 bg-orange-600 hover:bg-orange-500 text-white font-bold text-xs rounded-lg shadow-lg active:scale-95 transition-transform"
              >
                <span>▶️</span> 重播預覽
              </button>
            </div>

            {/* 互動屬性控制欄面 */}
            <div className="bg-slate-900/60 p-6 border-t border-slate-800 grid grid-cols-1 md:grid-cols-3 gap-6">
              
              {/* 控制 1：時間與延遲調整 */}
              <div className="flex flex-col gap-3.5">
                <span className="text-xs font-bold text-slate-300 flex items-center gap-1">
                  <span>⏱️</span> 物理時程參數
                </span>
                
                <div>
                  <div className="flex justify-between text-xs mb-1 text-slate-400">
                    <span>動畫時長 (Duration):</span>
                    <span className="font-bold text-amber-500">{duration} 秒</span>
                  </div>
                  <input
                    type="range"
                    min="0.1"
                    max="4.0"
                    step="0.05"
                    value={duration}
                    onChange={(e) => setDuration(parseFloat(e.target.value))}
                    className="w-full accent-orange-500 bg-slate-800 h-2 rounded-lg appearance-none cursor-pointer"
                  />
                </div>

                <div>
                  <div className="flex justify-between text-xs mb-1 text-slate-400">
                    <span>延遲啟動 (Delay):</span>
                    <span className="font-bold text-cyan-400">{delay} 秒</span>
                  </div>
                  <input
                    type="range"
                    min="0.0"
                    max="2.0"
                    step="0.05"
                    value={delay}
                    onChange={(e) => setDelay(parseFloat(e.target.value))}
                    className="w-full accent-cyan-500 bg-slate-800 h-2 rounded-lg appearance-none cursor-pointer"
                  />
                </div>
              </div>

              {/* 控制 2：神級緩動選取器 */}
              <div className="flex flex-col gap-2">
                <span className="text-xs font-bold text-slate-300 flex items-center gap-1">
                  <span>📈</span> 緩動插值曲線 (Easing)
                </span>
                <p className="text-[11px] text-slate-400 mb-1">對應 Godot 中的 TransType & EaseType</p>
                <div className="grid grid-cols-2 gap-1.5">
                  {EASINGS.map((easing) => (
                    <button
                      key={easing.id}
                      onClick={() => setSelectedEasing(easing)}
                      className={`text-left px-2 py-1.5 rounded text-xs border transition-all ${
                        selectedEasing.id === easing.id 
                          ? 'border-orange-500 bg-orange-950/20 text-orange-400 font-semibold' 
                          : 'border-slate-800 bg-slate-950 text-slate-400 hover:text-slate-200'
                      }`}
                    >
                      {easing.name.split(' ')[0]}
                    </button>
                  ))}
                </div>
              </div>

              {/* 控制 3：曲線視覺化圖表 */}
              <div>
                {renderEasingCurve()}
              </div>

            </div>
          </div>

          {/* 第二區塊：Godot GDScript 引擎程式碼面板 */}
          <div className="bg-slate-900 rounded-3xl border border-slate-800 overflow-hidden flex flex-col shadow-2xl">
            
            {/* 程式碼面板頭部 */}
            <div className="bg-slate-900/80 px-6 py-4 border-b border-slate-800 flex flex-col md:flex-row justify-between items-start md:items-center gap-4">
              <div>
                <div className="flex items-center gap-2">
                  <span className="text-xl">🛠️</span>
                  <h3 className="text-sm font-bold text-slate-200">Godot 4.x (GDScript) 引擎程式碼</h3>
                </div>
                <p className="text-xs text-slate-400 mt-0.5">基於現代全新的 <code className="text-cyan-400 font-mono">create_tween()</code> 架構設計，開箱即用</p>
              </div>

              {/* 節點類型切換器 */}
              <div className="flex items-center bg-slate-950 p-1 rounded-lg border border-slate-800">
                <button
                  onClick={() => setNodeType('Node2D')}
                  className={`text-xs px-3 py-1.5 rounded-lg transition-colors ${
                    nodeType === 'Node2D' 
                      ? 'bg-cyan-950 text-cyan-400 font-bold border border-cyan-800/50' 
                      : 'text-slate-400 hover:text-slate-200'
                  }`}
                >
                  👾 Node2D 遊戲物件
                </button>
                <button
                  onClick={() => setNodeType('Control')}
                  className={`text-xs px-3 py-1.5 rounded-lg transition-colors ${
                    nodeType === 'Control' 
                      ? 'bg-purple-950 text-purple-400 font-bold border border-purple-800/50' 
                      : 'text-slate-400 hover:text-slate-200'
                  }`}
                >
                  🖥️ Control UI 物件
                </button>
              </div>
            </div>

            {/* 程式碼呈現容器 */}
            <div className="relative">
              <pre className="bg-slate-950 p-6 overflow-x-auto text-xs md:text-sm font-mono text-slate-300 leading-relaxed max-h-96">
                <code>
                  {activeGodotCode}
                </code>
              </pre>

              {/* 右上角複製按鈕 */}
              <button
                onClick={() => handleCopyCode(activeGodotCode)}
                className="absolute top-4 right-4 px-3 py-1.5 bg-slate-800 hover:bg-slate-700 text-slate-300 font-bold text-xs rounded-lg border border-slate-700 flex items-center gap-1 shadow-md"
              >
                <span>📋</span> 複製程式碼
              </button>
            </div>

            {/* 程式碼底部說明與除錯提示 */}
            <div className="bg-slate-900/80 p-5 border-t border-slate-800 text-xs text-slate-400 flex flex-col gap-2">
              <span className="font-bold text-slate-200">🔍 整合至 Godot 的注意事項：</span>
              <ul className="list-disc list-inside space-y-1 pl-1">
                <li>本段程式碼為您的主要物件腳本方法，您可以將 <code className="text-amber-500">play_ppt_animation()</code> 放進 <code className="text-amber-500">_ready()</code> 或者由按鈕觸發事件內。</li>
                {nodeType === 'Control' ? (
                  <li className="text-purple-400"><b>Control UI 節點重要警告</b>：UI 的旋轉與縮放是以左上角 (0, 0) 為基準點，代碼已為您加上將 <code className="font-mono">pivot_offset = size / 2</code> 置中的解決方案。</li>
                ) : (
                  <li className="text-cyan-400"><b>Node2D 物件提示</b>：為確保縮放與自轉 (`swivel`, `spin`) 完美從中心出發，請確保底下 Sprite2D 等子節點的 <code className="font-mono">centered</code> 屬性勾選為 <code className="font-mono">true</code>。</li>
                )}
                <li>如果使用的 Godot 4 版本較舊，請注意屬性引號中是否符合大寫或拼寫（例如 Godot 的 RGBA 調色通常為其 <code className="font-mono">modulate</code> 屬性）。</li>
              </ul>
            </div>

          </div>

        </section>

      </main>

      {/* 頁尾 */}
      <footer className="border-t border-slate-900 bg-slate-950 px-6 py-8 text-center text-xs text-slate-500">
        <div className="max-w-7xl mx-auto flex flex-col md:flex-row justify-between items-center gap-4">
          <p>© 2026 PowerPoint 簡報動畫對應 Godot 4 轉換工具。祝您遊戲開發與動畫設計順利！</p>
          <div className="flex gap-4">
            <span className="hover:text-slate-300 cursor-pointer">繁體中文版介面</span>
            <span>•</span>
            <span className="hover:text-slate-300 cursor-pointer">Godot Engine 4.x</span>
          </div>
        </div>
      </footer>

    </div>
  );
}