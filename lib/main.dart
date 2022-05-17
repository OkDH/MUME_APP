import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:mume/model/repository/mume/account_repository.dart';
import 'package:mume/model/repository/mume/stock_repository.dart';
import 'package:mume/model/repository/login_repository.dart';
import 'package:mume/model/repository/market_index_repository.dart';
import 'package:mume/model/repository/splash_repository.dart';
import 'package:mume/view/page/home_page.dart';
import 'package:mume/view/page/legacy/PageAsk2.dart';
import 'package:mume/view/page/legacy/PageHome.dart';
import 'package:mume/view/page/login_page.dart';
import 'package:mume/view/page/splash_page.dart';
import 'package:mume/view/resource/color.dart';
import 'package:mume/view/resource/sizes.dart';
import 'package:mume/viewmodel/feed/feed_page_bloc.dart';
import 'package:mume/viewmodel/home_page_bloc.dart';
import 'package:mume/viewmodel/login_page_bloc.dart';
import 'package:mume/viewmodel/main/main_page_bloc.dart';
import 'package:mume/viewmodel/more/more_page_bloc.dart';
import 'package:mume/viewmodel/mume/account_page_bloc.dart';
import 'package:mume/viewmodel/mume/dash_board_page_bloc.dart';
import 'package:mume/viewmodel/mume/income_page_bloc.dart';
import 'package:mume/viewmodel/mume/mume_page_bloc.dart';
import 'package:mume/viewmodel/mume/order_list_page_bloc.dart';
import 'package:mume/viewmodel/splash_page_bloc.dart';
import 'package:mume/viewmodel/vr/vr_page_bloc.dart';

void main() {
  final splash = SplashRepository();    //baseRepository.api 초기화 미리 하기위해서 여기서 생성
  WidgetsFlutterBinding.ensureInitialized();

  //TODO 광고 초기화 실패 시 수정 필요 로그 -> analytics event
  MobileAds.instance.initialize()
      .then((_) => debugPrint("ad init success"))
      .catchError((e) => debugPrint("ad init error == ${e.toString()}"));

  //TODO FirebaseMessaging 초기화 실패해도 앱은 실행될 수 있도록 수정 필요, 초기화 실패 시 analytics event 연동
  Firebase.initializeApp()
      .then((_) => FirebaseMessaging.instance.getToken())
      .catchError((e) => debugPrint("error == ${e.toString()}"))
      .whenComplete(() => runApp(MyApp(splashRepository: splash,)));
}

class MyApp extends StatelessWidget {
  final SplashRepository splashRepository;

  const MyApp({
      Key? key,
      required this.splashRepository,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var loginRepo = LoginRepository();

    return MultiBlocProvider(
      providers: [
        ///Mume sub page
        BlocProvider(create: (BuildContext context) => DashBoardPageBloc(),),
        BlocProvider(create: (BuildContext context) => AccountPageBloc(AccountRepository(), StockRepository(), MarketIndexRepository(), loginRepo),),
        BlocProvider(create: (BuildContext context) => OrderListPageBloc(StockRepository()),),
        BlocProvider(create: (BuildContext context) => IncomePageBloc(),),

        ///home bottomSheet
        BlocProvider(create: (BuildContext context) => MainPageBloc(MarketIndexRepository(), loginRepo),),
        BlocProvider(create: (BuildContext context) => FeedPageBloc(),),
        BlocProvider(create: (BuildContext context) => MumePageBloc(loginRepo),),
        BlocProvider(create: (BuildContext context) => VrPageBloc(loginRepo),),
        BlocProvider(create: (BuildContext context) => MorePageBloc(loginRepo),),

        BlocProvider(create: (BuildContext context) => SplashPageBloc(splashRepository),),
        BlocProvider(create: (BuildContext context) => LoginPageBloc(loginRepo),),
        BlocProvider(create: (BuildContext context) => HomePageBloc(
          context.read<MumePageBloc>(),
          context.read<VrPageBloc>(),
          context.read<MorePageBloc>(),
        ),),
      ],
      child: MaterialApp(
        theme: ThemeData(
          scaffoldBackgroundColor: MyColor.background,
          textButtonTheme: TextButtonThemeData(
            style: TextButton.styleFrom(fixedSize: const Size.fromHeight(Sizes.btnHeight)),
          ),
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.white,
            iconTheme: IconThemeData(color: MyColor.textColor),
            actionsIconTheme: IconThemeData(color: MyColor.textColor),
            centerTitle: false,
            elevation: 0.0,
            titleTextStyle: TextStyle(color: MyColor.textColor, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          textTheme: const TextTheme(
            bodyText2: TextStyle(color: MyColor.textColor),
          )
        ),
        debugShowCheckedModeBanner: false,
        home: const SplashPage(),
        routes: {
          SplashPage.routeName: (context) => const SplashPage(),
          LoginPage.routeName: (context) => const LoginPage(),
          HomePage.routeName: (context) => const HomePage(),
        },
      ),
    );
  }
}

//TODO 추후 legacy 삭제
class MyAppLegacy extends StatelessWidget {
  final String fcmToken;
  const MyAppLegacy(this.fcmToken, {Key? key}) : super(key: key);

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

void logd(String msg){
  debugPrint(msg);
}