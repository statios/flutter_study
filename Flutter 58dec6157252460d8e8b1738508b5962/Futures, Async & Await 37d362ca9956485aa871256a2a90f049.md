# Futures, Async & Await

## Topic

Future, Async & Await에 대해서 알아봐요.

---

## Notes

아래의 코드를 작성하고 실행하면 어떤 결과가 나타날까요?

```dart
void main() {
  performTasks();
}

void performTasks() async {
  task1();
  task2();
  task3();
}

void task1() {
  String result = 'task 1 data';
  print('Task 1 complete');
}

void task2() {
  String result = 'task 2 data';
  print('Task 2 complete');
}

void task3() {
  String result = 'task 3 data';
  print('Task 3 complete');
}
```

아래와 같은 결과를 얻었어요.

![Futures,%20Async%20&%20Await%2037d362ca9956485aa871256a2a90f049/Untitled.png](Futures,%20Async%20&%20Await%2037d362ca9956485aa871256a2a90f049/Untitled.png)

세가지 task를 호출하였고 호출한 **순서대로** 처리된 것을 확인할 수 있어요.

이번에는 task2에서 시간이 오래걸리는 작업을 정의해줄 거에요.

예를 들면 이미지를 다운로드 한다던가 하는 작업이에요.

상황을 재연하기 위해서 sleep 메서드를 호출하여 3초동안 정지하는 동작을 추가해볼께요.

```dart
void task2() {
  Duration threeSeconds = Duration(seconds: 3);

  sleep(threeSeconds);

  String result = 'task 2 data';
  print('Task 2 complete');
}
```

실행 결과는?

![Futures,%20Async%20&%20Await%2037d362ca9956485aa871256a2a90f049/2021-02-06_11-39-47.2021-02-06_11_40_20.gif](Futures,%20Async%20&%20Await%2037d362ca9956485aa871256a2a90f049/2021-02-06_11-39-47.2021-02-06_11_40_20.gif)

task1이 바로 수행되고, task2가 수행되는데 3초동안 sleep을 타고 끝나자마자 바로 task3이 수행되었어요.

그렇다면 이렇게 오래걸리는 작업이 중간에 있더라도 그 작업이 다 끝날때까지 기다리지 않고,

다음 작업을 시작하려면 어떻게 해야할까요?

이때 사용하는 것이 바로 asynchronus method 랍니다. — Future

task2 메서드를 수정하고, 실행해보겠습니다.

```dart
void task2() {
  print('Task 2 start');
  Duration threeSeconds = Duration(seconds: 3);
  Future.delayed(threeSeconds, () {
    String result = 'task 2 data';
    print('Task 2 complete');
  });
}
```

![Futures,%20Async%20&%20Await%2037d362ca9956485aa871256a2a90f049/2021-02-06_12-01-54.2021-02-06_12_02_20.gif](Futures,%20Async%20&%20Await%2037d362ca9956485aa871256a2a90f049/2021-02-06_12-01-54.2021-02-06_12_02_20.gif)

그러면 이번에는 오래걸리는 작업을 task2에서 수행 나온 result를,

task3에서 사용해보는 것을 만들어 볼께요.

먼저 task3를 String 파라미터를 받는 메서드로 변경해줄께요.

```dart
void task3(String task2Result) {
  print('Task 3 start');
  String result = 'task 3 data';
  print('Task 3 complete with $task2Result');
}
```

다음으로 task2 메서드를 수정해줍니다.

```dart
Future task2() async {
  print('Task 2 start');
  Duration threeSeconds = Duration(seconds: 3);
  String result;
  await Future.delayed(threeSeconds, () {
    result = 'task 2 data';
    print('Task 2 complete');
  });
  return result;
}
```

1. Future를 리턴하는 메서드로 바꾸었구요. 

    Future는 미래에 존재하는 값입니다.  task2가 complete되기 전에는 아무것도 없어요.

    다만 task2가 complete되었을 때 실제 값이 들어가는 거에요.

2. task2() 뒤에 async 마크를, Future.delayed 앞에 await 마크를 추가했어요.

    task2()가 result를 return 하기전에,

    Future.delayed 메서드가 완료되기를 기다려야 한다는 표시에요.

다음으로 performTasks() 메서드를 수정해줄께요.

```dart
void performTasks() async {
  task1();
  String task2Result = await task2();
  task3(task2Result);
}
```

마찬가지로 performTasks() 뒤에 async 마크를,

task2() 앞에 await 마크를 추가했어요.

performTasks()메서드는 task2()가 완료되기를 기다렸다가,

task3를 실행한다는 표시에요.

![Futures,%20Async%20&%20Await%2037d362ca9956485aa871256a2a90f049/2021-02-06_12-31-33.2021-02-06_12_32_01.gif](Futures,%20Async%20&%20Await%2037d362ca9956485aa871256a2a90f049/2021-02-06_12-31-33.2021-02-06_12_32_01.gif)

Future가 무엇일까요?

스타벅스에서 음료를 주문하면 주는 영수증을 생각해봅시다.

영수증에는 주문 번호가 적혀 있고,

음료가 완성되어 주문 번호를 부를때까지, 

오직 기다리기만 하는것이 아니라,

스마트폰을 하는 등 다른 행동을 할 수 있어요.

그리고 음료가 완성되어 주문 번호가 불려 지면 음료를 받으면 되죠.

dart의 Future도 똑같아요.

지금 당장은 존재하지 않지만 작업이 완료되었을 때 실제 값을 얻게되는 것이죠.

이때 Future 뒤에 괄호안에 실제 얻게 되는 값의 타입을 지정해줄 수도 있어요.

```dart
Future<String> task2() async {
	//...
}
```

---

## Summary

Future — 지금은 없더라도 나중에 실제 값을 받을 수 있는 타입
Async, Await — 작업을 바로 진행하는 것이아니라 필요한 작업이 완료될 때까지 기다리겠다는 표시