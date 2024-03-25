import 'package:flutter/material.dart';

void main() {
  // runApp : app 구동 명령어
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    // 실제 코드
    return MaterialApp(
      // 꼭 알아야 할 위젯 유형 4가지
      // 아이콘 위젯
      // home: Icon(Icons.star),
      // 박스 위젯
      // home: Icon(Icons.star),
      // 이미지 위젯
      home: Image.asset('android/assets/images/sinjjang.jpg', width: 200),
      // 글자 위젯
      // home: Text('안녕'),
    );
  }
}
