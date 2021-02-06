# Hot Reload and Hot Restart

## Topic

Hot Reload와 Hot Restart가 무엇이고 어떻게 사용하는지 알아봐요. 
프로젝트 규모가 거대한 경우에도 올바르게 작동할 수 있을지 알아봐요.

---

## **Hot Reload**

이미 앱을 실행 중인 시뮬레이터나 디바이스에서 소스 코드 변화를 거의 동시에  반영해요. 예를 들면 backgroundColor를 소스 코드 상에서 변경하면 프로젝트를 새로 run하지 않더라도 hot reload가 작동하면서 바로 반영되는 거에요.

Hot Reload를 사용하기 위해서는 위젯이 stateless 또는 stateful 위젯 이어야 해요. 아래와 같은 형태로 작성하면 됩니다.

```dart
class SomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
```

이렇게 하면 hot reload가 될 때 build 메서드만 새롭게 호출되는 거에요. 모든 코드가 새로 run 되는 것이 아니라요.

Hot Reload가 작동하는 trigger는 수동으로 hot reload를 동작시켜 주거나 프로젝트가 저장될 때에요.

![Hot%20Reload%20and%20Hot%20Restart%201882e61348474fea8fc06c1f3ba81f95/Untitled.png](Hot%20Reload%20and%20Hot%20Restart%201882e61348474fea8fc06c1f3ba81f95/Untitled.png)

수동으로 Hot Reload 작동시키는 버튼

## **Hot Restart**

앱의 모든 상태를 초기화해서 다시 실행해요. 이렇게 하면 프로젝트를 stop 했다가 다시 run 했을 때보다 빠르게 소스코드 변경 사항을 확인할 수 있어요. 

아래 그림의 버튼을 눌러서 수동으로 hot restart를 작동할 수 있어요. 그리고 이미 Running 중인 앱을 stop하지 않고 다시 run 하는 경우에도 Hot restart가 작동됩니다.

![Hot%20Reload%20and%20Hot%20Restart%201882e61348474fea8fc06c1f3ba81f95/Untitled%201.png](Hot%20Reload%20and%20Hot%20Restart%201882e61348474fea8fc06c1f3ba81f95/Untitled%201.png)

수동으로 Hot Restart 작동시키는 버튼

## 어떻게 작동하는가?

변경된 내용이 있는 부분만 Reload 또는 Restart하기 때문에 프로젝트 사이즈에 상관없이 신속하게 변경된 사항을 반영할 수 있어요.

---

## Summary

- Hot Reload : 소스 코드 변경 사항을 실행 중인 앱에서 바로 반영
- Hot Restart : 실행 중인 앱을 종료하지 않고 앱이 처음 실행했을 때의 상태로 초기화