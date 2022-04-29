import 'dart:async';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/services.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:mume/config.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:mume/model/data_source/remote/rest_client.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:url_launcher/url_launcher.dart';
import 'PageAsk2.dart';

class MyWebView extends StatefulWidget {
  final String fcmToken;

  const MyWebView({Key? key, required this.fcmToken}) : super(key: key);

  @override
  MyWebViewState createState() => MyWebViewState();
}

class MyWebViewState extends State<MyWebView> {
  //웹뷰
  WebViewController? _webViewController;
  static const double _verticalScrollCondition = -10.0;

  //광고
  late BannerAd _bannerAd;
  bool _isAdReady = false;

  //백버튼 앱 종료
  DateTime? _backbuttonpressedTime;

  //네트워크 연결 상태
  ConnectivityResult _connectionStatus = ConnectivityResult.none;
  final Connectivity _connectivity = Connectivity();
  late StreamSubscription<ConnectivityResult> _connectivitySubscription;

  //스넥바
  final int snackBarDefaultDuration = 2;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  //네트워크
  late RestClient _api;

  @override
  void initState() {
    final dio = Dio();
    dio.options.headers["Content-Type"] = "application/json; charset=UTF-8";
    _api = RestClient(dio, baseUrl: Config.apiUrl);

    _initAD();

    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();

    initConnectivity();

    _connectivitySubscription = _connectivity.onConnectivityChanged.listen(_updateConnectionStatus);

    super.initState();
  }

  @override
  void dispose() {
    _bannerAd.dispose();
    _connectivitySubscription.cancel();
    super.dispose();
  }

  Future<void> initConnectivity() async {
    late ConnectivityResult result;

    try {
      result = await _connectivity.checkConnectivity();
    } on PlatformException catch (e) {
      debugPrint(e.message);
      return;
    }

    if (!mounted) {
      return Future.value(null);
    }

    return _updateConnectionStatus(result);
  }

