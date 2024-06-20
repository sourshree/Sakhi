import 'package:flutter/material.dart';

class DonationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Seek Blessings',
          style: TextStyle(color: Color.fromARGB(255, 213, 171, 33)),
        ),
        backgroundColor: Color.fromARGB(255, 89, 86, 86),
      ),
      backgroundColor: Color.fromARGB(255, 240, 212, 122),
      body: Center(
        child: Text('This is the Donation page.'),
      ),
    );
  }
}
