import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_http_request/sign_up.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';


void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignUp(),
    );
  }
}
