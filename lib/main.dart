import 'package:feeeeeeee/Pages.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';


main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
        apiKey: "AIzaSyCbyH3ukHFhG6Rge7JLne12wmIFvGU-38U",
        appId: "1:627906800403:android:a1f5e8f20edf90d1af08e6",
        messagingSenderId: "627906800403",
        projectId: "zaki-app-4e55e")
  );
  runApp(MyApp());
} 

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: HomePage(),
    );
  }}

