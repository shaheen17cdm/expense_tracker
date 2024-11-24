import 'package:expense_tracker/constants/colors.dart';
import 'package:expense_tracker/screens/login_page.dart';
import 'package:expense_tracker/screens/register_page.dart';
import 'package:expense_tracker/screens/splash_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: TextTheme(
          displaySmall: TextStyle(color: textColor,fontSize: 15)
        )
      ),
      initialRoute: '/',

      routes: {
        '/':(context)=>SplashPage(),
        'login':(context)=>LoginPage(),
        'register':(context)=>RegisterPage()
      },
    );
  }
}