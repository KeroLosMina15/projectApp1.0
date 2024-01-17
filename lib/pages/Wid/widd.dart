

import 'package:feeeeeeee/pages/Cs/coursepage.dart';
import 'package:percent_indicator/percent_indicator.dart';

import 'package:flutter/material.dart';

import '../../Pages.dart';
import '../Cs/cs.dart';
import '../Data/data.dart';
import 'package:flutter/cupertino.dart';


Widget PostsC(BuildContext context, String l, String p, double per, Color cr, String dis) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      SizedBox(height: 5,),
      Container(
        height: 150,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Color.fromRGBO(66, 150, 240, 0.3),
          border: Border.all(color: Color.fromRGBO(66, 150, 240, 0.9)),
          boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(66, 150, 240, 0.3),
              blurRadius: 20,
              offset: Offset(0, 10),
            )
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(width: 5, height: 5,),
                CircularPercentIndicator(
                  radius: 35.0,
                  lineWidth: 6.0,
                  percent: per,
                  center: CircleAvatar(
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          CupertinoPageRoute(builder: (context) => pagec()),
                        );
                        print(p);
                      },
                      child: Text(''),
                    ),
                    backgroundImage: NetworkImage(l),
                    radius: 25,
                  ),
                  progressColor: cr,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          CupertinoPageRoute(builder: (context) => pagec()),
                        );
                      },
                      child: Text(
                        '${p} Course',
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(width: 50,),
                    Text(dis, style: TextStyle(fontSize: 20, color: Colors.black)),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    ],
  );
}

Widget cop(String t,String l,String d){
  return Column(
    children: [
      SizedBox(height: 5),
    Container(
    height: 50,
    width: double.infinity,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(0),
        color: Color.fromRGBO(66, 150, 240, 0.3),
        border: Border.all(color: Color.fromRGBO(66, 150, 240, 0.9)),
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(66, 150, 240, 0.3),
            blurRadius: 20,
            offset: Offset(0, 10),
          )
        ]),child: Text(
      '  ${t}',
      style: TextStyle(
        fontSize: 30,
        color: Colors.black,
      ),
    ),),

      Container(
        height: 160,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(0),
            color: Color.fromRGBO(66, 150, 240, 0.3),
            border: Border.all(color: Color.fromRGBO(66, 150, 240, 0.9)),
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
                  '${l}',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                  ),
                )),
          ],
        ),
      ),
      Container(
        height: 160,
        width:double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(0),
            color: Color.fromRGBO(66, 150, 240, 0.3),
            border: Border.all(color: Color.fromRGBO(66, 150, 240, 0.9)),
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
                  '${d}',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                  ),
                )),
          ],
        ),
      ),
    ],
  );
}

Widget Drow(){
  return Drawer(
    backgroundColor: Color.fromRGBO(66, 150, 240, 0.1),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 50),
        Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color.fromRGBO(66, 150, 240, 0.3),
                border:
                Border.all(color: Color.fromRGBO(66, 150, 240, 0.9)),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(66, 150, 240, 0.3),
                    blurRadius: 20,
                    offset: Offset(0, 10),
                  )
                ]),

            child: Column(
              children: <Widget>[

                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Container(
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 5,
                        ),
                        CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://www.woolha.com/media/2020/03/eevee.png'),
                          backgroundColor:
                          Color.fromRGBO(66, 150, 240, 0.5),
                          radius: 35,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        SizedBox(
                          height: 80,
                        ),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'User Name',
                                style: TextStyle(
                                    fontSize: 25, color: Colors.black),
                              ),
                              Text(
                                'Score : 15',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.black),
                              ),
                            ]),
                      ],
                    ),
                  ),
                ),
                Container(
                  child: TextButton(
                    onPressed: () {},
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.account_circle_outlined,
                          size: 30,
                          color: Colors.black,
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        Text(
                          'Profile',
                          style:
                          TextStyle(fontSize: 25, color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: TextButton(
                    onPressed: () {},
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.chat_bubble,
                          size: 30,
                          color: Colors.black,
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        Text(
                          'Chats',
                          style:
                          TextStyle(fontSize: 25, color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: TextButton(
                    onPressed: () {},
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.task,
                          size: 30,
                          color: Colors.black,
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        Text(
                          'Assignment',
                          style:
                          TextStyle(fontSize: 25, color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: TextButton(
                    onPressed: () {},
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.paste,
                          size: 30,
                          color: Colors.black,
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        Text(
                          'Teachers',
                          style:
                          TextStyle(fontSize: 25, color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: TextButton(
                    onPressed: () {},
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          color: Colors.black,
                          Icons.settings,
                          size: 30,
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        Text(
                          'Settings',
                          style:
                          TextStyle(fontSize: 25, color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )),
      ],
    ),
  );
}
Widget RowC(String l,String p,double per,Color cr){
  double pe=per;
  return  CircularPercentIndicator(
    radius: 35.0,
    lineWidth: 6.0,
    percent: pe,
    center:
    CircleAvatar(
      child:  TextButton(
        onPressed: () {
          print(p);
        },
        child: Text(''),
      ),
      backgroundImage: NetworkImage(l),
      radius: 25,
    ),
    progressColor: cr,
  );
}


