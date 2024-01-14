import 'dart:developer';
import 'dart:ffi';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:feeeeeeee/register.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:video_player/video_player.dart';

final TextEditingController _searchController = TextEditingController();
String searchText = '';
bool isSearchClicked = false;
late int Count;
List data=['Courses','Quizzes','Sheets'];



late String titlep;

class DataPages extends StatefulWidget {

  @override
  _DataState createState() => _DataState();
}

class _DataState extends State<DataPages> {

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
               for(int i=0;i<goro.length;i++)PostsC(lI[i],goro[i],percentic[i],cR[i],disco[i])
                  ]
              ),
            )
          ],
        ),
      ),
    );
  }
}


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


List lI=['https://w7.pngwing.com/pngs/595/79/png-transparent-dart-programming-language-flutter-object-oriented-programming-flutter-logo-class-fauna-bird.png'
,'https://p7.hiclipart.com/preview/405/878/407/java-runtime-environment-computer-icons-java-platform-standard-edition-java.jpg'
,'https://e7.pngegg.com/pngimages/520/669/png-clipart-c-logo-c-programming-language-computer-icons-computer-programming-programming-miscellaneous-blue-thumbnail.png'];
List goro=['Flutter','java','c++'];
List disco=['12 Video ,5 pdf','62 Video ,2 pdf','128 Video ,15 pdf'];
List percentic=[0.85,0.35,0.55];
List cR=[Colors.lightGreen,Colors.red,Colors.blue];

Widget PostsC(String l,String p,double per,Color cr,String dis){

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
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 5,),
          Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(width: 5,height: 5,),
       CircularPercentIndicator(
         radius: 35.0,
         lineWidth: 6.0,
         percent: per,
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
       ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextButton(onPressed: (){},
                    child: Text('${p} Course',style: TextStyle(
                      fontSize: 30,
                      color: Colors.black,)),
                  ),
                    SizedBox(width: 50,),
                    Text(dis,style: TextStyle(fontSize: 20,color: Colors.black,)),
                  ],
                ),
              ]),

          ],
      )

    ),

  ],);


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
                                    CupertinoPageRoute(builder: (context) => DataPages()),
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

class Courses extends StatefulWidget {
  @override
  courses createState() => courses();
}

class courses extends State<Courses> {
  List co = [];

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
        child: ListView.builder(
          itemCount: goro.length,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Container(
                    height: 160,
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
                              i = index;
                            },
                            child: Text(
                              'Course ${goro[index]}',
                              style: TextStyle(
                                fontSize: 30,
                                color: Colors.black,
                              ),
                            )),
                      ],
                    ),
                  ),
                  SizedBox(height: 5),
                ],
              ),
            );
            ;
          },
        ),
      ),
    );
  }
}

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
            children: [
              Text(
                'title Cours${i}',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                ),
              ),
              Container(
                height: 160,
                width: 200,
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
                    ]),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'Video',
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
                width: 200,
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
                    ]),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'Description Course',
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.black,
                          ),
                        )),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
