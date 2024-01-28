import 'package:flutter/material.dart';

class messageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    /// Messages page
    return ListView.builder(
      reverse: true,
      itemCount: 5,
      itemBuilder: (BuildContext context, int index) {
        if (index == 0) {
          return Align(
            alignment: Alignment.centerRight,
            child: Container(
              margin: const EdgeInsets.all(8.0),
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: Colors.blue[100],
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Text(
                '본인인데 다 나가죽어주세요.',
              ),
            ),
          );
        } else if (index == 4) {
          return Align(
            alignment: Alignment.centerLeft,
            child: Container(
              margin: const EdgeInsets.all(8.0),
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: Colors.blue[100],
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Text(
                '2-3 임산부 바로 옆자리 개지리면 개추 ㅋㅋ 일단 나부터',
              ),
            ),
          );
        } else if (index == 3) {
          return Align(
            alignment: Alignment.centerLeft,
            child: Container(
              margin: const EdgeInsets.all(8.0),
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: Colors.blue[100],
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Text(
                'ㅁㅊ ㅋㅋㅋ 바로 개추 박는다',
              ),
            ),
          );
        } else if (index == 2) {
          return Align(
            alignment: Alignment.centerLeft,
            child: Container(
              margin: const EdgeInsets.all(8.0),
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: Colors.blue[100],
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Text(
                '강호의 도리 지렸다 ㅅㅂ',
              ),
            ),
          );
        } else if (index == 1) {
          return Align(
            alignment: Alignment.centerLeft,
            child: Container(
              margin: const EdgeInsets.all(8.0),
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: Colors.blue[100],
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Text(
                'ㅅㅂ 개쌈@뽕하네',
              ),
            ),
          );
        }
      },
    );
  }
}
