import 'package:flutter/material.dart';
import 'package:iskcon_appl/constants.dart';
import 'package:iskcon_appl/slider.dart';

class DesktopScaffold extends StatefulWidget {
  const DesktopScaffold({Key? key}) : super(key: key);

  @override
  State<DesktopScaffold> createState() => _DesktopScaffoldState();
}

class _DesktopScaffoldState extends State<DesktopScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: defaultbg,
        appBar: myAppBar,
        body: Row(children: [
          myDrawer,
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 15),
                  Text(
                    'Hare Krishna All!',
                    style: TextStyle(
                      fontSize: 20,
                      color: Color.fromARGB(255, 184, 80, 66),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Image.asset('assets/brown_logo.png'),
                  AspectRatio(
                    aspectRatio: 4,
                    child: SizedBox(
                      width: double.infinity,
                      child: GridView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: 4,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4,
                        ),
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Container(
                              color: Color.fromARGB(255, 167, 190, 174),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  SliderP(),
                ],
              ),
            ),
          ),
        ]));
  }
}
