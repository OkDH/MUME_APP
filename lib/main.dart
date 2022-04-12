
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:mume/view/page/legacy/PageAsk2.dart';
import 'package:mume/view/page/legacy/PageHome.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  MobileAds.instance.initialize()
      .then((_) => debugPrint("ad init success"))
      .catchError((e) => debugPrint("error == ${e.toString()}"));

  Firebase.initializeApp()
      .then((_) => FirebaseMessaging.instance.getToken())
      .then((fcmToken) => runApp(MyApp(fcmToken ?? "")))
      .catchError((e) => debugPrint("error == ${e.toString()}"));
}

class MyApp extends StatelessWidget {
  final String fcmToken;
  const MyApp(this.fcmToken, {Key? key}) : super(key: key);

  @override
  StatelessElement createElement() {
    FirebaseMessaging.instance.requestPermission(
      alert: true,
      announcement: false,
      badge: true,
      carPlay: false,
      criticalAlert: false,
      provisional: false,
      sound: true,
    ).then((setting) => debugPrint("FirebaseMessaging.instance.requestPermission fcm setting == ${setting.toString()}"))
    .catchError((e) => debugPrint("FirebaseMessaging.instance.requestPermission error == ${e.toString()}"));

    return super.createElement();
  }
  @override
  Widget build(BuildContext context) {
    debugPrint("fcm == $fcmToken");

    return MaterialApp(
      title: 'MUME',
      theme: ThemeData(primarySwatch: Colors.blue,),
      initialRoute: PageHome.routeName,
      routes: {
        PageHome.routeName: (context) => PageHome(fcm: fcmToken),
        PageAsk2.routeName: (context) => const PageAsk2(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
