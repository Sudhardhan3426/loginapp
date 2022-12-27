import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

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
        fontFamily: "regular",

      ),
        home: HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int index=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My Products",
        ),
       actions: [
         IconButton(
             onPressed: (){},
             icon: Icon(Icons.search),
           ),
       ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.red[200],
        showUnselectedLabels: true,
        onTap: (index){
          setState(() {
            index= index;
          });

        },
        currentIndex: index,

        items: [
         BottomNavigationBarItem(
             icon:Icon(
               Ionicons.home_outline,

             ),
           label: "Home",
         ),
          BottomNavigationBarItem(
            icon: Icon(
              Ionicons.cart_outline,
            ),
            label: "Cart",
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Ionicons.grid_outline,
              ),
            label: "Cart",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Ionicons.person_outline,

          ),
            label: "profile",
          ),
        ],
      ),

       //  body:buildWidget(),
      body:ListView(
        children: [
          CarouselSlider(
            options: CarouselOptions(
                aspectRatio:16/9,
                 autoPlay:true,
           ),
            items: [1,2,3,4,5].map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: BoxDecoration(
                          color: Colors.amber
                      ),
                      child: Text('text $i', style: TextStyle(fontSize: 16.0),)
                  );
                },
              );
            }).toList(),
          )
      ],) ,
    );


  }
}

