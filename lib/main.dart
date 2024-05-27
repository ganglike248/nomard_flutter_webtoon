import 'package:flutter/material.dart';
// ignore_for_file: prefer_const_constructors

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // 커스텀 색상은 Color에 0xFF로 선언
        // 일반적인 경우는 Colors.으로 찾기
        backgroundColor: Color(0xFF181818),
        body: Padding(
          // body에 패딩 주기 -> 가로 40
          padding: EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            children: [
              // 최상단 공간 만들기
              SizedBox(
                height: 80,
              ),
              // 가로 정렬
              Row(
                // 오른쪽 끝으로 요소 이동
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  // 세로 정렬
                  Column(
                    // 오른쪽 끝으로 정렬
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'Hey, Selena',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.w800),
                      ),
                      Text(
                        'Welcome back',
                        style: TextStyle(
                            color: Colors.white.withOpacity(0.8), fontSize: 18),
                        // withOpacity는 투명도 조절
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
