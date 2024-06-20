import 'package:flutter/material.dart';

class MyTile extends StatelessWidget {
  const MyTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        color: Color.fromARGB(255, 167, 190, 174),
        height: 90,
      ),
    );
  }
}
