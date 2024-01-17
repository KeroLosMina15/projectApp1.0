import 'package:feeeeeeee/pages/Data/data.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:feeeeeeee/register.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Pages.dart';
import '../Wid/widd.dart';

class pagec extends StatefulWidget {
  @override
  pc createState() => pc();
}

class pc extends State<pagec> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      drawer: Drow(),
      appBar: AppBar(
        backgroundColor: Colors.black12,
        title: Text('Zaki',
            style: TextStyle(
              fontSize: 22,
              color: Color.fromRGBO(66, 150, 240, 0.9),
            )),

      ),
      backgroundColor: Color.fromRGBO(80, 140, 240, .1),
      body: SingleChildScrollView(
          child: Column(
            children: [
              cop('ff', 'cc', 'dd')
            ],
          )),
    );
  }
}