import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:provider/provider.dart';



import 'Pages.dart';

FirebaseAuth auth = FirebaseAuth.instance;



int selectedOption = 1;

class GoogleP extends ChangeNotifier{
  final googleS=GoogleSignIn();
  GoogleSignInAccount? _user;

  GoogleSignInAccount get user => _user!;

  Future googleL() async{
    final googleUser =await googleS.signIn();
    if(googleUser == null)return;
    _user =googleUser;

    final googleAuth = await googleUser.authentication;

    final credential = GoogleAuthProvider.credential(
      accessToken : googleAuth.accessToken,
      idToken :googleAuth.idToken,
    );

    await FirebaseAuth.instance.signInWithCredential(credential);

    notifyListeners();
  }
}


class rr extends StatefulWidget {
  @override
  Register createState() => Register();
}
class Register extends State<rr> {
  String? FNumber;
  String? sCountryCode;
  bool loading =false;
  late final String phonet;
  final  auth=FirebaseAuth.instance;
  String? _e,_p;
  bool light0 = true;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color.fromRGBO(66, 150, 240, .1),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 400,
              child: Stack(
                children: <Widget>[
                  Positioned(
                    top: -40,
                    height: 400,
                    width: width,
                    child: Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/background.png'),
                              fit: BoxFit.fill
                          )
                      ),
                    ),
                  ),
                  Positioned(
                    height: 400,
                    width: width+20,
                    child: Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/background-2.png'),
                              fit: BoxFit.fill
                          )
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Register", style: TextStyle(color: Color.fromRGBO(66, 150, 240, 0.9), fontWeight: FontWeight.bold, fontSize: 30),),
                  SizedBox(height: 30,),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color:Color.fromRGBO(66, 150, 240, 0.3) ,
                        border: Border.all(color: Color.fromRGBO(66, 150, 240, 0.9)),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(66, 150, 240, 0.3),
                            blurRadius: 20,
                            offset: Offset(0, 10),
                          )
                        ]
                    ),
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              border: Border(bottom: BorderSide(
                                  color: Color.fromRGBO(66, 150, 240, 0.3)
                              ))
                          ),

                          child: TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Email",
                                hintStyle: TextStyle(color: Colors.black45)
                            ),
                            onChanged: (value){
                              setState(() {
                                this._e=value;
                              });
                            },
                          ),
                        ),

                      ],
                    ),
                  ),
                  SizedBox(height: 30,),
                  MaterialButton(
                    onPressed: () {
                    },
                    color: Color.fromRGBO(66, 150, 240, 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    height: 50,
                    child: Center(child: Text("Continue", style: TextStyle(color: Colors.white),),
                    ),
                  ),
                  SizedBox(height: 15,),
                  MaterialButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        CupertinoPageRoute(builder: (context) => HomePage()),
                      );
                    },
                    color: Color.fromRGBO(66, 150, 240, 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    height: 50,
                    child: Center(child: Text("Back", style: TextStyle(color: Colors.white),),
                    ),
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


class cc extends StatefulWidget {
  final String verId;
  cc({Key? key, required this.verId}) :super(key :key);
  String sCountryCode = '+20';

  @override
  State<cc> createState() => code();
}
class code extends State<cc> {


  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color.fromRGBO(66, 150, 240, .1),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 400,
              child: Stack(
                children: <Widget>[
                  Positioned(
                    top: -40,
                    height: 400,
                    width: width,
                    child: Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/background.png'),
                              fit: BoxFit.fill
                          )
                      ),
                    ),
                  ),
                  Positioned(
                    height: 400,
                    width: width+20,
                    child: Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/background-2.png'),
                              fit: BoxFit.fill
                          )
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Verification Code", style: TextStyle(color: Color.fromRGBO(66, 150, 240, 0.9), fontWeight: FontWeight.bold, fontSize: 30),),
                  SizedBox(height: 30,),
                  Form(
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color:Color.fromRGBO(66, 150, 240, 0.3) ,
                              border: Border.all(color: Color.fromRGBO(66, 150, 240, 0.9)),
                              boxShadow: [
                                BoxShadow(
                                  color: Color.fromRGBO(66, 150, 240, 0.3),
                                  blurRadius: 20,
                                  offset: Offset(0, 10),
                                )
                              ]
                          ),
                          height: 68,
                          width: 300,
                          child:  TextField(
                          ),
                        ),

                      ],
                    ),
                  ),

                  SizedBox(height: 30,),

                  MaterialButton(
                    onPressed: () async {
                    },
                    color: Color.fromRGBO(66, 150, 240, 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    height: 50,
                    child: Center(child: Text("Chack", style: TextStyle(color: Colors.white),),
                    ),
                  ),
                  SizedBox(height: 20,),
                  MaterialButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => rr()));
                    },
                    color: Color.fromRGBO(66, 150, 240, 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    height: 50,
                    child: Center(child: Text("Back", style: TextStyle(color: Colors.white),),
                    ),
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

class ra extends StatefulWidget {
  @override
  reg createState() => reg();

}
class reg extends State<ra> {

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color.fromRGBO(66, 150, 240, .1),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 400,
              child: Stack(
                children: <Widget>[
                  Positioned(
                    top: -40,
                    height: 400,
                    width: width,
                    child: Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/background.png'),
                              fit: BoxFit.fill
                          )
                      ),
                    ),
                  ),
                  Positioned(
                    height: 400,
                    width: width+20,
                    child: Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/background-2.png'),
                              fit: BoxFit.fill
                          )
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Register", style: TextStyle(color: Color.fromRGBO(66, 150, 240, 0.9), fontWeight: FontWeight.bold, fontSize: 30),),
                  SizedBox(height: 30,),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color:Color.fromRGBO(66, 150, 240, 0.3) ,
                        border: Border.all(color: Color.fromRGBO(66, 150, 240, 0.9)),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(66, 150, 240, 0.3),
                            blurRadius: 20,
                            offset: Offset(0, 10),
                          )
                        ]
                    ),
                    child: Column(
                      children: <Widget>[
                        Container(
                          child: Column(
                            children: [
                              ListTile(
                                title: const Text('Student',style: TextStyle(fontSize: 20)),
                                leading: Radio<int>(
                                  value: 1,
                                  groupValue: selectedOption,
                                  activeColor: Colors.black, // Change the active radio button color here
                                  fillColor: MaterialStateProperty.all(Colors.red), // Change the fill color when selected
                                  splashRadius: 20, // Change the splash radius when clicked
                                  onChanged: (value) {
                                    setState(() {
                                      selectedOption = 1;
                                    });
                                  },
                                ),
                              ),
                              ListTile(
                                title: const Text('Teacher',style: TextStyle(fontSize: 20)),
                                leading: Radio<int>(
                                  value: 2,
                                  groupValue: selectedOption,
                                  activeColor: Colors.black, // Change the active radio button color here
                                  fillColor: MaterialStateProperty.all(Colors.red), // Change the fill color when selected
                                  splashRadius: 25, // Change the splash radius when clicked
                                  onChanged: (value) {
                                    setState(() {
                                      selectedOption =2;
                                    });
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),


                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              border: Border(bottom: BorderSide(
                                  color: Color.fromRGBO(66, 150, 240, 0.3)
                              ))
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "User Name",
                                hintStyle: TextStyle(color: Colors.black45)
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              border: Border(bottom: BorderSide(
                                  color: Color.fromRGBO(66, 150, 240, 0.3)
                              ))
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Password",
                                hintStyle: TextStyle(color: Colors.black45)
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              border: Border(bottom: BorderSide(
                                  color: Color.fromRGBO(66, 150, 240, 0.3)
                              ))
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "RePassword",
                                hintStyle: TextStyle(color: Colors.black45)
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),


                  SizedBox(height: 30,),
                  MaterialButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ss()));
                    },
                    color: Color.fromRGBO(66, 150, 240, 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    height: 50,
                    child: Center(child: Text("Continue", style: TextStyle(color: Colors.white),),
                    ),
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

class log extends StatefulWidget{

  @override
  login createState() => login();
}
class login extends State<log>{
  String? _e,_p;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color.fromRGBO(66, 150, 240, .1),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 400,
              child: Stack(
                children: <Widget>[
                  Positioned(
                    top: -40,
                    height: 400,
                    width: width,
                    child: Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/background.png'),
                              fit: BoxFit.fill
                          )
                      ),
                    ),
                  ),
                  Positioned(
                    height: 400,
                    width: width+20,
                    child: Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/background-2.png'),
                              fit: BoxFit.fill
                          )
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Welcome", style: TextStyle(color: Color.fromRGBO(66, 150, 240, 0.9), fontWeight: FontWeight.bold, fontSize: 30),),
                  SizedBox(height: 30,),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color:Color.fromRGBO(66, 150, 240, 0.3) ,
                        border: Border.all(color: Color.fromRGBO(66, 150, 240, 0.9)),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(66, 150, 240, 0.3),
                            blurRadius: 20,
                            offset: Offset(0, 10),
                          )
                        ]
                    ),
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              border: Border(bottom: BorderSide(
                                  color: Color.fromRGBO(66, 150, 240, 0.3)
                              ))
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Username",
                              hintStyle: TextStyle(color: Colors.black45),
                            ),
                            onChanged: (value){
                              setState(() {
                                this._e=value;
                              });
                            },
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          child: TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Password",
                                hintStyle: TextStyle(color: Colors.black45)
                            ),
                            onChanged: (value){
                              setState(() {
                                this._p=value;
                              });
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),

                  Center(child: TextButton(onPressed: () {
                  }, child: Text("Forgot Password?", style: TextStyle(color: Color.fromRGBO(66, 150, 240, 0.9)),))),

                  SizedBox(height: 30,),

                  MaterialButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        CupertinoPageRoute(builder: (context) => ss()),
                      );
                    }, color: Color.fromRGBO(66, 150, 240, 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    height: 50,
                    child: Center(
                      child: Text("Login", style: TextStyle(color: Colors.white),),
                    ),
                  ),

                  SizedBox(height: 30,),
                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      onPrimary: Colors.black,
                      minimumSize: Size(double.infinity, 50),
                    ),
                    icon: FaIcon(FontAwesomeIcons.google ,color :Colors.red),
                    label:Text('Google'),
                    onPressed: (){
                      final provider=
                      Provider.of<GoogleP>(context, listen: false);
                      provider.googleL();

                    },
                  ),
                  SizedBox(height: 30,),

                  Center(child: TextButton(onPressed: () {
                    Navigator.push(
                      context,
                      CupertinoPageRoute(builder: (context) => rr()),
                    );
                  }, child: Text("Create Account", style: TextStyle(color: Color.fromRGBO(66, 110, 240, 0.9)),))),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}