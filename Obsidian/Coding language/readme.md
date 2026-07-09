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
