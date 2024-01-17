import 'package:percent_indicator/percent_indicator.dart';
import 'package:feeeeeeee/register.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Wid/widd.dart';
final TextEditingController _searchController = TextEditingController();
String searchText = '';
bool isSearchClicked = false;


class tt extends StatefulWidget {
  @override
  tp createState() => tp();
}

class tp extends State<tt> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
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
            : const Text('Zaki',
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
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 200,
                        width: 200,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Color.fromRGBO(66, 150, 240, 0.3),
                            border: Border.all(
                                color: Color.fromRGBO(66, 150, 240, 0.9)),
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromRGBO(66, 150, 240, 0.3),
                                blurRadius: 20,
                                offset: Offset(0, 10),
                              )
                            ]),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextButton(
                                onPressed: () {},
                                child: Text(
                                  'Students',
                                  style: TextStyle(
                                    fontSize: 30,
                                    color: Colors.black,
                                  ),
                                )),
                          ],
                        ),
                      ),
                      Container(
                        height: 200,
                        width: 200,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Color.fromRGBO(66, 150, 240, 0.3),
                            border: Border.all(
                                color: Color.fromRGBO(66, 150, 240, 0.9)),
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromRGBO(66, 150, 240, 0.3),
                                blurRadius: 20,
                                offset: Offset(0, 10),
                              )
                            ]),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextButton(
                                onPressed: () {},
                                child: Text(
                                  'Create Course',
                                  style: TextStyle(
                                    fontSize: 30,
                                    color: Colors.black,
                                  ),
                                )),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 200,
                        width: 200,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Color.fromRGBO(66, 150, 240, 0.3),
                            border: Border.all(
                                color: Color.fromRGBO(66, 150, 240, 0.9)),
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromRGBO(66, 150, 240, 0.3),
                                blurRadius: 20,
                                offset: Offset(0, 10),
                              )
                            ]),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextButton(
                                onPressed: () {},
                                child: Text(
                                  'Add H.W',
                                  style: TextStyle(
                                    fontSize: 30,
                                    color: Colors.black,
                                  ),
                                )),
                          ],
                        ),
                      ),
                      Container(
                        height: 200,
                        width: 200,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Color.fromRGBO(66, 150, 240, 0.3),
                            border: Border.all(
                                color: Color.fromRGBO(66, 150, 240, 0.9)),
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromRGBO(66, 150, 240, 0.3),
                                blurRadius: 20,
                                offset: Offset(0, 10),
                              )
                            ]),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextButton(
                                onPressed: () {},
                                child: Text(
                                  'Questions Students',
                                  style: TextStyle(
                                    fontSize: 30,
                                    color: Colors.black,
                                  ),
                                )),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}