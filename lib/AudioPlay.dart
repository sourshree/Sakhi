import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class AudioPlay extends StatefulWidget {
  @override
  _AudioPlayState createState() => _AudioPlayState();
}

List<Map<String, String>> musicList = [
  {
    'title': "Shyam Chanda Hei Shyama Chakori",
    'singer': "Nandlal Chhanga",
    'url': "1.mp3",
    'coverurl':
        "https://i.ytimg.com/vi/3UE8AWRrSMM/sddefault.jpg?sqp=-oaymwEWCKoDEPABIAQqCghqEJQEGHgg6AJIWg&rs=AOn4CLDSL3805NOjF1DJ599wuhIzBpOAaA",
  },
  {
    'title': "Tum Prem Ho - Reprise",
    'singer': "Mohit Lalwani",
    'url': "2.m4a",
    'coverurl':
        "https://i.ytimg.com/vi/Feoea8FQTI0/hq720.jpg?sqp=-oaymwEXCNUGEOADIAQqCwjVARCqCBh4INgESFo&rs=AOn4CLBfo8ZpT8f6aJOBKj_3yeVF7z9dRQ",
  },
  {
    'title': "Hari Sundar Nand Mukunda ",
    'singer': "Krishna Bhajans",
    'url': "3.m4a",
    'coverurl':
        "https://i.ytimg.com/vi/HIjeHxLfF5w/hq720.jpg?sqp=-oaymwEXCNUGEOADIAQqCwjVARCqCBh4INgESFo&rs=AOn4CLAR5jRzQCObav5G73XvMQudNKKDyg",
  },
  {
    'title': "Achyutam Keshavam Krishna Damodaram",
    'singer': "Madhuraa Bhattacharya",
    'url': "4.m4a",
    'coverurl':
        "https://i.ytimg.com/vi/1JKuv-OWpM8/hq720.jpg?sqp=-oaymwEXCNUGEOADIAQqCwjVARCqCBh4INgESFo&rs=AOn4CLDgwhwBfj9IKoNEztVBcYnKifNcrA",
  },
  {
    'title': "Shri Krishna Govind Hare Murari",
    'singer': "Jubin Nautiyal",
    'url': "5.m4a",
    'coverurl':
        "https://i.ytimg.com/vi/1qmPNot9NJs/hq720.jpg?sqp=-oaymwEXCNUGEOADIAQqCwjVARCqCBh4INgESFo&rs=AOn4CLC-CJyxIqmiIvMo2z5dy23SXGld_w",
  },
  {
    'title': "Zara itna batade Kanha",
    'singer': "Mridul Krishna Shastri Ji",
    'url': "6.m4a",
    'coverurl':
        "https://i.ytimg.com/vi/dHaJZOX9mWE/hq720.jpg?sqp=-oaymwEXCNUGEOADIAQqCwjVARCqCBh4INgESFo&rs=AOn4CLDcrogV3FOf826n45NoUD9Xc5F1Ag",
  },
  {
    'title': "Shyam Chudi Bechne Aaya",
    'singer': "Tripti Shakya",
    'url': "7.m4a",
    'coverurl':
        "https://i.ytimg.com/vi/UBQHgoCKEc8/hq720.jpg?sqp=-oaymwEXCNUGEOADIAQqCwjVARCqCBh4INgESFo&rs=AOn4CLBwsQrrA6Hbfp5ZRZ7FUBjH96JB6g",
  },
  {
    'title': "Govind Bolo Hari Gopal Bolo",
    'singer': "Krishna Bhajan",
    'url': "8.m4a",
    'coverurl':
        "https://i.ytimg.com/vi/Sqme-7OSCi8/hq720.jpg?sqp=-oaymwEXCNUGEOADIAQqCwjVARCqCBh4INgESFo&rs=AOn4CLDISILYKiVDFvsa6WTk6O1268vkUw",
  },
  {
    'title': "Zari Ki Pagdi",
    'singer': "Maanya Arora",
    'url': "9.m4a",
    'coverurl':
        "https://i.ytimg.com/vi/Hr9H8GEZ9Ao/sddefault.jpg?sqp=-oaymwEWCKoDEPABIAQqCghqEJQEGHgg6AJIWg&rs=AOn4CLA_VvMqw8kVxeYtC6hdtLpuAsQxvw",
  },
  {
    'title': "Mere Banke Bihari Lal",
    'singer': "Maanya Arora",
    'url': "10.m4a",
    'coverurl':
        "https://i.ytimg.com/vi/snfnKXI14KA/sddefault.jpg?sqp=-oaymwEWCKoDEPABIAQqCghqEJQEGHgg6AJIWg&rs=AOn4CLCT962mInxMgoN_OAn3k3bRdFcFow",
  },
  {
    'title': "Lagan Tumse Laga Baithe",
    'singer': "Shailendra Bharti",
    'url': "11.m4a",
    'coverurl':
        "https://i.ytimg.com/vi/ocTyP5pS1xM/hq720.jpg?sqp=-oaymwEXCNUGEOADIAQqCwjVARCqCBh4INgESFo&rs=AOn4CLAFLPcb2Njr8nAu_tdvhn4uPOXbug",
  }
];

class _AudioPlayState extends State<AudioPlay> {
  late AudioPlayer _audioPlayer;
  bool isPlaying = false;
  String currentTitle = "";
  String currentSinger = "";
  String currentCoverUrl = "";
  String currentUrl = "";

  @override
  void initState() {
    super.initState();
    _audioPlayer = AudioPlayer();
  }

  void playMusic(
      String url, String title, String singer, String coverUrl) async {
    await _audioPlayer.setSource(AssetSource(url));
    _audioPlayer.resume();
    setState(() {
      isPlaying = true;
      currentTitle = title;
      currentSinger = singer;
      currentCoverUrl = coverUrl;
      currentUrl = url;
    });
  }

  void pauseMusic() {
    _audioPlayer.pause();
    setState(() {
      isPlaying = false;
    });
  }

  @override
  void dispose() {
    _audioPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Krishna Bhajans',
          style: TextStyle(color: Color.fromARGB(255, 245, 215, 227)),
        ),
        backgroundColor: Color.fromARGB(255, 88, 53, 94),
      ),
      backgroundColor: Color.fromARGB(255, 245, 215, 227),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: musicList.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Image.network(musicList[index]['coverurl']!),
                  title: Text(musicList[index]['title']!),
                  subtitle: Text(musicList[index]['singer']!),
                  onTap: () {
                    playMusic(
                      musicList[index]['url']!,
                      musicList[index]['title']!,
                      musicList[index]['singer']!,
                      musicList[index]['coverurl']!,
                    );
                  },
                );
              },
            ),
          ),
          if (isPlaying)
            Column(
              children: [
                Image.network(currentCoverUrl),
                Text(
                  currentTitle,
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                Text(currentSinger),
                IconButton(
                  icon: Icon(Icons.pause),
                  onPressed: pauseMusic,
                ),
              ],
            ),
        ],
      ),
    );
  }
}
