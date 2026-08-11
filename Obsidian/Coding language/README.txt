# **🎮 遊戲開發與程式設計學習指南 (Game Dev & Programming Roadmap)**

本資源庫收錄了 **C\# / Unity**、**Godot / GDScript** 以及 **C++** 的學習路線、核心資源與語法對照表，旨在建立系統化的遊戲開發知識體系。

## **🚀 C\# & Unity 12 週學習計畫**

### **學習路線圖 (Roadmap)**

#### **階段 1：基礎語法與環境搭建（第 1–3 週）**

* **目標**：熟悉 C\# 基本語法、資料型態、流程控制，並學會使用 Visual Studio / VS Code。  
* **每日任務**：每日學習 1–2 小時，手寫程式碼（切勿直接複製貼上），完成 BMI 計算機、簡易計算機、猜數字等 Console 應用。  
* **推薦資源**：  
  * [Codecademy C\# 課程](https://www.codecademy.com/learn/learn-c-sharp)（英文，適合零基礎）  
  * [Microsoft Learn C\# 基礎](https://learn.microsoft.com/zh-tw/dotnet/csharp/)（官方中文/英文教學）  
  * [FreeCodeCamp C\# 初學者教學](https://youtu.be/GhQdlIFylQ8)（4 小時影片）  
  * [The C\# Player's Guide 影片教學](https://youtube.com/playlist?list=PLhPyEFL5u-i0Y1i5AifW44Y5R6lRPRk3d)  
  * 書籍：《C\# 入門經典》（第 10 版）

#### **階段 2：物件導向與進階特性（第 4–6 週）**

* **目標**：掌握類別（Class）、繼承、多型、介面（Interface）、集合（List、Dictionary）與例外處理（try-catch）。  
* **關鍵練習**：  
  * 理解 public / private / protected 存取修飾符。  
  * 使用 List\<T\> 儲存多個物件並實作排序。  
  * 實作「學生管理系統」（CRUD）與「撲克牌遊戲」。  
* **推薦資源**：  
  * [Udemy: C\# Intermediate 課程](https://www.udemy.com/)（建議選擇評分 4.5+ 課程）  
  * [C\# Station Tutorial](https://csharp-station.com/)（免費深入 OOP）

#### **階段 3：實戰專案與 Unity 入門（第 7–10 週）**

* **目標**：結合 Unity 引擎開發 2D/3D 遊戲，完成 1–2 個完整專案並上架。  
* **實戰專案**：  
  * **2D**：打磚塊、平台跳躍遊戲（可參考 [Create with Code](https://learn.unity.com/course/create-with-code)）。  
  * **3D**：迷宮逃脫、簡易賽車（學習物理引擎與碰撞檢測）。  
* **推薦資源**：  
  * [Unity Learn 免費官方課程](https://learn.unity.com/)  
  * [Brackeys 頻道](https://www.youtube.com/c/Brackeys)（經典遊戲開發教學）  
  * [Code Monkey 頻道](https://www.youtube.com/c/CodeMonkeyUnity)（實用技巧與專案）

#### **階段 4：整合複習與求職準備（第 11–12 週\+）**

* **目標**：整理作品集、學習版本控制（Git）、進行效能優化與求職準備。  
* **核心任務**：  
  1. **GitHub 作品集**：上傳練習專案，撰寫清晰的 README 說明亮點。  
  2. **版本控制**：透過 [GitHub Skills Lab](https://skills.github.com/) 練習 Git。  
  3. **進階擴充**：  
     * [LeetCode C\# 題庫](https://leetcode.com/)（演算法練習）  
     * [ASP.NET Core 教學](https://docs.microsoft.com/zh-tw/aspnet/core/)（Web API）  
     * [Unity 性能優化指南](https://learn.unity.com/tutorial/performance-optimization)

### **每日學習作息規劃**

*(每週 5–6 天，每日 2–3 小時)*

| 時間 | 內容 |
| :---- | :---- |
| **00 \- 30 分鐘** | 複習昨日內容，Debug 未解決的問題 |
| **30 \- 90 分鐘** | 學習新章節，親自撰寫程式碼 |
| **90 \- 120 分鐘** | 實作小專題或練習題 |
| **週末** | 整合本週知識，開發小型專案 |

### **Unity C\# 20 個實用程式碼片段**

// 1\. 修改物件位置  
transform.position \= new Vector3(0, 1, 0);

// 2\. 於執行階段實例化（生成）遊戲物件  
Instantiate(gameObject, transform.position, Quaternion.identity);

// 3\. 銷毀遊戲物件  
Destroy(gameObject);

// 4\. 取得物件上特定類型的元件  
AudioSource audio \= GetComponent\<AudioSource\>();

// 5\. 檢查指定按鍵是否剛按下  
if (Input.GetKeyDown(KeyCode.Space)) { }

// 6\. 產生範圍內的隨機數  
float randomVal \= Random.Range(1.0f, 10.0f);

// 7\. 自上一幀以來經過的時間（用於平滑移動）  
transform.Translate(Vector3.forward \* speed \* Time.deltaTime);

// 8\. 將數值限制在 min 與 max 之間  
float clampedValue \= Mathf.Clamp(value, 0f, 100f);

// 9\. 兩個 3D 向量之間的線性插值  
Vector3 currentPos \= Vector3.Lerp(startPos, endPos, t);

// 10\. 建立歐拉角旋轉的四元數  
Quaternion rotation \= Quaternion.Euler(0, 90, 0);

// 11\. 存取與修改剛體速度  
rigidbody.velocity \= new Vector3(0, 5, 0);

// 12\. 設定碰撞器觸發屬性  
collider.isTrigger \= true;

// 13\. 播放一次性音效  
audioSource.PlayOneShot(clip);

// 14\. 載入場景 (注意：新版建議使用 SceneManager.LoadScene)  
Application.LoadLevel("Level1"); 

// 15\. 取得當前螢幕尺寸  
int width \= Screen.width;  
int height \= Screen.height;

// 16\. GUILayout 顯示文字標籤  
GUILayout.Label("Score: " \+ score);

// 17\. 使用 PlayerPrefs 儲存本地數據  
PlayerPrefs.SetInt("HighScore", 100);

// 18\. 進行物理射線投射  
if (Physics.Raycast(origin, direction, out RaycastHit hit)) { }

// 19\. 向控制台輸出 Log 訊息  
Debug.Log("Game Started\!");

// 20\. 啟動協程 (Coroutine)  
Coroutine coroutine \= StartCoroutine(MyCoroutineMethod());

## **🛠️ GDScript ↔ C++ 語法對照與 C++ 筆記**

### **GDScript vs C++ 關鍵字與語法對照**

| 功能 / 概念 | GDScript | C++ | 說明 |
| :---- | :---- | :---- | :---- |
| **變數宣告** | var speed \= 3.5 | float speed \= 3.5f; / auto hp \= 100; | C++ 需指定型別或使用 auto 推導 |
| **常數** | const | const / constexpr | \- |
| **枚舉** | enum | enum class | C++ 推薦強型別 enum class |
| **類別與繼承** | class\_name Player extends CharacterBody2D | class Player : public CharacterBody2D | C++ 預設繼承權限需留意 |
| **建構子** | func \_init(): | Player() : hp(100) {} | C++ 建議使用成員初值列 |
| **解構子 / 清除** | queue\_free() | \~Player() / delete ptr; | Modern C++ 建議用 std::unique\_ptr |
| **當前物件** | self | this (指標：this-\>hp) | \- |
| **空值** | null | nullptr | \- |
| **邏輯運算** | and, or, not | &&, ||, \! | \- |
| **複寫函式** | func \_process(delta): | void Update(float delta) override | \- |
| **條件 / 開關** | if / match | if / switch | \- |
| **陣列** | var arr \= \[\] | std::vector\<int\> arr; | 增添元素：push\_back() |
| **字典** | var dict \= {} | std::unordered\_map\<std::string, int\> | \- |
| **字串** | var name \= "Tom" | std::string name \= "Tom"; | \- |
| **物件建立** | var p \= Player.new() | auto p \= std::make\_unique\<Player\>(); | 堆疊（Heap）分配與智慧指標 |
| **控制台輸出** | print(hp) | std::cout \<\< hp \<\< std::endl; | \- |
| **訊號 / 事件** | signal died | std::function\<void()\> OnDied; | 可用 Callback 或 Event 系統 |

### **Cherno C++ 核心概念摘要**

* **Class vs Struct**：  
  * class 成員預設為 private。  
  * struct 成員預設為 public。  
* **Static 關鍵字**：  
  * 在檔案層級時：限制變數/函式的作用域僅限於該編譯單元 (Translation Unit)。  
  * 在 Class 內部時：代表所有物件共享同一份資料/函式。  
* **存取權限 (Visibility)**：  
  * private：僅該 Class 內部可存取。  
  * protected：該 Class 及衍生衍生子類別（Subclass）可存取。  
  * public：外部皆可存取。  
* **Const 指標寫法比較**：  
  * const int\* p：指標指向的**內容不能修改**，但指標本身可以指向其他位址。  
  * int\* const p：指標指向的**內容可以修改**，但指標本身**不可修改**。  
  * const int\* const p：內容與指標**皆不可修改**。  
* **參考資料**：[Cherno C++ 教學指南與筆記（知乎）](https://zhuanlan.zhihu.com/p/553387258)

## **🎯 Godot & 遊戲設計與數學資源**

### **Godot 學習資源**

* [Godot 官方文檔](https://docs.godotengine.org/)  
* [HeartBeast \- Godot YouTube 教程](https://www.youtube.com/@HeartBeast)  
* [KidsCanCode 的 Godot 教程](https://www.youtube.com/@KidsCanCode)

### **遊戲設計與數學**

* **書籍推薦**：  
  * 《Game Programming Patterns》（遊戲程式設計模式）  
  * 《3D Math Primer for Graphics and Game Development》（3D 數學基礎）  
* **免費課程**：[Khan Academy \- Linear Algebra](https://www.khanacademy.org/math/linear-algebra)（線性代數基礎）

### **發布與展示平台**

* [Itch.io](https://itch.io/) \- 免費上架與展示你的獨立遊戲。  
* [GitHub](https://github.com/) \- 代碼托管與版本控制。  
* https://ithelp.ithome.com.tw/m/articles/10213172

## **💻 開發工具與系統小技巧**

* **BIOS Boot 設置**：組裝台式機開機時連續按 Delete 鍵進入 BIOS 設置。  
* **Linux 終端機**：使用 Tab 鍵可自動補齊路徑與命令。  
* **Unity & IDE 搭配**：推薦使用 Unity Hub 安裝版本，並搭配 Visual Studio 或 Rider 進行程式碼編寫。
