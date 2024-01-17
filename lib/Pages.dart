import 'dart:developer';
import 'dart:ffi';
import 'package:feeeeeeee/pages/Data/data.dart';
import 'package:feeeeeeee/pages/Student/Stp.dart';
import 'package:feeeeeeee/pages/Wid/widd.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:feeeeeeee/register.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:video_player/video_player.dart';


late int Count;
List data=['Courses','Quizzes','Sheets'];



late String titlep;



class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  FirebaseAuth instance=FirebaseAuth.instance;
  void initState(){
    super.initState();
    instance.authStateChanges().listen((User? user) {
      if(user == null){

        Navigator.pushReplacement(
          context,
          CupertinoPageRoute(builder: (context) => log()),
        );
      }else{

        Navigator.pushReplacement(
          context,
          CupertinoPageRoute(builder: (context) => ss()),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("hey"),
        ),
        body: Center(
          child: Text("hm"),
        )
    );
  }
}

var i;



