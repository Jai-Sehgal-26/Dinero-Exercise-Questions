import 'package:flutter/material.dart';
import 'package:app_2/home.dart';
import 'package:app_2/page_2.dart';
import 'package:percent_indicator/percent_indicator.dart';

void main() => runApp(MaterialApp(

    initialRoute: '/home',
    routes: {

      '/home': (context) => Home(),
      '/page_2': (context) => Page_2(),
    }
));
