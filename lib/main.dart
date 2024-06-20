import 'package:flutter/material.dart';
import 'constants.dart';
import 'DailyQuotesPage.dart';
import 'StoriesPage.dart';
import 'AudioPlay.dart';
import 'DonationPage.dart';
import 'responsive/desktop_scaffold.dart';
import 'responsive/mobile_scaffold.dart';
import 'responsive/responsive_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => ResponsiveLayout(
              mobileScaffold: const MobileScaffold(),
              desktopScaffold: const DesktopScaffold(),
            ),
        '/daily_quotes': (context) => DailyQuotesPage(),
        '/stories': (context) => StoriesPage(),
        '/audio': (context) => AudioPlay(),
        '/donation': (context) => DonationPage(),
      },
    );
  }
}
