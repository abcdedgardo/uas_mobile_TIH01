import 'package:flutter/material.dart';
import 'package:uas_mobile/screens/about_screen.dart';
import 'package:uas_mobile/screens/editprofile_screen.dart';
import 'package:uas_mobile/screens/main_screen.dart';
import 'package:uas_mobile/screens/pricelist_screen.dart';
import 'package:uas_mobile/screens/productCub_screen.dart';
import 'package:uas_mobile/screens/productMatic_screen.dart';
import 'package:uas_mobile/screens/productSport_screen.dart';
import 'package:uas_mobile/screens/register_screen.dart';
import 'package:uas_mobile/screens/welcome_screen.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: WelcomeScreen.id,
      routes: {
        AboutScreen.id: (context) => AboutScreen(),
        EditProfileScreen.id: (context) => EditProfileScreen(),
        MainScreen.id: (context) => MainScreen(),
        PriceListScreen.id: (context) => PriceListScreen(),
        RegisterScreen.id: (context) => RegisterScreen(),
        WelcomeScreen.id: (context) => WelcomeScreen(),
        ProductCubScreen.id: (context) =>ProductCubScreen(),
        ProductMaticScreen.id: (context) =>ProductMaticScreen(),
        ProductSportScreen.id: (context) =>ProductSportScreen()
      },
    );
  }
}