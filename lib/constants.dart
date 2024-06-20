import 'package:flutter/material.dart';

var defaultbg = Color.fromARGB(255, 231, 232, 209);

var myAppBar = AppBar(
  title: Text(
    'Elevation to Consciousness',
    style: TextStyle(color: Color.fromARGB(255, 231, 232, 209)),
  ),
  backgroundColor: Color.fromARGB(255, 184, 80, 66),
);

var myDrawer = Drawer(
    backgroundColor: Color.fromARGB(255, 231, 232, 209),
    child: Builder(
      builder: (context) => Column(
        children: [
          DrawerHeader(child: Icon(Icons.temple_hindu_sharp)),
          ListTile(
            leading: Icon(Icons.chat),
            title: Text('Daily Spiritual Quotes'),
            onTap: () {
              Navigator.pushNamed(context, '/daily_quotes');
            },
          ),
          ListTile(
            leading: Icon(Icons.book),
            title: Text('Radha Krishna Stories'),
            onTap: () {
              Navigator.pushNamed(context, '/stories');
            },
          ),
          ListTile(
            leading: Icon(Icons.audiotrack),
            title: Text('Rasaleela Melodies'),
            onTap: () {
              Navigator.pushNamed(context, '/audio');
            },
          ),
          ListTile(
            leading: Icon(Icons.money),
            title: Text('Donation'),
            onTap: () {
              Navigator.pushNamed(context, '/donation');
            },
          ),
        ],
      ),
    ));
