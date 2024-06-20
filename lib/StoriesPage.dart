import 'package:flutter/material.dart';

class StoriesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Lord Krishna Tales',
          style: TextStyle(color: Color.fromARGB(253, 213, 249, 163)),
        ),
        backgroundColor: Color.fromARGB(255, 69, 147, 71),
      ),
      backgroundColor: Color.fromARGB(253, 213, 249, 163),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'The Essence of Krishna',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 69, 147, 71),
              ),
            ),
            SizedBox(height: 20),
            RichText(
              textAlign: TextAlign.justify,
              text: TextSpan(
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
                children: [
                  TextSpan(
                    text:
                        'When we say Krishna, he is an irreplaceable child, a terrible prankster, an enchanting flute player, a graceful dancer, an irresistible lover, a truly valiant warrior, a ruthless vanquisher of his foes, an astute statesman and kingmaker, a thorough gentleman, a yogi of the highest order, and the most colorful incarnation. Different people saw different facets of who he is. For some, he is God. For some, he is a crook. For some, he is a lover. For some, he is a fighter. He is so many things.\n\n',
                  ),
                  TextSpan(
                    text:
                        'If we want to taste an essence of what it means when we say Krishna, if we want to be touched by the consciousness that we refer to as Krishna, we need Leela. Leela means, it is the path of the playful – we explore the most profound and the most serious aspects of life, but playfully. Otherwise Krishna won’t be there. The reason why the most profound dimensions of life have been missed by a vast population of the world is because they do not know how to be playful.\n\n',
                  ),
                  TextSpan(
                    text:
                        'To explore this path playfully, you need a heart full of love, a joyful mind, and a vibrant body. Only then there is Leela. To explore the most profound dimensions of life in a playful way, you must be willing to play with your awareness, with your imagination, with your memory, with your life, with your death. If you are willing to play with everything, only then there is Leela. Leela does not mean just dancing with somebody. It means you are willing to dance with life. You are willing to dance with your enemy, you are willing to dance with the one whom you love, you are willing to dance at the moment of your death. Only then there is Leela.',
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
