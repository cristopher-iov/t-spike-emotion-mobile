import 'package:flutter/material.dart';

import 'package:flutter_web/constants/dimensions.dart';
import 'package:flutter_web/widgets/common/video.dart';
import 'package:flutter_web/widgets/common/comments.dart';
import 'package:flutter_web/widgets/common/navigate_btn.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({
    Key? key,
    this.title = 'D E S K T O P'
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[200],
      appBar: AppBar(
        title: Text(title),
        actions: const [
          NavigateBtnWidget(routeName: '/example', btnName: 'Next view'),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  Container(
                    constraints: const BoxConstraints(maxHeight: videoMaxHeight),
                    child: const VideoWidget(),
                  ),

                  const CommentsWidget(),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 200,
                color: Colors.blue[300],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
