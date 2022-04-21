import 'package:flutter/material.dart';

class VideoWidget extends StatelessWidget {
  const VideoWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: AspectRatio(
        aspectRatio: 16 / 9,
        child: Container(
          color: Colors.blue[400],
        ),
      ),
    );
  }
}