import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:replica/src/pages/profile_page.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Colors.transparent
    ));

    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      initialRoute: 'init',
      routes: {        
        'init' : (BuildContext context) => ProfilePage()
      },
    );
  }
}