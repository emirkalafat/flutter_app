import 'package:flutter/material.dart';

class AnaSayfa extends StatelessWidget {
  final int counter;

  const AnaSayfa({Key? key,required this.counter}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/second',arguments: 'Hello There');
              },
              child: const Text("second Page"),),
            TextButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                child: const Text('hello')),
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      );
    });
  }
}