  Future<void> _updateConnectionStatus(ConnectivityResult result) async {
    setState(() {
      _connectionStatus = result;
      if(_connectionStatus == ConnectivityResult.none){
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: const Text("네트워크 연결 상태를 확인해주세요."),
            duration: const Duration(seconds: 3000),
            action: SnackBarAction(
              label: '확인',
              onPressed: () => _hideNetworkSnackBar(),
            ),
          )
        );
      }else{
        _hideNetworkSnackBar();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => _goBack(context),
      child: Scaffold(
        key: scaffoldKey,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: WebView(
                initialUrl: Config.getWebViewUrl(),
                javascriptMode: JavascriptMode.unrestricted,
                javascriptChannels: {
                  _getFcmToken(), _goAskPageChannel()
                },
                onWebViewCreated: (WebViewController webViewController) {
                  _webViewController = webViewController;
                },
                gestureRecognizers: Set()
                  ..add(Factory<AllowVerticalDragGestureRecognizer>(() => AllowVerticalDragGestureRecognizer()
                    ..onUpdate = (data){
                      debugPrint("data ${data.delta.dy}");
                      if(_verticalScrollCondition > data.delta.dy) {
                        _webViewController?.evaluateJavascript("window.dispatchEvent(new Event('resize'));");
                      }
                    }
                  )
                ),
                navigationDelegate: (NavigationRequest request) async {
                  if (request.url.contains("https://qr.kakaopay.com")) {
                    debugPrint("page start == url ${request.url}");
                    launch(request.url)
                        .then((isLaunch) => debugPrint("page start isLaunch == $isLaunch"))
                        .catchError((e) => debugPrint("page start error == $e"));
                    return NavigationDecision.prevent;
                  } else {
                    return NavigationDecision.navigate;
                  }
                },
              ),
            ),
            _isAdReady
              ? Container(
                  color: Colors.white,
                  width: double.infinity,
                  height: _bannerAd.size.height.toDouble(),
                  child: AdWidget(ad: _bannerAd),
                )
              : Container()
          ],
        ),
      ),
    );
  }
  Future<bool> _goBack(BuildContext context) async {
    if (_webViewController == null) {
      return true;
    }
    if (await _webViewController!.canGoBack()) {
      _webViewController!.goBack();
      return Future.value(false);
    } else {
      return _exitAppProcess();
    }
  }

  JavascriptChannel _goAskPageChannel() {
    return JavascriptChannel(
        name: 'AppGoAskPage',
        onMessageReceived: (JavascriptMessage msg) {
          Navigator.pushNamed(context, PageAsk2.routeName);
          debugPrint("AppGoAskPage message == ${msg.message}");
        }
    );
  }

  JavascriptChannel _getFcmToken() {
    return JavascriptChannel(
        name: 'AppGetFcmToken',
        onMessageReceived: (JavascriptMessage msg) {
          debugPrint("AppGetFcmToken \nfcm ${widget.fcmToken}, \nmessage == auth ${msg.message}");

          Map<String, String> body = {};
          if(msg.message.isNotEmpty){
            body["checkToken"] = msg.message;
          }

          if(widget.fcmToken.isNotEmpty) {
            body["fcmToken"] = widget.fcmToken;
          }

          _api.postTokens(body)
              .then((_) => debugPrint("network success"))
              .catchError((e) => debugPrint("network error == ${e.toString()}"));
        }
    );
  }

  void _initAD() {
    _bannerAd = BannerAd(
      adUnitId: Config.getAdUnitId(),
      size: AdSize.banner,
      request: const AdRequest(),
      listener: BannerAdListener(
        // Called when an ad is successfully received.
        onAdLoaded: (Ad ad) {
          setState(() {
            _isAdReady = true;
          });
          debugPrint('Ad loaded.');
        },
        // Called when an ad request failed.
        onAdFailedToLoad: (Ad ad, LoadAdError error) {
          // Dispose the ad here to free resources.
          ad.dispose();
          _isAdReady = false;
          debugPrint('Ad failed to load: $error');
        },
        // Called when an ad opens an overlay that covers the screen.
        onAdOpened: (Ad ad) => debugPrint('Ad opened.'),
        // Called when an ad removes an overlay that covers the screen.
        onAdClosed: (Ad ad) => debugPrint('Ad closed.'),
        // Called when an impression occurs on the ad.
        onAdImpression: (Ad ad) => debugPrint('Ad impression.'),
      ),
    );

    _bannerAd.load();
  }

  Future<bool> _exitAppProcess() {
    DateTime currentTime = DateTime.now();

    bool backButton = _backbuttonpressedTime == null || currentTime.difference(_backbuttonpressedTime!) > Duration(seconds: snackBarDefaultDuration);

    if (backButton) {
      _backbuttonpressedTime = currentTime;

      ScaffoldMessenger.of(context).hideCurrentSnackBar();
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(

            content: const Text("'뒤로' 버튼을 한 번 더 누르시면 종료됩니다."),
            duration: Duration(seconds: snackBarDefaultDuration),
          )
      );

      return Future.value(false);
    }

    SystemNavigator.pop();
    return Future.value(false);
  }

  void _hideNetworkSnackBar() {
    ScaffoldMessenger.of(context).hideCurrentSnackBar();

    _webViewController?.getTitle()
      .then((title) => _reloadWebView(title))
      .catchError((error) => debugPrint(error.toString()));
  }

  _reloadWebView(String? title) {
    if(title != null && (title.contains("웹페이지를 사용할 수 없음") || title.contains("Webpage not available"))){
      _webViewController?.reload();
    }
  }
}

class AllowVerticalDragGestureRecognizer extends VerticalDragGestureRecognizer {
  @override
  void rejectGesture(int pointer) {
    acceptGesture(pointer);  //override rejectGesture here
  }
}