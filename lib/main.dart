// import 'package:chatting_demo/pages/chat.dart';
import 'package:chatting_demo/pages/login.dart';
import 'package:chatting_demo/pages/signup.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:chatting_demo/pages/chatterScreen.dart';
import 'pages/splash.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(ChatterApp());
}

class ChatterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Chatting App',

      theme: ThemeData(
        textTheme: TextTheme(
          bodyText1: TextStyle(
            fontFamily: 'Poppins',
          ),
        ),
      ),
      // home: ChatterHome(),
      initialRoute: '/',
      routes: {
        '/': (context) => ChatterHome(),
        '/login': (context) => ChatterLogin(),
        '/signup': (context) => ChatterSignUp(),
        '/chat': (context) => ChatterScreen(),
        // '/chats':(context)=>ChatterScreen()
      },
    );
  }
}
