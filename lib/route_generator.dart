import 'package:blog_site/pages/responsive_page.dart';
import 'package:blog_site/pages/favori_sayfa.dart';
import 'package:flutter/material.dart';

class RouteGenerator{
  static Route<dynamic> generateRoute(RouteSettings settings){
    final name = settings.name;
    switch(settings.name){
      case '/':
        return MaterialPageRoute(builder: (_) => const ResponsivePage());
      case '/second':
        if(name is String){
          return MaterialPageRoute(builder: (_) => const FavoritePage(data: 'abc'));
        }
        return _errorRoute();
      default: return _errorRoute();
    }
  }
  static Route<dynamic> _errorRoute(){
    return MaterialPageRoute(builder: (_) => Scaffold(
      appBar: AppBar(title: const Text("ERROR"),),
      body: const Center(
        child: Text("ERROR"),
      ),
    ));
  }
}