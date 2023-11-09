import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toko/routes.dart';
import 'package:toko/screens/Login/LoginScreens.dart';
import 'package:toko/theme.dart';

void main() async {
  runApp(MaterialApp(
    title: "Toko TAS",
    debugShowCheckedModeBanner: false,
    theme: theme(),
    initialRoute: LoginScreens.routeName,
    routes: route,
  ));
}
