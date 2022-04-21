import 'package:flutter/material.dart';

class NavigateBtnWidget extends StatelessWidget {
  const NavigateBtnWidget({
    Key? key,
    required this.routeName,
    required this.btnName
  }) : super(key: key);

  final String routeName;
  final String btnName;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.pushNamed(context, routeName);
      },
      child: Text(btnName),
    );
  }
}
