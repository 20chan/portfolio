# 이영찬

## Introduction

2018년 기준 고등학교 3학년인 고등학생 개발자입니다. 주력 언어로 C#을, 외에는 python3에 익숙하며 함수형 프로그래밍에 관심이 많은 힙스터 지망생입니다. 재미주도개발을 지향합니다.

2015년 유니티 게임을 디스어셈블리 하는 것으로 프로그래밍을 시작했으며 그 뒤로는 주로 WinForm을 사용해 데스크탑 어플리케이션을 개발하고 모노게임을 사용하여 게임 비스무리한 것을 만들었습니다. 최근에는 러스트를 사용하고 있습니다.

어릴때부터 수학에도 관심이 많아 ToT 수상 경력이 있으며 KMO 공부를 했었습니다.

현재 게임회사 5민랩에 취업했습니다.

## Contacts

- 이메일 : [sonagi.philly@gmail.com](mailto:sonagi.philly@gmail.com)
- LinkedIn: [이영찬](https://www.linkedin.com/in/%EC%98%81%EC%B0%AC-%EC%9D%B4-3727b6121/)
- Github : [phillyai](https://github.com/phillyai)
- StackOverFlow : [phillyai](https://stackoverflow.com/users/5906697/phillyai)
- 블로그 : [phillyai](http://phillyai.github.io/)

## Blog posts

- [The Fun Of Reinvention](https://phillyai.github.io/2017-07-02-The-Fun-Of-Reinvention/)
    - python3.6 에서 메타프로그래밍을 활용하여 흑마법을 부리는 포스트

- [C#의 튜플은 어디서부턴가 잘못되었다](https://phillyai.github.io/2017-08-22-Something-Wrong-In-Csharp-Tuple/)
    - C# 컴파일러의 오류를 찾기 위한 여정

- [평범하지 않게 소수 찾기](https://phillyai.github.io/2018-05-02-Find-Primes/)
    - Code obfuscating / Code Golfing 등의 흑마법을 사랑합니다

## Interested in...

### 컴파일러 / lang design / CS

프로그래밍 언어를 디자인하고 컴파일러를 구현하고 언어 문화를 만들어내는 대에 환상이 있습니다. 이를 현실로 만들기 위해 많은 시도를 했지만 근본이 없어서 중간에 포기를 했었고 이제는 제대로 준비를 해서 [zoa-lang](https://github.com/zoa-lang/zoa) 이라는 프로젝트를 준비하고 있습니다.

CS 공부를 개인적으로 했습니다. 온라인 컴파일러 강의를 전부 보았고 [컴파일러의 이해](http://www.hanbit.co.kr/store/books/look.php?p_code=B4565472056)를 완독했습니다.
온라인 PL 강의를 보았고 [SICP](https://www.aladin.co.kr/shop/wproduct.aspx?ItemId=997205)를 4.4 챕터까지 공부했습니다.
PS 공부는 [백준](https://www.acmicpc.net/user/phillyai)으로 하고 있고 앞으로 더 열심히 할 예정입니다.

### Disassemly / Reversing

처음 프로그래밍을 시작한 계기도 디스어셈블링이었던 것도 있고 저수준에서의 동작 원리에도 관심이 많아 다양한 닷넷 디스어셈블리 경험이 있고, 런타임에서 JIT을 후킹해 원하는 대로 동작을 바꾸는 [CodeInjectionSharp](https://github.com/phillyai/CodeInjectionSharp) 이라는 공부용 프로젝트도 했었습니다. 

### Low Level / Kernel

로우레벨에 대한 환상이 있고 윈도우 디바이스 드라이버 개발에 관심이 있습니다. 하제소프트의 유투브 강의를 다 봤으며 책도 사서 공부하다 지금은 회사일과 다른 프로젝트로 보류중이지만 기회가 된다면 다시 전념하고 싶습니다.

### languages / tools

C#에 깊고 오랜 경험이 있는 닷넷 얼리어댑터입니다. WinForm, Monogame을 오랫동안 써왔습니다.  python3을 사용하여 간단한 프로그램을 여러개 개발했고 스크립트 언어 혹은 계산기로 애용합니다. Rust와 프레임워크 futures, tokio와 웹서버 프레임워크 등을  공부하고 있습니다. C, JS, Haskell, Common lisp, Elixir, WPF에 대한 얕은 경험이 있고 사용할 수 있습니다.

C#으로 개발할 때는 Visual Studio를 사용했었고 많은 단축키와 디버깅 기법에 익숙합니다. Visual Studio Code를 출시 당시부터 써왔으며 GitLens 플러그인에 기여를 했습니다.

## Personal Projects

> [모든 프로젝트들은 여기서](https://github.com/phillyai/all-my-projects)

### `2016-08-03` [USBLock](https://github.com/phillyai/USBLock)

![usb2](/imgs/usb2.png)

USB을 윈도우의 암호 대신 사용하는 화면 잠금 프로그램. C#으로 개발.

### `2017-09-21 ~ 2017-10-15` [AssemblySharp](https://github.com/phillyai/AssemblySharp)

```csharp
int a = 200;
int result = (int)X86Assembly.ExecuteScript(
    ASM.MOV, REG.EAX, 100,
    ASM.ADD, REG.EAX, a,
    ASM.RET);
Console.WriteLine(result); // 300

int i = 100;
result = X86Assembly.ExecuteScript(
    ASM.mov, REG.EAX, 0,
    ASM.mov, REG.ECX, i,
    new Label("myloop"),
    ASM.add, REG.EAX, REG.ECX,
    ASM.loop, "myloop",
    ASM.ret));
Console.WriteLine(result); // 5050
```

C/C++ 의 `__asm__` 혹은 `__asm` 키워드를 C#에서 비슷하게 구현하여 어셈블리 코드를 Just-In-Time으로 실행하게 해주는 라이브러리. C#으로 개발.

### `2018-02-01 ~ 2018-04-27` [shrew](https://github.com/phillyai/shrew)

```haskell
if true trueval _ = trueval
if false _ falseval = falseval
main = print (if (3 > 1) "Bigger" "Smaller")
```

TDD를 적극 활용해 개발한 실험적 인터프리터 언어

### `2018-06-04 ~ ` [Gridly](https://github.com/phillyai/Gridly)

![gridly](/imgs/gridly.png)

테스트 케이스에 맞게 회로를 설계하는 퍼즐 게임. C#과 모노게임으로 개발.

## Team Projects 

### `2017-05-17 ~ 2017-09-14` [GCS](https://github.com/Big-BlueBerry/GCS)

![gcs](/imgs/gcs.png)

반응형 작도 시뮬레이션 프로그램. [수학을 좋아하는 친구](https://github.com/bigblueberry)와 함께 개발.
