import 'package:flutter/material.dart';

class RoundedBoxesListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 12,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(5.0),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
            elevation: 2, // 그림자 크기
            child: SizedBox(
              height: 150, // 각 항목의 높이 지정
              child: ListTile(
                title: Text('Item $index'),
                subtitle: Text('Subtitle $index'),
                leading: CircleAvatar(
                  backgroundColor: Colors.blue,
                  child: Text('$index'),
                ),
                onTap: () {
                  // 아이템을 눌렀을 때 수행할 동작
                  print('Tapped on item $index');
                },
              ),
            ),
          ),
        );
      },
    );
  }
}
