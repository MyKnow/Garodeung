//  main_View.dart
//  2024.01.26.금
//  MyKnow

// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class SettingView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50.0),
        child: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context); // 뒤로 가기 버튼을 눌렀을 때 현재 화면을 닫음
            },
          ),
          title: Text("설정",
              style: TextStyle(fontSize: 20, fontFamily: 'cafe24ssurround')),
        ),
      ),
      body: Center(
        child: Text("대충 리스트 좌라락",
            style: TextStyle(fontSize: 20, fontFamily: 'cafe24ssurroundair')),
      ),
    );
  }
}
