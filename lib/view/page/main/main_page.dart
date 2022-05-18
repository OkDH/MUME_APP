import 'package:flutter/material.dart';
import 'package:mume/view/page/base_page.dart';
import 'package:mume/view/resource/assets.dart';
import 'package:mume/view/resource/strings.dart';
import 'package:mume/viewmodel/base_bloc.dart';
import 'package:mume/viewmodel/main/main_page_bloc.dart';
import 'package:mume/view/resource/color.dart';
import 'package:mume/view/resource/sizes.dart';
import 'package:mume/helper/print_format_helper.dart';
import 'package:mume/helper/text_style_helper.dart';
import 'package:mume/model/dto/market_index.dart';
import 'package:mume/model/dto/stock.dart';


class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);
  static final routeName = Strings.slash + (MainPage).toString();

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends BasePageState<String, MainPageBloc, MainPage> {

  @override
  Widget buildPage(BuildContext context, Size windowSize) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(Sizes.paddingBody),
              decoration: const BoxDecoration(
                color: MyColor.primary,
              ),
              child: Column(
                children: [
                  Container(
                    child: const Text("MUME", style: TextStyle(fontSize: Sizes.textLarge, color: Colors.white, fontWeight: FontWeight.bold),),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: Sizes.paddingDefault),
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        // _getMarketIndexCart(bloc.marketIndex!.dji!),
                        // _getMarketIndexCart(bloc.marketIndex!.ixic!),
                        // _getMarketIndexCart(bloc.marketIndex!.gspc!),
                        // _getMarketIndexCart(bloc.marketIndex!.sox!),
                        // _getMarketIndexCart(bloc.marketIndex!.ymf!),
                        // _getMarketIndexCart(bloc.marketIndex!.nqf!),
                        // _getMarketIndexCart(bloc.marketIndex!.esf!),
                        // _getMarketIndexCart(bloc.marketIndex!.rtyf!),
                        // _getMarketIndexCart(bloc.marketIndex!.krwx!),
                        // _getMarketIndexCart(bloc.marketIndex!.clf!),
                        // _getMarketIndexCart(bloc.marketIndex!.gcf!),
                        // _getMarketIndexCart(bloc.marketIndex!.sif!),
                        // _getMarketIndexCart(bloc.marketIndex!.tnx!),
                        // _getMarketIndexCart(bloc.marketIndex!.vix!),
                        // _getMarketIndexCart(bloc.marketIndex!.ks11!),
                        // _getMarketIndexCart(bloc.marketIndex!.kq11!),
                        // _getMarketIndexCart(bloc.marketIndex!.cnss!),
                        // _getMarketIndexCart(bloc.marketIndex!.n225!),
                        // _getMarketIndexCart(bloc.marketIndex!.stoxx!),
                        // _getMarketIndexCart(bloc.marketIndex!.btckrw!),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      )
    );
  }

  Card _getMarketIndexCart(Stock stock){
    return Card(
      shape: RoundedRectangleBorder(
        // side: const BorderSide(color: Colors.white),
        borderRadius: BorderRadius.circular(Sizes.circular),
      ),
      margin: EdgeInsets.only(right: Sizes.paddingSideRatio),
      child: Container(
        padding: EdgeInsets.all(Sizes.paddingDefault),
        child: Column(
          children: [
            Text(stock.priceClose.toString())
          ],
        ),
      )
    );
  }

  @override
  void onChangeStateListener(BuildContext context, BaseState state, Size windowSize) {
    super.onChangeStateListener(context, state, windowSize);
  }

}