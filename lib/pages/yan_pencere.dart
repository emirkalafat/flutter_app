import 'package:flutter/material.dart';

class NavigationDrawerWidget extends StatelessWidget {
  final padding = const EdgeInsets.symmetric(horizontal: 20);
  const NavigationDrawerWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: buildListView());
  }

  ListView buildListView() {
    return ListView(
    padding: EdgeInsets.zero,
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: const [
            Icon(
              Icons.person_rounded,
              size: 100,
            ),
            Text(
              'Emir Kalafat',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
      const Divider(
        height: 5,
        thickness: 2,
      ),
      const Padding(padding: EdgeInsets.all(16.0),
      child: Text('Tarifler',
      style: TextStyle(
        fontSize: 14,
      ),),),
      const ListTile(
        leading: Icon(Icons.android),
        title: Text('Tuzlular'),
      ),
      const ListTile(
        leading: Icon(Icons.cake),
        title: Text('Tatlılar'),
      ),
      const ListTile(
        leading: Icon(Icons.android),
        title: Text('Hamurişi'),
      ),
      const Divider(
        height: 5,
        thickness: 2,
      ),
      const ListTile(
        leading: Icon(Icons.settings),
        title: Text('Ayarlar'),
      )
    ],
  );
  }
}
