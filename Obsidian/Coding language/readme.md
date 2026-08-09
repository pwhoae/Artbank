## **c\#**

[概述 \- A tour of C\# | Microsoft Learn](https://learn.microsoft.com/zh-cn/dotnet/csharp/tour-of-csharp/overview) 

**5\. 提供 Online 教材**

**C++ 教材：**

* [C++ 官方資源](https://isocpp.org/)  
* [Learn C++](https://www.learncpp.com/)（適合初學者）  
* YouTube 上有大量免費的 C++ 教程（如 The Cherno 的教學系列）。

**C\# 教材：**

* [C\# 官方文件](https://learn.microsoft.com/en-us/dotnet/csharp/)  
* [Unity Learn](https://learn.unity.com/)（Unity \+ C\# 的官方教學資源）  
* YouTube 上也有很多免費的 C\# 和 Unity 教學（如 Brackeys）。
* ## [**【程式學習之路：Day11】C\#程式設計：基礎語法、控制結構**](https://medium.com/sally-thinking/%E7%A8%8B%E5%BC%8F%E5%AD%B8%E7%BF%92%E4%B9%8B%E8%B7%AF-day11-c-%E7%A8%8B%E5%BC%8F%E8%A8%AD%E8%A8%88-%E5%9F%BA%E7%A4%8E%E8%AA%9E%E6%B3%95-fcda097fe363) **學習資源**

### **1\. C\# 學習資源**

* **官方文檔**：[Microsoft C\# 官方文檔](https://learn.microsoft.com/zh-tw/dotnet/csharp/)  
* **線上課程**：Coursera: [C\# Programming for Unity Game Development](https://www.coursera.org/specializations/programming-unity-game-development)  
* **免費資源**：[W3Schools C\# Tutorial](https://www.w3schools.com/cs/)

### **2\. Unity 學習資源**

* **官方資源**：  
  * [Unity Learn](https://learn.unity.com/)（免費課程與專案）  
  * [Unity Manual](https://docs.unity3d.com/Manual/index.html)（官方文檔）  
* **線上課程**：Coursera: [Game Design and Development with Unity 2020](https://www.coursera.org/specializations/game-development)  
* **免費資源**：  
  * YouTube: [Brackeys](https://www.youtube.com/c/Brackeys)（高品質 Unity 教學）  
  * YouTube: [Code Monkey](https://www.youtube.com/c/CodeMonkeyUnity)（實用技巧與專案教學）

**學習路線**

### **第 1-4 週：C\# 基礎**

* **目標**：掌握 C\# 基礎語法與程式設計概念。  
* **學習內容**：  
  * 變數、資料型別、運算子  
  * 條件語句（if/else、switch）  
  * 迴圈（for、while）  
  * 函數與參數  
  * 類別與物件導向基礎  
* **練習**：  
  * 完成 Console 應用程式（如計算器、猜數字遊戲）。

### **第 5-8 週：Unity 基礎**

* **目標**：熟悉 Unity 介面與基本功能。  
* **學習內容**：  
  * Unity 介面與場景管理  
  * 物體控制（Transform、Rigidbody）  
  * 物理引擎與碰撞檢測  
  * 簡單動畫與粒子效果  
* **練習**：  
  * 完成一個簡單的 2D 遊戲（如平台跳躍遊戲或射擊遊戲）。

### **第 9-12 週：進階 Unity 功能**

* **目標**：掌握 Unity 的進階功能與跨平台開發。  
* **學習內容**：  
  * UI 設計（Canvas、按鈕、文字）  
  * 音效與音樂整合  
  * 動畫系統（Animator、Animation）  
  * 跨平台發佈（PC、手機）  
* **練習**：  
  * 完成一個小型專案（如 2D 橫向卷軸遊戲或 3D 迷宮遊戲）。

### **第 13 週起：專案與求職準備**

* **目標**：完成作品集並準備求職。  
* **學習內容**：  
  * 遊戲性能優化與除錯  
  * 版本控制（Git/GitHub）  
  * 遊戲設計與平衡調整  
* **練習**：  
  * 製作一個完整的遊戲作品，作為作品集。  
  * 投遞遊戲開發相關職位（如 Unity 開發工程師、遊戲程式設計師）。

---

## **學習資源與路線對應表**

| 階段 | 學習內容 | 學習資源 |
| ----- | ----- | ----- |
| **第 1-4 週** | C\# 基礎 | [Microsoft C\# 官方文檔](https://learn.microsoft.com/zh-tw/dotnet/csharp/) |
| **第 5-8 週** | Unity 基礎 | [Unity Learn](https://learn.unity.com/) |
| **第 9-12 週** | 進階 Unity 功能 | [Brackeys YouTube](https://www.youtube.com/c/Brackeys) |
| **第 13 週起** | 專案與求職準備 | [Unity Manual](https://docs.unity3d.com/Manual/index.html) |

---
最好的C++学习教程(上篇)——The Cherno CppSeries: https://zhuanlan.zhihu.com/p/553387258 <br>
###
18. Class（類別）
class 預設為 private/struct預設為 public
###
檔案外 static
限制所有物件共用同一份資料
Visibility
三種權限：private只有自己/protected自己 + 子類/public全部可存取
###
Constructor（建構子）建立物件時自動呼叫Entity(int x,int y):x(x),y(y){}
Destructor（解構子）物件銷毀時呼叫 ~Entity(){}
Inheritance（繼承）class Player : public Entity
###
const int* p:不能改內容+可改指向
int* const p:可改內容+不能改指向
const int* const p:兩個都不能改

# **GDScript → C++ 對照表**

| GDScript | C++ | 說明 |
| ----- | ----- | ----- |
| var | auto / 型別 | C++ 通常需要型別 |
| const | const | 常數 |
| enum | enum class | 建議使用 enum class |
| class\_name | class | 類別 |
| extends | : public | 繼承 |
| func | function | 函式 |
| static func | static function | 靜態函式 |
| self | this | 自己物件 |
| null | nullptr | 空指標 |
| true/false | true/false | 相同 |
| and/or/not | && / || / \! | 邏輯運算 |
| \== | \== | 相同 |
| := | auto | 自動推導 |
| @export | public member | Godot 專用 |
| @onready | 建構後初始化 | Godot 專用 |

---

# **變數**
var speed \= 3.5>float speed \= 3.5f;auto hp \= 100;

帶參數
int Add(int a,int b){return a+b;}

---

# **類別**

GDScript

class Player:

    var hp=100

↓

class Player

{

public:

    int hp \= 100;

};

---

# **建構子**

Godot

func \_init():

    hp \= 100

↓

Player()

{

    hp \= 100;

}

推薦

Player()

: hp(100)

{

}

---

# **this**

GDScript

self.hp \= 50

↓

this-\>hp \= 50;

通常可省略

hp \= 50;

---

# **Static**

GDScript

static var score \= 0

↓

class Game

{

public:

    static int score;

};

int Game::score \= 0;

---

# **繼承**

Godot

extends CharacterBody2D

↓

class Player : public CharacterBody2D

{

};

---

# **Override**

Godot

func \_process(delta):

↓

void Update(float delta) override

{

}

---

# **if**

Godot

if hp \<= 0:

↓

if (hp \<= 0\)

{

}

---

# **match**

Godot

match state:

↓

switch(state)

{

case Idle:

    break;

case Run:

    break;

}

---

# **for**

Godot

for i in range(5):

↓

for(int i=0;i\<5;i++)

{

}

---

Godot

for enemy in enemies:

↓

for(auto& enemy : enemies)

{

}

---

# **while**

Godot

while hp\>0:

↓

while(hp\>0)

{

}

---

# **Array**

Godot

var arr=\[\]

↓

std::vector\<int\> arr;

新增

arr.append(5)

↓

arr.push\_back(5);

---

取得大小

arr.size()

↓

arr.size()

---

# **Dictionary**

Godot

var dict={}

↓

std::unordered\_map\<std::string,int\> dict;

---

# **String**

Godot

var name="Tom"

↓

std::string name="Tom";

串接

name \+= "cat"

↓

name \+= "cat";

---

# **Vector2**

Godot

Vector2(10,20)

↓

一般 C++

struct Vector2

{

    float x;

    float y;

};

或

glm::vec2

---

# **物件建立**

Godot

var player \= Player.new()

↓

Stack

Player player;

Heap

Player\* player \= new Player();

Modern C++

auto player \= std::make\_unique\<Player\>();

---

# **Null**

Godot

player \= null

↓

player \= nullptr;

---

# **印出**

Godot

print(hp)

↓

std::cout \<\< hp \<\< std::endl;

---

# **Lambda**

Godot

button.pressed.connect(func():

    print("Hi")

)

↓

button.onClick(\[\]()

{

    std::cout\<\<"Hi";

});

---

# **Signal**

Godot

signal died

↓

C++

通常使用

* callback  
* function pointer  
* std::function  
* event system

std::function\<void()\> OnDied;

---

# **Memory**

Godot

queue\_free()

↓

C++

delete ptr;

Modern C++

std::unique\_ptr

（推薦，避免手動 `delete`）

---

# **Cherno 常見對照**

| Godot | Cherno C++ |
| ----- | ----- |
| extends | public inheritance |
| var | int / float / auto |
| static var | static member |
| \_init() | Constructor |
| queue\_free() | Destructor |
| Node | Class |
| Resource | Object |
| enum | enum class |
| Array | std::vector |
| Dictionary | std::unordered\_map |
| PackedStringArray | std::vectorstd::string |
| String | std::string |
| null | nullptr |
| self | this |
| signal | std::function / Callback |
| print() | std::cout |
| preload() | `#include`（概念不同） |
| load() | 檔案讀取／資源管理 |
| @export | public 成員（Godot 專屬） |
| @onready | 建構後初始化（Godot 專屬） |
<hr>
boot機:台機>"delete"
Linux:用tab 預測
