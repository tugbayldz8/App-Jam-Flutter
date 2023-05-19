import 'package:app_jam_deneme_1/about_us.dart';
import 'package:app_jam_deneme_1/profile_flutter.dart';
import 'package:app_jam_deneme_1/proje_ara_flutter.dart';
import 'package:app_jam_deneme_1/proje_ara_unity.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';

class FlutterNewProject extends StatefulWidget {
  const FlutterNewProject({Key? key}) : super(key: key);
  @override
  State<FlutterNewProject> createState() => _FlutterNewProjectState();
}

class _FlutterNewProjectState extends State<FlutterNewProject> {
  String? _selectedOption;
  String? _selectedAlan;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: Scaffold(
      resizeToAvoidBottomInset: false,
      drawer: NavigationDrawer(),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'PROJE OLUŞTUR',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(top: 70),
        child: Column(children: [
          Text(
            'MERHABA TUĞBA :)',
            style: TextStyle(
                color: Colors.grey.shade900,
                fontSize: 24,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 30),
          Container(
            padding: EdgeInsets.all(15),
            width: 355,
            height: 90,
            decoration: BoxDecoration(
                color: Colors.blue.shade500,
                borderRadius: BorderRadius.all(Radius.circular(10)),
                border: Border.all(color: Colors.blue)),
            //  color: Colors.red,
            child: Text(
              'Lütfen oluşturmak istediğin Flutter projen ile ilgili gerekli bilgileri gir.',
              style: TextStyle(fontSize: 20),
            ),
          ),
          SizedBox(height: 10),
          Theme(
            data: ThemeData(primarySwatch: Colors.lime),
            child: Container(
              width: 350,
              decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  border: Border.all(color: Colors.blueAccent)),
              //
              child: ExpansionTile(
                title: Text(
                  _selectedAlan ?? 'Alan Seçiniz',
                  style: TextStyle(fontSize: 30),
                ),
                children: [
                  Container(
                    // alignment: Alignment.topLeft,
                    //margin: EdgeInsets.only(left: 22),
                    width: 400,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              _selectedAlan = 'Sağlık';
                            });
                          },
                          child: Text(
                            'Sağlık',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              _selectedAlan = 'Eğitim';
                            });
                          },
                          child: Text(
                            'Eğitim',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              _selectedAlan = 'Ekonomi';
                            });
                          },
                          child: Text(
                            'Sosyal Medya',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 10),
          Theme(
            data: ThemeData(primarySwatch: Colors.brown),
            child: Container(
              width: 350,
              decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  border: Border.all(color: Colors.blueAccent)),
              //
              child: ExpansionTile(
                title: Text(_selectedOption ?? 'Ekip Sayısı Seçiniz',
                    style: TextStyle(fontSize: 30)),
                children: [
                  Container(
                    // alignment: Alignment.topLeft,
                    // margin: EdgeInsets.only(left: 22),
                    width: 400,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              _selectedOption = '2-3';
                            });
                          },
                          child: Text(
                            '2-3',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              _selectedOption = '4-5';
                            });
                          },
                          child: Text(
                            '4-5',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              _selectedOption = '5+';
                            });
                          },
                          child: Text(
                            '5+',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 10),
          Container(
            width: 350,
            height: 150,
            decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.all(Radius.circular(10)),
                border: Border.all(color: Colors.blueAccent)),
            //
            padding: EdgeInsets.only(left: 15),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'Proje Detayı Giriniz',
                      style: TextStyle(fontSize: 30),
                    ),
                  ],
                ),
                TextField(
                  maxLines: null, // sınırsız sayıda satır
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    hintText: 'Proje detayını buraya yazın',
                  ),
                  onChanged: (text) {},
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  fixedSize: Size(120, 44),
                  primary: Colors.blue,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                    10,
                  ))),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text('Mesaj'),
                      content: Text('Projeniz oluşturulmuştur.'),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text('Tamam'),
                        ),
                      ],
                    );
                  },
                );
              },
              
              child: Text(
                'EKLE',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              )),
        ]),
      ),
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
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.white),),
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
              title: const Text('Flutter Projesine Katıl'),
              onTap: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => ProjeAraScreenF())),
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