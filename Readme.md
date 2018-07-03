# 이영찬

## Introduction

2018년 기준 고등학교 3학년인 고등학생 개발자입니다. 주력 언어로 C#을, 외에는 python3에 익숙하며 함수형 프로그래밍에 관심이 많은 힙스터 지망생입니다. 재미주도개발을 지향합니다.

2015년 유니티 게임을 디스어셈블리 하는 것으로 프로그래밍을 시작했으며 그 뒤로는 주로 WinForm을 사용해 데스크탑 어플리케이션을 개발하고 모노게임을 사용하여 게임 비스무리한 것을 만들었습니다.

프로그래밍이 제일 재밌으나 도메인을 찾지 못해 방황하고 있어서 꾸준히 공부하고 개발하고 있습니다.

어릴때부터 수학에도 관심이 많아 ToT 수상 경력이 있으며 KMO 준비를 해왔었습니다.

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


## Personal Projects

> [모든 프로젝트들은 여기서](https://github.com/phillyai/all-my-projects)

### `2016-08-03` [USBLock](https://github.com/phillyai/USBLock)

![usb2](/imgs/usb2.png)

USB을 윈도우의 암호 대신 사용하는 화면 잠금 프로그램. C#으로 개발.

### `2017-03-05` [bumble](https://github.com/phillyai/bumble)

![bumble](/imgs/bumble.png)

컴파일러, 언어 디자인에 관심이 많아져서 만들어본 인터프리터 언어. 하지만 부족한 PL 지식과 맘에 들지 않는 언어 디자인으로 여러번 고민을 하다가 좀 더 공부를 한 뒤에 다시 만져보자고 다짐한 프로젝트. python3으로 개발.


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

### `2018-06-04 ~ ` [Gridly](https://github.com/phillyai/Gridly)

![gridly](/imgs/gridly.png)

테스트 케이스에 맞게 회로를 설계하는 퍼즐 게임. C#과 모노게임으로 개발.

## Team Projects 

### `2017-05-17 ~ 2017-09-14` [GCS](https://github.com/Big-BlueBerry/GCS)

![gcs](/imgs/gcs.png)

반응형 작도 시뮬레이션 프로그램. [수학을 좋아하는 친구](https://github.com/bigblueberry)와 함께 개발.