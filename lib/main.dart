import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Trabalhando com Layouts',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Container( // Widget usado para compor outros widgets
        color: Colors.white,
        child: Column( //organiza os widgets em colunas (vertical)
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
             Stack(
              alignment: AlignmentDirectional.center,
              children: [
                Container(
                  color: Colors.red,
                  width: 100,
                  height: 100,
                ),
                Container(
                  color: Colors.blue,
                  width: 50,
                  height: 50,
                ),
              ],
            ),
            Stack(
              alignment: AlignmentDirectional.center,
              children: [
                Container(
                  color: Colors.blue,
                  width: 100,
                  height: 100,
                ),
                Container(
                  color: Colors.red,
                  width: 50,
                  height:50,
                )
              ],
            )
          ],

        ),


      ),
    );
  }
}
