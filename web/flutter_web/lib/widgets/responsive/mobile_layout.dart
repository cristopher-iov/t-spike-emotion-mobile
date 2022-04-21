import 'package:flutter/material.dart';

import 'package:flutter_web/widgets/common/video.dart';
import 'package:flutter_web/widgets/common/comments.dart';
import 'package:flutter_web/widgets/common/navigate_btn.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({
    Key? key,
    this.title = 'M O B I L E'
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[200],
      appBar: AppBar(
        title: Text(title),
        actions: const [
          NavigateBtnWidget(routeName: '/example', btnName: 'Next'),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: const [
            VideoWidget(),
            CommentsWidget(),
          ],
        ),
      ),
    );
  }
}
