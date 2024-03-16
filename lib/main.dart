import 'package:flutter/material.dart';
//import 'package:mobilefive/countrydata/data.dart';
import 'package:mobilefive/functions/search.dart';
import 'package:mobilefive/functions/countrytab.dart';

/*
  ตอน debug ผมต้องกด continue ประมาณ 3 รอบ เพื่อแสดงรูปออกมา
  searchbar ยังไม่ได้
  หน้า pop-up ยังไม่เสร๋จ
*/

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Country List',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Countries of the World'),
        ),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                searchBox(),
                Expanded(
                  child: SingleChildScrollView(
                    child: countryTab(),
                  ),
                ),
              ],
            ),
        ),
      ),
    );
  }
}
