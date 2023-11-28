import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_service.dart';
import 'src/Pages/HomePage/HomePage.dart';
import 'src/Pages/HomePage/FirstPage.dart';
import 'src/Pages/HomePage/SecondPage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const  FirebaseOptions(
        apiKey: "AIzaSyAHNNyaU30d0OjaKUxOWnc1RpEJgtS4qiU",
        authDomain: "flutterappedwin.firebaseapp.com",
        projectId: "flutterappedwin",
        storageBucket: "flutterappedwin.appspot.com",
        messagingSenderId: "140285357174",
        appId: "1:140285357174:web:87e7a2707ac6e6ecd68357",
        measurementId: "G-6W61YQ961P"),
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final FirebaseService firebaseService = FirebaseService();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/firstPage': (context) => const FirstPage(),
        '/SecondPage': (context) => const SecondPage(),
      },
    );
  }
}
