import 'package:blog_site/pages/yan_pencere.dart';
import 'package:blog_site/responsive.dart';
import 'package:blog_site/screens/mobile_screen.dart';
import 'package:flutter/material.dart';

class ResponsivePage extends StatelessWidget {
  const ResponsivePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Scaffold(
      //1340
      body: Responsive(
          mobile: MobileScreen(title: "Burası Mobil Ekranıdır!",),
          tablet: Row(
            children: const [
              Expanded(child: NavigationDrawerWidget(),flex: 2,),
              Expanded(child: MobileScreen(title: "Burası Tablet Ekranıdır!"),flex: 5),
            ],
          ),
          desktop: Row(
            children: const [
              NavigationDrawerWidget(),
              Expanded(child: MobileScreen(title: "Burası Masaüstü Ekranıdır!",)),
        ],
      ),)

    );
  }
}
