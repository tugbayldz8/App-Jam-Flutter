import 'package:app_jam_deneme_1/profile_flutter.dart';
import 'package:app_jam_deneme_1/profile_unity.dart';
import 'package:app_jam_deneme_1/proje_ara_flutter.dart';
import 'package:app_jam_deneme_1/proje_ara_unity.dart';
import 'package:app_jam_deneme_1/unity_new_project.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'about_us.dart';
import 'flutter_new_project.dart';

class Draw extends StatelessWidget {
  Draw({Key? key}) : super(key: key);
  final List<String> appimageList = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTBjD8FJ_6_IPrApmoDeVWmk_aOLvfPF0B1Yg&usqp=CAU",
    "https://dce0qyjkutl4h.cloudfront.net/wp-content/uploads/2020/09/Flutter-App-development.jpg",
    "https://cdn.sanity.io/images/ay6gmb6r/production/b1c0d245219f0fa486cf94fc078e5c4d29ebe4ee-2240x1260.png",
    "https://invotech.co/blog/wp-content/uploads/2020/09/reflecty.jpg"
  ];
  final List<String> unityimageList = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQhrOwuhoRuXeFrJVkNUjDQEFbrIJd7GokF3Q&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcScv79UlhSN6C9A-Wq0mjuZBxZeG2d1zYhpQg&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRCqCabSm07n79meC8rionNjsnCt-8GQzAibQ&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ5xYV0wMFVfuGD81zHhjVzfiKIXqvYihRs8A&usqp=CAU",
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            drawer: NavigationDrawer(),
            appBar: AppBar(
              title: Text('Anasayfa'),
              backgroundColor: Colors.black,
            ),
            body: Column(children: [
              SizedBox(
                height: 40,
              ),
              CarouselSlider(
                  items: appimageList
                      .map((e) => ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Stack(
                              fit: StackFit.expand,
                              children: <Widget>[
                                Image.network(
                                  e,
                                  width: 2050,
                                  height: 450,
                                  fit: BoxFit.cover,
                                )
                              ],
                            ),
                          ))
                      .toList(),
                  options: CarouselOptions(
                    enlargeCenterPage: true,
                    enableInfiniteScroll: false,
                    autoPlay: true,
                  )),
              SizedBox(
                height: 30,
              ),
              Container(
                padding: EdgeInsets.all(5),
                width: 350,
                height: 110,
                decoration: BoxDecoration(
                    //color: Colors.yellow.shade100,
                    gradient: LinearGradient(
                       begin: Alignment.centerLeft,
                       end: Alignment.centerRight,
                       colors: [
                         Colors.grey,
                         Colors.white,
                       ],
                     ),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    border: Border.all(color: Colors.black)),
                //  color: Colors.red,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Gitmek istediğiniz alanı seçin',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold,),
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.blue,
                            ),
                            onPressed: () => Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: (context) => FProfilim())),
                            child: Text(
                              'FLUTTER',
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.bold,),
                            )),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.green,
                            ),
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => UProfilim()));
                            },
                            child: Text(
                              'UNITY',
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.bold),
                            )),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              CarouselSlider(
                  items: unityimageList
                      .map((e) => ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Stack(
                              fit: StackFit.expand,
                              children: <Widget>[
                                Image.network(
                                  e,
                                  width: 2050,
                                  height: 450,
                                  fit: BoxFit.cover,
                                )
                              ],
                            ),
                          ))
                      .toList(),
                  options: CarouselOptions(
                    enlargeCenterPage: true,
                    enableInfiniteScroll: false,
                    autoPlay: true,
                  )),
            ])));
  }
}

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Drawer(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildHeader(context),
              buildMenuItems(context),
            ],
          ),
        ),
      );
  Widget buildHeader(BuildContext context) => Material(
        color: Colors.black,
        child: Container(
          padding: EdgeInsets.only(
              top: MediaQuery.of(context).padding.top, bottom: 24),
          child: Row(
            children: [
              CircleAvatar(
                radius: 52,
                backgroundImage: AssetImage('assets/profilfoto.jpg'),
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Tuğba Yıldız',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'tugbayildiz@gmail.com',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
  Widget buildMenuItems(BuildContext context) => Container(
        padding: const EdgeInsets.all(15),
        child: Wrap(
          runSpacing: 6,
          children: [
            ListTile(
              leading: const Icon(Icons.home_outlined),
              title: const Text('Anasayfa',),
              onTap: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Draw())),
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Profilim'),
               onTap: () => {
                     //Navigator.pop(context),
                     Navigator.of(context).push(
                         MaterialPageRoute(builder: (context) => FProfilim())),
                   }
            ),
            ListTile(
              leading: const Icon(Icons.info_sharp),
              title: const Text('Hakkımızda'),
              onTap: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => AboutUs())),
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('Çıkış'),
            ),
          ],
        ),
      );
}
