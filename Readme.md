# 이영찬

## Introduction

2019년 5월 기준 [게임회사 5민랩](https://5minlab.com)에 다니고 있는 프로그래머입니다. 로직컬한 생각을 잘해 빠르게 배우고 응용해내는 것을 장점이라 생각합니다.

그때그때 관심있는 다양한 프로젝트들을 해보고 깃헙에 올립니다. 장래희망은 오픈소스 아이돌입니다.

## Contacts

- 이메일 : [2@0chan.dev](mailto:2@0chan.dev)
- LinkedIn: [이영찬](https://www.linkedin.com/in/%EC%98%81%EC%B0%AC-%EC%9D%B4-3727b6121/)
- **Github** : [phillyai](https://github.com/phillyai)
- StackOverFlow : [phillyai](https://stackoverflow.com/users/5906697/phillyai)
- **블로그** : [phillyai](https://blog.0chan.dev/)

## Interested in

### langs

- `C#`(especially in .net core)을 오랫동안 써왔으며 가장 익숙하며 다양한 디버깅, 최적화 및 디스어셈블링 기법을 사용할 수 있습니다.
- `python3`를 스크립트 도구로 오랫동안 써왔습니다.
- `c`, `rust`, `javascript` 를 어느정도 사용해보았습니다.
- `haskell`을 핥아봤습니다.
- 외에 `io`, `kotlin`, `ruby`, `racket`, `crystal` 에 관심이 있습니다.
- esolang 관련
  - 아희 ([1](https://github.com/phillyai/aheuIDA) [2](https://github.com/phillyai/Aheuiplusplus))
  - 혀엉.. ([1](https://github.com/phillyai/awesome-hyeong) [2](https://github.com/phillyai/hyeong-py))
  - marbelous ([1](https://github.com/phillyai/marbelous-docs-korean) [2](https://gist.github.com/phillyai/2dc30936f71231a029f07eb3a981c052)

### compiler

많은 컴파일러 프로젝트 ([1](https://github.com/zoa-lang/zoa) [2](https://github.com/phillyai/slek) [3](https://github.com/phillyai/aheuIDA) [4](https://github.com/phillyai/shrew) [5](https://github.com/phillyai/claculator) [6](https://github.com/phillyai/bumble) [7](https://github.com/phillyai/Aheuiplusplus) [8](https://github.com/phillyai/Calculator) [9](https://github.com/phillyai/Raptor) 를 시도했고 렉서와 파싱 알고리즘 및 오토마타 공부를 하였으며 LLVM과 코드 최적화에 관심이 많습니다.

비쥬얼 프로그래밍 프로젝트 [Linking](https://github.com/phillyai/Linking-VPL)을 개발했습니다.

roslyn 컴파일러에 기여를 했습니다. ([1](https://github.com/dotnet/roslyn/issues/23833) [2](https://github.com/dotnet/roslyn/issues/21656) [2-1](https://blog.0chan.dev/2017-08-22-Something-Wrong-In-Csharp-Tuple/))

### game

모노게임(XNA)에 3년 경험이 있습니다. ([1](https://github.com/phillyai/Gridly) [2](https://github.com/Big-BlueBerry/GCS) [3](https://github.com/phillyai/NeuralNetworkSimulator) [4](https://github.com/phillyai/all-my-projects#2015-06-11-solarsystemsimulator))

유니티(>=2018)를 익숙하게 다룰 수 있고 언리얼엔진의 블루프린트를 사용한 AR게임 개발 경험이 있습니다.

### crypto

국가암호공모전 암호풀이에서 입상하였습니다. ([2018 writeup](https://gist.github.com/phillyai/d15b147012b9f0fe4a538b407e788484)) 외에 다양한 ctf에서 암호풀이를 하였습니다. ([1](https://github.com/phillyai/xmas-ctf-2018-writeup))

### NLP

[간단한 챗봇](https://github.com/Big-BlueBerry/redesigned-chatbot)을 구현해보았고 [문맥 처리 라이브러리](https://github.com/phillyai/Context)를 구상했습니다.

### hacking

- .net 단순 디스어셈블리부터 난독화 및 런타임 IL코드 추출 등에 익숙합니다.
- 일반 바이너리 파일 리버싱은 털끝만큼의 경험이 있습니다.
- 기본적인 웹해킹 지식이 있습니다. 대충 ctf 앞 세문제정도 풀 수 있을 것같은 자신감이 듭니다.

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
