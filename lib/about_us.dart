import 'package:app_jam_deneme_1/profile_flutter.dart';
import 'package:app_jam_deneme_1/proje_ara_flutter.dart';
import 'package:app_jam_deneme_1/proje_ara_unity.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.white,
          drawer: NavigationDrawer(),
          appBar: AppBar(
            title: Text('BİZ KİMİZ?'),
            backgroundColor: Colors.black,
          ),
          body: Container(
              margin: EdgeInsets.all(15),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Misyonumuz',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  Divider(
                    thickness: 2,
                  ),
                  Text(
                    'Yazılımcıların projelerinde ihtiyaç duyacakları ekip arkadaşlarını kolayca bulmalarını sağlayarak, projelerini yürütmelerine yardımcı olmak ve başarılı bir şekilde gerçekleştirmelerine olanak tanımak. Ayrıca, yazılım üreticisini bir araya getirmek, bilgi ve deneyim aktarımlarına ve işbirliği yapmalarına olanak sağlamak. Hedefimiz, yazılım geliştirmeyi daha verimli, kolay ve keyifli hale getirmek.',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Vizyonumuz',
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.green),
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  Divider(
                    thickness: 2,
                  ),
                  Text(
                      'Yazılımcıların tasarımları için ekip arkadaşı bulmalarını kolaylaştıran bir uygulama olarak, en güncel teknolojik yenilikleri takip ederek, dünya genelindeki yazılım işletmesine liderlik etmek ve yazılım geliştiricileri için kapsamlı bir iş birliği platformu sunmak istiyoruz.',
                      style: TextStyle(fontSize: 15)),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Ekip Üyeleri',
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.yellow[700]),
                      ),
                    ],
                  ),
                  Divider(
                    thickness: 2,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'HELİN GÜLER\nNURGÜL DEMİR\nUMUT BAŞAR',
                            style: TextStyle(fontSize: 15),
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          Text(
                            'TUĞBA YILDIZ\nEREN KURT',
                            style: TextStyle(fontSize: 15),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Image.asset('assets/logo.jpeg'),
                ],
              )),
        ));
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
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text('tugbayildiz@gmail.com',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.white)),
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
              title: const Text('Anasayfa'),
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
              leading: const Icon(Icons.star),
              title: const Text('Projeye Katıl'),
              onTap: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => ProjeAraScreenF())),
            ),
            ListTile(
              leading: const Icon(Icons.add_box),
              title: const Text('Proje Oluştur'),
              onTap: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => ProjeAraScreenU())),
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('Çıkış'),
            ),
          ],
        ),
      );
}
