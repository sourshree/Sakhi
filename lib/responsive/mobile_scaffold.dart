import 'package:flutter/material.dart';
import 'package:iskcon_appl/constants.dart';
import 'package:iskcon_appl/slider.dart';

class MobileScaffold extends StatefulWidget {
  const MobileScaffold({Key? key}) : super(key: key);

  @override
  State<MobileScaffold> createState() => _MobileScaffoldState();
}

class _MobileScaffoldState extends State<MobileScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: defaultbg,
      appBar: myAppBar,
      drawer: myDrawer,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(height: 15),
            Text(
              'Hare Krishna!',
              style: TextStyle(
                fontSize: 25,
                color: Color.fromARGB(255, 184, 80, 66),
                fontWeight: FontWeight.w500,
              ),
            ),
            Image.asset('assets/brown_logo_crop.png'),
            SizedBox(height: 10),
            Text(
              '|| Shree Radhe ||',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w500,
                color: Color.fromARGB(255, 184, 80, 66),
              ),
            ),
            SizedBox(height: 10),
            Image.asset('assets/aes_black_krish.jpg'),
            SizedBox(height: 18), // Space before the text
            Text(
              'Discover Famous Temples-',
              style: TextStyle(
                fontSize: 21,
                fontWeight: FontWeight.w500,
                color: Color.fromARGB(255, 184, 80, 66),
              ),
            ),
            SizedBox(height: 1), // Space between the text and the slider
            SliderP(),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Hare Krishna, \nHare Rama!',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 45,
                        color: Colors.grey,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      '~Made with Devotion by Shreetama~\n',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontSize: 16,
                        color: const Color.fromARGB(255, 152, 143, 143),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
