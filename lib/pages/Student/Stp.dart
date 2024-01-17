// TODO Implement this library.import 'package:feeeeeeee/pages/Data/data.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:feeeeeeee/register.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Pages.dart';
import '../Cs/cs.dart';
import '../Data/data.dart';
import '../Wid/widd.dart';

final TextEditingController _searchController = TextEditingController();
String searchText = '';
bool isSearchClicked = false;

class ss extends StatefulWidget {
  @override
  sp createState() => sp();
}

class sp extends State<ss> {
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 3,),
                    Text('Your Courses',style: TextStyle(color: Colors.blueAccent
                        ,fontSize: 20)),
                    SizedBox(height: 3,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://www.woolha.com/media/2020/03/eevee.png'),
                          backgroundColor:
                          Color.fromRGBO(66, 150, 240, 0.5),
                          radius: 35,
                        ),
                        for(int i=0;i<lI.length;i++)Row(children: [
                          SizedBox(width: 5,),
                          RowC(lI[i],goro[i],percentic[i],cR[i]),
                        ]),
                      ],
                    ),
                    SizedBox(height: 10,),
                    for(int i=0;i<data.length;i++)Column(children: [
                      SizedBox(width: 5,),
                      Container(
                        height: 150,
                        width: double.infinity,
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
                                onPressed: () {
                                  titlep=data[i];
                                  Navigator.push(
                                    context,
                                    CupertinoPageRoute(builder: (context) => Courses()),
                                  );
                                  print(i);

                                },
                                child: Text(
                                  data[i],
                                  style: TextStyle(
                                    fontSize: 30,
                                    color: Colors.black,
                                  ),
                                )),
                          ],
                        ),
                      ),SizedBox(height: 15,)
                    ],),



                  ]
              ),
            )
          ],
        ),
      ),
    );
  }
}
