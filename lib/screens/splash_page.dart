import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {

    Future.delayed(Duration(seconds: 4),(){

      Navigator.pushReplacementNamed(context, 'login');
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(                  
      appBar: AppBar(),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: EdgeInsets.all(20),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/img/logo.jpg',height: 100,width: 180,),
          ],
        ),
      ),
    );
  }
}