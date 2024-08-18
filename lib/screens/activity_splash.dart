import 'dart:async';

import 'package:flutter/material.dart';

import '../constant/singleton_objects.dart';
import 'activity_home.dart';

class ActivitySplash extends StatefulWidget {
  const ActivitySplash({Key? key}) : super(key: key);

  @override
  State<ActivitySplash> createState() => _ActivitySplashState();
}

class _ActivitySplashState extends State<ActivitySplash> {

  @override
  void initState() {
    super.initState();
    /// When main function call then run splash screen activity after finish 3 seconds timer then show ActivityHome screen
    /// @author Priyanka
    Timer(const Duration(seconds: 3), () {
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const ActivityHome(),));

    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
     ///Set splash screen background color
      backgroundColor: Color(0xff84c447),
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.width / 2.5,
          width: MediaQuery.of(context).size.width / 2.5,
          child: Image.asset("assets/images/logo.jpg"),
        ),
      ),
    );
  }
}
