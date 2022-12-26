import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My Product",
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {



  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String name ="Prince!";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Learning",

        )
      ),
      body: Column(
        children: [
          Text(
            "$name",
            style: TextStyle(
              fontSize: 36.0,
              fontFamily: "proxima",
            ),
          ),
           ElevatedButton(
               onPressed: (){
                 name = "Desi programmer";
                 setState(() {

                 });
                 print(name);
               },

               child: Text(
                 "Change Name",
               ),
           )

        ],
      ),
    );
  }
}



