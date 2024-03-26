import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
      // 1. 위젯 안에 위젯 넣기 가능 child 속성 활용!
      // 2. 꼭 알아야 할 위젯 유형 4가지
      // 2-1. 아이콘 위젯
      // home: Icon(Icons.star),
      // 2-2. 박스 위젯 (박스 위젯의 기본 크기는 px단위가 아닌 lp라는 단위 1lp = 1.2cm)
      // home: Container(width: 1, height: 1, color: Colors.blue),
      // home: Center(
      //   child: Container(width: 10, height: 10, color: Colors.blue),
      // ),
      // 2-3. 이미지 위젯 case 1 저장 파일 불러오기
      // home: Image.asset('android/assets/images/sinjjang.jpg', width: 200),
      // 2-3-1. 이미지 위젯 case 2 이미지 주소 경로로 호출하기
      // home: Image.network('data:image/jpeg;base64,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')
      // 2-4. 글자 위젯
      // home: Text('안녕'),
      // 3. 상중하 구조
      home: Scaffold(
        // // 3-1. 상단
        // appBar: AppBar(
        //   backgroundColor: Colors.lightBlueAccent,
        //   title: Text('Application', style: TextStyle(
        //     color: Colors.white
        //   ),),
        //   // 좌측
        //   leading: Icon(Icons.cable),
        //   // 우측
        //   actions: [Icon(Icons.cable)],
        // ),
        // // 3-2. 중단
        // // Row - 가로 배치, Column - 새로 배치
        // body: Center(
        //   child: SizedBox(
        //     // color 는 중복될 수 없음
        //     // decoration: BoxDecoration(
        //     //   border: Border.all(color: Colors.black)
        //     // ),
        //     width: 150, height: 50,
        //     // margin: EdgeInsets.fromLTRB(20, 10, 10, 20)
        //     child: IconButton(
        //       icon: Icon(Icons.star),
        //       onPressed: (){},
        //     ),
        //   ),
        // ),
        // // 3-3. 하단
        // bottomNavigationBar: BottomNavigationBar(
        //   items: [
        //     BottomNavigationBarItem(icon: Icon(Icons.phone), label: 'Phone'),
        //     BottomNavigationBarItem(icon: Icon(Icons.message), label: 'Message'),
        //     BottomNavigationBarItem(icon: Icon(Icons.contact_page), label: 'Contact')
        //   ],
        // ),
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(204, 150, 255, 0.7),
          leading: IconButton(
              icon: Icon(Icons.extension),
              onPressed: (){} ,
          ),
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.info_outline)),
            IconButton(onPressed: (){}, icon: Icon(Icons.refresh))
          ],
        ),
        // body: Center(
        //     child: SizedBox(
        //       width: 1000,
        //       child: DataTable(
        //         dataRowMinHeight: 50,
        //         dataRowMaxHeight: 150,
        //         border: TableBorder.all(borderRadius: BorderRadius.all(Radius.circular(10)),width: 1, color: Color.fromRGBO(173, 233, 173, 0.7)),
        //         columns: [
        //           DataColumn(label: Text('등장 인물')),
        //           DataColumn(label: Text('이름')),
        //           DataColumn(label: Text('나이')),
        //         ],
        //         rows: [
        //           DataRow(cells: [
        //             DataCell(Image.asset('android/assets/images/sinjjang.jpg')),
        //             DataCell(TextButton(onPressed: () {}, child: Text('신 짱구'))),
        //             DataCell(Text('5'))
        //           ]),
        //           DataRow(cells: [
        //             DataCell(Image.asset('android/assets/images/chulsu.jpg')),
        //             DataCell(TextButton(onPressed: (){}, child: Text('철수'))),
        //             DataCell(Text('5'))
        //           ]),
        //           DataRow(cells: [
        //             DataCell(Image.asset('android/assets/images/maenggu.webp')),
        //             DataCell(TextButton(onPressed: (){}, child: Text('맹구'))),
        //             DataCell(Text('5'))
        //           ])
        //         ],
        //       ),
        //     )
        // )
        // body: Row(
        //   children: [
        //     // 배율 조정 Flexible 활용! ++ Exapanded는 flex를 1만큼 가진 Fliexible 박스랑 같음
        //     Flexible(child: Container(color: Colors.blue), flex: 5),
        //     Flexible(child: Container(color: Colors.green), flex: 5),
        //     Flexible(child: Container(color: Colors.red), flex: 5),
        //   ],
        // ),
        body: Container(
          height: 200,
          padding: EdgeInsets.all(20),
          child: Row(
            children: [
              Image.asset('android/assets/images/jordan.jpg',width: 300),
              SizedBox(
                width: 300,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('나이키 조던 시드니', style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    )),
                    Text('용현동 72', style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 0.5)
                    ),),
                    Text('690,000 원', style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15
                    ),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border)),
                        Text('4')
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color.fromRGBO(204, 150, 255, 0.7),
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.list), label: '전체 목록'),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: '내 목록'),
          ],
        ),
      ),
    );
  }
}
