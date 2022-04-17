import 'package:vocas_jp/view/page/base_page.dart';
import 'package:vocas_jp/view/page/home/study/vocabulary_list_page.dart';
import 'package:vocas_jp/view/resource/colors.dart';
import 'package:vocas_jp/view/resource/strings.dart';
import 'package:vocas_jp/viewModel/home_page_bloc.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  static final routeName = Strings.slash + (HomePage).toString();

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends BasePageState<String, HomePageBloc, HomePage> {

  @override
  Widget buildScreen(BuildContext context, Size windowSize) {
    return SafeArea(
      bottom: false,
      child: Scaffold(
        body: PageView(
          controller: bloc.pageController,
          onPageChanged: (pageIndex) => bloc.onPageChanged(pageIndex),
          children: const [
            VocabularyListPage(),
            Text("2"),
            Text("3"),
            Text("4"),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: MyColor.primary,
          selectedItemColor: MyColor.secondary,
          unselectedItemColor: MyColor.disable,
          onTap: (iconIndex) => bloc.onPageChanged(iconIndex),
          currentIndex: bloc.currentPageIndex,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.edit_outlined), label: Strings.studyRoom),
            BottomNavigationBarItem(icon: Icon(Icons.school), label: Strings.testRoom),
            BottomNavigationBarItem(icon: Icon(Icons.one_k), label: Strings.rankingRoom),
            BottomNavigationBarItem(icon: Icon(Icons.perm_contact_calendar), label: Strings.myRoom),
          ],
        ),
      ),
    );
  }
}