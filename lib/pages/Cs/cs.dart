import 'package:feeeeeeee/pages/Data/data.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:feeeeeeee/register.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Pages.dart';
import '../Wid/widd.dart';

final TextEditingController _searchController = TextEditingController();
String searchText = '';
bool isSearchClicked = false;

class Courses extends StatefulWidget {
  @override
  courses createState() => courses();
}

class courses extends State<Courses> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      drawer: Drow(),
      appBar: AppBar(
        backgroundColor: Colors.black12,
        title: isSearchClicked
            ? Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: Color.fromRGBO(66, 150, 240, 0.3),
              border:
              Border.all(color: Color.fromRGBO(66, 150, 240, 0.4)),
              boxShadow: [
                BoxShadow(
                  color: Color.fromRGBO(66, 150, 240, 0.7),
                  blurRadius: 20,
                  offset: Offset(5, 5),
                )
              ]),
          child: TextField(
            controller: _searchController,
            decoration: const InputDecoration(
              contentPadding: EdgeInsets.fromLTRB(16, 20, 16, 12),
              hintStyle: TextStyle(color: Colors.black),
              border: InputBorder.none,
              hintText: 'Search..',
            ),
          ),
        )
            : Text(titlep,
            style: TextStyle(
              fontSize: 22,
              color: Color.fromRGBO(66, 150, 240, 0.9),
            )),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications,
                color: Color.fromRGBO(66, 150, 240, 0.9),
                size: 30,
              )),
          IconButton(
            onPressed: () {
              setState(() {
                isSearchClicked = !isSearchClicked;
                if (!isSearchClicked) {
                  _searchController.clear();
                }
              });
            },
            icon: Icon(
              isSearchClicked ? Icons.close : Icons.search,
              color: Color.fromRGBO(66, 150, 240, 0.9),
              size: 30,
            ),
          )
        ],
      ),
      backgroundColor: Color.fromRGBO(80, 140, 240, .1),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 4),
              child: Column(

                  children: [
                  for(int i=0;i<goro.length;i++)PostsC(context,lI[i],goro[i],percentic[i],cR[i],disco[i])
                  ]
              ),
            )
          ],
        ),
      ),
    );
  }
}


