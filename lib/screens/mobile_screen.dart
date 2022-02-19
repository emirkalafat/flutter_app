import 'package:blog_site/pages/ana_sayfa.dart';
import 'package:blog_site/pages/favori_sayfa.dart';
import 'package:blog_site/pages/yan_pencere.dart';
import 'package:flutter/material.dart';

class MobileScreen extends StatefulWidget {
  const MobileScreen({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MobileScreen> createState() => _MobileScreenState();
}

class _MobileScreenState extends State<MobileScreen> {
  int currentIndex = 0;
  int _counter = 0;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  final screens = [
    AnaSayfa(counter: 0,),
    FavoritePage(data: 'data')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const NavigationDrawerWidget(),
        appBar: buildAppBar(),
        body: IndexedStack(index: currentIndex, children: screens),
        floatingActionButton: buildFloatingActionButton(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: buildBottomNavigationBar());
  }

  AppBar buildAppBar() {
    return AppBar(
        title: Text(widget.title),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: IconButton(
              onPressed: null,
              icon: Icon(Icons.search, color: Colors.white),
            ),
          )
        ],
      );
  }

  FloatingActionButton buildFloatingActionButton() {
    return FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'En Son Yazı',
        child: const Icon(
          Icons.article_outlined,
          size: 30,
          color: Colors.white70,
        ),
      );
  }

  BottomNavigationBar buildBottomNavigationBar() {
    return BottomNavigationBar(
        showUnselectedLabels: false,
        iconSize: 30,
        backgroundColor: Colors.blueGrey,
        type: BottomNavigationBarType.fixed,
        onTap: (index) => setState(() => currentIndex = index),
        currentIndex: currentIndex,
        items: const [
          BottomNavigationBarItem(label: 'Ana Ekran', icon: Icon(Icons.home)),
          BottomNavigationBarItem(
              label: 'Beğeniler', icon: Icon(Icons.favorite))
        ],
      );
  }
}
