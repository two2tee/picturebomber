import 'package:flutter/material.dart';
import 'package:picture_bomber/pages/homePage.dart';
import 'package:picture_bomber/pages/loadingPage.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/', //overwrite default screen
      routes: {
        //routing table
        "/": (context) => LoadingPage(),
        "/home": (context) => HomePage(),
      },
    ));
