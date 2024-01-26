//  main_View.dart
//  2024.01.26.금
//  MyKnow

// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:garodeung/View/setting_View.dart';
import 'package:provider/provider.dart';
import 'package:garodeung/ViewModel/main_ViewModel.dart';

class mainView extends StatelessWidget {
  const mainView({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => mainViewModel(),
      child: Consumer<mainViewModel>(
        builder: (context, model, child) {
          return mainViewContent(model: model);
        },
      ),
    );
  }
}

class mainViewContent extends StatefulWidget {
  final mainViewModel model;

  const mainViewContent({super.key, required this.model});

  @override
  State<mainViewContent> createState() => _mainViewContentState();
}

class _mainViewContentState extends State<mainViewContent>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: 3,
      vsync: this,
    );

    _tabController.addListener(() {
      widget.model.selectTab(_tabController.index);
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(50.0),
          child: AppBar(
            backgroundColor: Colors.white, // 추후 변경

            // 좌측 담당, 추후 이미지로 바꾸는 게? -----------------------------------
            leadingWidth: 150,
            leading: TextButton.icon(
              style: TextButton.styleFrom(
                  foregroundColor: Color.fromARGB(255, 126, 126, 126)),
              label: const Text(
                "가로등",
                style: TextStyle(fontSize: 30, fontFamily: 'cafe24ssurround'),
              ),
              onPressed: () {},
              icon: const Icon(
                Icons.light,
                size: 35,
                color: Color.fromARGB(255, 200, 142, 255),
              ),
            ),
            actions: [
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SettingView(),
                    ),
                  );
                },
                icon: Icon(Icons.settings),
                color: Colors.grey,
              ),
            ],
          )),
      bottomNavigationBar: SizedBox(
        height: 85,
        child: TabBar(
          indicatorColor: Colors.transparent,
          labelColor: Colors.black,
          controller: _tabController,
          tabs: <Widget>[
            Tab(
              icon: Icon(
                  widget.model.tabIndex == 0 ? Icons.map : Icons.map_outlined,
                  size: 30),
              child: const Text(
                "길 찾기", // 텍스트 추가
                style: TextStyle(
                  fontFamily: 'cafe24ssurroundair', // 폰트 패밀리 설정
                  fontSize: 12, // 원하는 폰트 크기 설정
                ),
              ),
            ),
            Tab(
              icon: Icon(
                  widget.model.tabIndex == 1 ? Icons.chat : Icons.chat_outlined,
                  size: 30),
              child: const Text(
                "채팅", // 텍스트 추가
                style: TextStyle(
                  fontFamily: 'cafe24ssurroundair', // 폰트 패밀리 설정
                  fontSize: 12, // 원하는 폰트 크기 설정
                ),
              ),
            ),
            Tab(
              icon: Icon(
                  widget.model.tabIndex == 2
                      ? Icons.menu_open_rounded
                      : Icons.menu_rounded,
                  size: 30),
              child: const Text(
                "전체", // 텍스트 추가
                style: TextStyle(
                  fontFamily: 'cafe24ssurroundair', // 폰트 패밀리 설정
                  fontSize: 12, // 원하는 폰트 크기 설정
                ),
              ),
            ),
          ],
        ),
      ),
      body: widget.model.tabIndex == 0
          ? tabContainer(context, Colors.indigo, "길찾기 탭")
          : widget.model.tabIndex == 1
              ? tabContainer(context, Colors.amber[600]!, "채팅 탭")
              : tabContainer(context, Colors.blueGrey, "전체 탭"),
    );
  }

  Container tabContainer(BuildContext context, Color tabColor, String tabText) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: tabColor,
      child: Center(
        child: Text(
          tabText,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
