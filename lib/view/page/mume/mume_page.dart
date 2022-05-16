import 'package:flutter/material.dart';
import 'package:mume/enums/mume_page_tab_type.dart';
import 'package:mume/view/componont/button.dart';
import 'package:mume/view/componont/require_login_widget.dart';
import 'package:mume/view/page/base_page.dart';
import 'package:mume/view/resource/strings.dart';
import 'package:mume/viewmodel/base_bloc.dart';
import 'package:mume/viewmodel/mume/mume_page_bloc.dart';

class MumePage extends StatefulWidget {
  const MumePage({Key? key}) : super(key: key);
  static final routeName = Strings.slash + (MumePage).toString();

  @override
  State<MumePage> createState() => _MumePageState();
}

class _MumePageState extends BasePageState<String, MumePageBloc, MumePage> with SingleTickerProviderStateMixin{
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: MumePageTabType.values.length, vsync: this);
  }

  @override
  Widget buildPage(BuildContext context, Size windowSize) {
    debugPrint("buildPage MumePageBloc");

    return Scaffold(
      body: RequireLoginWidget(
        bloc: bloc,
        intendLoginWidget: MyButton(
            onPressed: () => bloc.clickLogin(),
            text: Strings.login
        ),
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                title: Text(MumePage.routeName),
                pinned: true,
                floating: true,
                forceElevated: innerBoxIsScrolled,
                bottom: TabBar(
                  tabs: MumePageTabType.values.map((e) => Tab(text: e.label)).toList(),
                  controller: _tabController,
                  labelColor: Colors.black,
                  indicatorColor: Colors.purple,
                  labelStyle: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ];
          },
          body: TabBarView(
            controller: _tabController,
            children: MumePageTabType.values.map((e) => e.page).toList(),
          ),
        )
      ),
    );
  }

  @override
  void onChangeStateListener(BuildContext context, BaseState state, Size windowSize) {
    super.onChangeStateListener(context, state, windowSize);
  }
}