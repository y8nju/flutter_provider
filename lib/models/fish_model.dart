import 'package:flutter/material.dart';

class FishModel with ChangeNotifier {
  final String name;
  int number;
  final String size;

  FishModel({
    required this.name,
    required this.number,
    required this.size,
  });

  void changeFishNumber() {
    number++;
    notifyListeners();
  }
}

// ChangeNotifier의 한계
// 1. 매번 수동으로 addListener를 등록해 주어야 함
// 2. 수동으로 addListener를 제거해 주어야 함
// 3. Model 인스턴스를 매번 생성자를 통해서 전달 해야 함
// 4. UI 리빌드도 수동으로 해결해야 함
//  -> ChangeNotifierProvider를 사용해야함
// ChangeNotifierProvider
// 1. 모든 위젯들이 listen 할 수 있는 ChangeNotifier 인스턴스 생성
// 2. 자동으로 필요없는 ChangeNotifire 제거
// 3. Provider.of를 통해서 위젯들이 쉽게 ChangeNotifier 인스턴스에 접근할 수 있게 해줌
// 4. 필요 시 UI를 리빌드 시켜줄 수 있음
// 5. 굳이 UI를 리빌드 할 필요가 없는 위젯을 위해서 listen: false 기능 제공
