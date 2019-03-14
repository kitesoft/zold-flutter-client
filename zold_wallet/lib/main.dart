import 'package:flutter/material.dart';
import './home_page/home_page.dart';
import './login_page/login_page.dart';
import './pay_page/pay_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final Widget myHome = LoginPage();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Zold Wallet',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: myHome,
      routes: {
        '/login': (BuildContext context) => new LoginPage(),
        '/home': (BuildContext context) => new HomePage(),
        '/pay': (BuildContext context) => new PayPage(),
      },
    );
  }
}
