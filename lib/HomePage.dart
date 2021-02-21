import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final List<String> coverList = [
    "https://i.redd.it/mhefkjrkknc51.jpg",
    "https://upload.wikimedia.org/wikipedia/en/b/bd/Joyner_Lucas_-_ADHD.jpg",
    "https://resources.tidal.com/images/c5e370fb/d4da/42ed/abd9/970f59651473/640x640.jpg",
    "https://cdn.vox-cdn.com/thumbor/Luus90ukKG0ZpRObCS9irzCaNcE=/0x0:1200x1200/1400x1050/filters:focal(541x443:733x635):no_upscale()/cdn.vox-cdn.com/uploads/chorus_image/image/65062783/wsxazn6kvk3r0zs7sstv.8.jpg",
    "https://upload.wikimedia.org/wikipedia/en/e/ea/Machine_Gun_Kelly_-_Hotel_Diablo.png",
    "https://upload.wikimedia.org/wikipedia/en/d/d8/Album_cover_for_the_Binge_%28EP%29.jpeg"
  ];

  Widget albumContainer(String coverUrl, String coverName) {
    return Container(
      child: InkWell(
        onTap: () {},
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(12.0),
              child: Container(
                  height: 150.0,
                  width: 150.0,
                  child: Image.network(
                    coverUrl,
                    fit: BoxFit.fill,
                  )),
            ),
            SizedBox(
              height: 12.0,
            ),
            Text(
              coverName,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w800,
                  fontSize: 22.0),
            ),
            SizedBox(
              height: 12.0,
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 40.0, horizontal: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Recently Played",
              style: TextStyle(color: Colors.white, fontSize: 28),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  albumContainer(
                    coverList[0],
                    "Lewis Street",
                  ),
                  SizedBox(
                    width: 28.0,
                  ),
                  albumContainer(
                    coverList[1],
                    "ADHD",
                  ),
                  SizedBox(
                    width: 28.0,
                  ),
                  albumContainer(
                    coverList[2],
                    "Evolution",
                  ),
                  SizedBox(
                    width: 28.0,
                  ),
                ],
              ),
            ),
            Text(
              "Popular Playlists",
              style: TextStyle(color: Colors.white, fontSize: 28.0),
            ),
            SizedBox(
              height: 20.0,
            ),
            Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  albumContainer(
                    coverList[3],
                    "DAMN.",
                  ),
                  SizedBox(
                    width: 28.0,
                  ),
                  albumContainer(
                    coverList[4],
                    "Hotel Diablo",
                  ),
                  SizedBox(
                    width: 28.0,
                  ),
                  albumContainer(
                    coverList[5],
                    "Binge",
                  ),
                  SizedBox(
                    width: 28.0,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
