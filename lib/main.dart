import 'package:flutter/material.dart';
import 'package:spotify_clone/HomePage.dart';
import 'package:spotify_clone/PlayListPage.dart';
import 'package:spotify_clone/SearchPage.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SpotifyApp(),
  ));
}

class SpotifyApp extends StatefulWidget {
  @override
  _SpotifyAppState createState() => _SpotifyAppState();
}

class _SpotifyAppState extends State<SpotifyApp> {
  int _currentIndex = 0;
  final tabs = [
    HomePage(),
    SearchPage(),
    PlayListPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: tabs[_currentIndex],
        backgroundColor: Colors.black,
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.shifting,
          selectedItemColor: Colors.white,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: Colors.white,
                ),
                label: "Home",
                backgroundColor: Color.fromARGB(255, 20, 20, 20)),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                label: "Search",
                backgroundColor: Color.fromARGB(255, 20, 20, 20)),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.library_music_rounded,
                  color: Colors.white,
                ),
                label: "Your Playlists",
                backgroundColor: Color.fromARGB(255, 20, 20, 20)),
          ],
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
      ),
    );
  }
}
