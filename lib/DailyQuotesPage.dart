import 'package:flutter/material.dart';

class DailyQuotesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Daily Spiritual Quotes',
          style: TextStyle(color: Color.fromARGB(255, 196, 223, 230)),
        ),
        backgroundColor: Color.fromARGB(255, 25, 149, 173),
      ),
      backgroundColor: Color.fromARGB(255, 196, 223, 230),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '1. Set thy heart upon thy work, but never on its reward.',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.normal,
                fontFamily: 'EB Garamond',
              ),
            ),
            SizedBox(height: 10),
            Text(
              '2. Free from all thoughts of I and mine, man finds absolute peace.',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.normal,
              ),
            ),
            SizedBox(height: 10),
            Text(
              '3. Happiness is a state of mind and has nothing to do with the external world.',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.normal,
              ),
            ),
            SizedBox(height: 10),
            Text(
              '4. A person can rise through the efforts of his own mind; or draw himself down, in the same manner. Because each person is his own friend or enemy.',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.normal,
              ),
            ),
            SizedBox(height: 10),
            Text(
              '5. Man is made by his beliefs. As he believes so he is.',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.normal,
              ),
            ),
            SizedBox(height: 10),
            Text(
              '6. You grieve for those who should not be grieved for, Yet you speak wise words. Neither for the dead nor those alive do the wise grieve for.',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.normal,
              ),
            ),
            SizedBox(height: 10),
            Text(
              '7. Meet this transient world with neither grasping nor fear, trust the unfolding of life and you will attain true serenity.',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
