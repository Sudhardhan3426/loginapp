import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(
      decoration: BoxDecoration(
        color: Colors.red,
      ),
      child: Center(

      child: Image.asset('assets/images/2.png',
          height: 100,
        width: 100.0,


      ),

      ),
    );
  }
}
