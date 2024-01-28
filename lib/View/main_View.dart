//  main_View.dart
//  2024.01.26.금
//  MyKnow

// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:garodeung/View/message_View.dart';
import 'package:garodeung/View/setting_View.dart';
import 'package:garodeung/View/test_View.dart';
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
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(50.0),
            child: AppBar(
              backgroundColor: Color.fromARGB(245, 255, 255, 255), // 추후 변경

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
        extendBodyBehindAppBar: true,
        extendBody: true,
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(30), topLeft: Radius.circular(30)),
            boxShadow: [
              BoxShadow(color: Colors.black38, spreadRadius: 3, blurRadius: 10),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.0),
              topRight: Radius.circular(30.0),
            ),
            child: BottomNavigationBar(
              type: BottomNavigationBarType.shifting,
              selectedItemColor: Colors.purple,
              unselectedItemColor: Colors.grey,
              showSelectedLabels: true,
              showUnselectedLabels: false,
              currentIndex: widget.model.tabIndex,
              onTap: widget.model.selectTab,
              items: [
                BottomNavigationBarItem(
                  icon: Icon(
                    widget.model.tabIndex == 0 ? Icons.map : Icons.map_outlined,
                    size: 30,
                  ),
                  label: "길 찾기",
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    widget.model.tabIndex == 1
                        ? Icons.chat
                        : Icons.chat_outlined,
                    size: 30,
                  ),
                  label: "채팅",
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    widget.model.tabIndex == 2
                        ? Icons.menu_open_rounded
                        : Icons.menu_rounded,
                    size: 30,
                  ),
                  label: "전체",
                ),
              ],
            ),
          ),
        ),
        body: widget.model.tabIndex == 1
            ? messageView()
            : RoundedBoxesListView());
  }
}
