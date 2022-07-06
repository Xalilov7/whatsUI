import 'package:chat_ui/theme_changer.dart';
import 'package:chat_ui/view/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ThemeChanger>(create: (_) => ThemeChanger(),
     child: Builder(
        builder: (BuildContext context){
          final themeChanger = Provider.of<ThemeChanger>(context);
          return MaterialApp(
            title: 'Flutter Demo',
            theme: ThemeData(
              brightness: Brightness.light,
              primarySwatch: Colors.teal,
              textTheme: const TextTheme(
                headline3: TextStyle(fontFamily: "Bold", fontSize: 20, color: Colors.black),
                headline4: TextStyle(fontFamily: 'Bold', fontSize: 18.0, color: Color(0xff25292B)),
                headline5: TextStyle(fontFamily:  'Bold', fontSize: 16.0,color: Color(0xff25292B)),
                headline6: TextStyle(fontFamily: "Bold", fontSize: 14.0, color: Color(0xff25292B)),
                headline1: TextStyle(fontFamily: "Bold", fontSize: 12.0,  color:Color(0xff25292B)),
                headline2: TextStyle(fontFamily: "Bold", fontSize: 10.0,  color:Color(0xff25292B)),
              ),
              iconTheme: IconThemeData(
                  color: Colors.grey.shade500
              ),
            ),
            darkTheme: ThemeData(
                brightness: Brightness.dark,
                textTheme: const TextTheme(
                  headline3: TextStyle(fontFamily: "Bold", fontSize: 20, color: Colors.white),
                  headline4: TextStyle(fontFamily: 'Bold', fontSize: 18.0, color: Colors.white),
                  headline5: TextStyle(fontFamily:  'Bold', fontSize: 16.0,color: Colors.white),
                  headline6: TextStyle(fontFamily: "Bold", fontSize: 14.0, color: Colors.white),
                  headline1: TextStyle(fontFamily: "Bold", fontSize: 12.0,  color:Colors.white),
                  headline2: TextStyle(fontFamily: "Bold", fontSize: 10.0,  color:Colors.white),
                )
            ),
            home: HomeScreen(),

          );

    }),
    );

  }
}

