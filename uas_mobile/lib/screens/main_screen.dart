import 'package:flutter/material.dart';
import 'package:uas_mobile/screens/about_screen.dart';
import 'package:uas_mobile/screens/editprofile_screen.dart';
import 'package:uas_mobile/screens/pricelist_screen.dart';
import 'package:uas_mobile/screens/productMatic_screen.dart';
import 'package:uas_mobile/screens/productSport_screen.dart';
import 'package:uas_mobile/screens/welcome_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:uas_mobile/screens/productCub_screen.dart';

class MainScreen extends StatefulWidget {
  static const String id = 'main_screen';

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final _auth = FirebaseAuth.instance;
  User loggedInUser;
  dynamic myDisplayName = 'User';
  String nama;
  String nim;
  String kelas;
  var _firebaseFirestore = FirebaseFirestore.instance.collection('profil');

  
  void initState() {
    super.initState();
    getCurrentUser();
    streamFirestoreData();
  }

  void  streamFirestoreData(){
    _firebaseFirestore.doc(loggedInUser.email).snapshots().listen((event) {
      if (event.data() != null) {
        setState(() {
          nama = event.data()['nama'];
          nim = event.data()['nim'];
          kelas = event.data()['kelas'];
        });
      }
    });
  }
  
  void getCurrentUser() {
    final user = _auth.currentUser;
    if (user != null) {
      loggedInUser = user;
      if (loggedInUser.displayName != null) {
        myDisplayName = loggedInUser.displayName;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async =>false,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Parts Catalogue',),
          backgroundColor: Colors.red[700],
        ),
        body: Container(
          child: Column(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Card(
                   child: InkWell(
                     onTap: (){
                       Navigator.pushNamed(context, ProductCubScreen.id);
                     },
                     child: ListTile(
                      leading: Image.asset(
                        'assets/img/icons_cub.png',
                        height: 50.0,
                        width: 50.0,
                        ),
                        title: Text('Cub'),
                     ),
                    ), 
                  ),
                  Card(
                   child: InkWell(
                     onTap: (){
                       Navigator.pushNamed(context, ProductMaticScreen.id);
                     },
                     child: ListTile(
                      leading: Image.asset(
                        'assets/img/icons_matic.png',
                        height: 50.0,
                        width: 50.0,
                        ),
                        title: Text('Matic'),
                     ),
                    ), 
                  ),
                  Card(
                   child: InkWell(
                     onTap: (){
                       Navigator.pushNamed(context, ProductSportScreen.id);
                     },
                     child: ListTile(
                      leading: Image.asset(
                        'assets/img/icons_sport.png',
                        height: 50.0,
                        width: 50.0,
                        ),
                        title: Text('Sport'),
                     ),
                    ), 
                  ),
                ],
              )
              ],
          )
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage('https://www.pngkey.com/png/detail/230-2301779_best-classified-apps-default-user-profile.png'),
                      radius: 30.0,
                    ),
                    Text('$nama',style: TextStyle(fontSize: 16, color: Colors.white),),
                    Text('${loggedInUser.email}',style: TextStyle(fontSize: 16, color: Colors.white),),
                    Text('$nim',style: TextStyle(fontSize: 16, color: Colors.white),),
                    Text('$kelas',style: TextStyle(fontSize: 16, color: Colors.white),)
                  ],
                ),
                decoration: BoxDecoration(
                  color: Colors.red[700]),
              ),
              ListTile(
                title: Text('Cek Harga'),
                leading: Icon(Icons.attach_money),
                onTap: (){
                  Navigator.pushNamed(context, PriceListScreen.id);
                },
              ),
              ListTile(
                title: Text('Atur Profil'),
                leading: Icon(Icons.edit),
                onTap: (){
                  Navigator.pushNamed(
                    context, EditProfileScreen.id)
                    .whenComplete(() => {streamFirestoreData()},
                  );
                },
              ),
              ListTile(
                title: Text('Tentang'),
                leading: Icon(Icons.info),
                onTap: (){
                  Navigator.pushNamed(
                    context, AboutScreen.id);
                },
              ),
              ListTile(
                title: Text('Keluar'),
                leading: Icon(Icons.power_settings_new),
                onTap: (){
                  _auth.signOut();
                  Navigator.pushReplacementNamed(
                              context, WelcomeScreen.id);
                },
              ),
            ],
          )
        ),
      )
    );
  }
}