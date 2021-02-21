import 'package:flutter/material.dart';

class PlayListPage extends StatelessWidget {
  final List<String> coverList = [
    "https://i.scdn.co/image/ab67706f0000000378dce50f4355e0fd9fb68a65",
    "https://i.scdn.co/image/ab67706f0000000387bff188c40608c48b82068f",
    "https://i.scdn.co/image/ab67706f00000003ff7822d48c90134c3df20522",
    "https://i.scdn.co/image/ab67706f0000000376e419ba421205538e686200",
    "https://i.scdn.co/image/ab67706f000000037ca02cb96fb55f34e5a0b826",
    "https://i.scdn.co/image/ab67706f00000003fd92285a960405af07919690"
  ];

  Widget listItem(String coverUrl, String albumTitle, String singerName) {
    return Column(
      children: <Widget>[
        InkWell(
          onTap: () {},
          child: Container(
            child: Row(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(4.0),
                  child: Container(
                    width: 80.0,
                    height: 70.0,
                    child: Image.network(coverUrl),
                  ),
                ),
                SizedBox(
                  width: 20.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      albumTitle,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 28.0,
                          fontWeight: FontWeight.w800),
                    ),
                    SizedBox(
                      height: 12.0,
                    ),
                    Text(
                      singerName,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w300),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        SizedBox(
          height: 20.0,
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 35.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              "Playlists",
              style: TextStyle(color: Colors.white, fontSize: 30.0),
            ),
            SizedBox(
              height: 20.0,
            ),
            Expanded(
              child: ListView(
                children: <Widget>[
                  listItem(coverList[0], "This Is LANY", "By Spotify"),
                  listItem(coverList[1], "This Is Drake", "By Spotify"),
                  listItem(coverList[2], "This Is Slipknot", "By Spotify"),
                  listItem(coverList[3], "This Is Halsey", "By Spotify"),
                  listItem(coverList[4], "This Is NF", "By Spotify"),
                  listItem(coverList[5], "This Is J. Cole", "By Spotify"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
