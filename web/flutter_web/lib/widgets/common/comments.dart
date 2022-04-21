import 'package:flutter/material.dart';

class CommentsWidget extends StatelessWidget {
  const CommentsWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 8,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Colors.blue[300],
              height: 120,
            ),
          );
        },
      ),
    );
  }
}