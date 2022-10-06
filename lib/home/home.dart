import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';


class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _hometState();
}

class _hometState extends State<home> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar : CurvedNavigationBar(
      
        backgroundColor: Color.fromARGB(255, 248, 248, 248),
        animationDuration: Duration(milliseconds: 300),
        onTap: (index) {
          
        },
        items: [ 
          Icon(Icons.person,
          color: Colors.blueGrey,
          ),
          Icon(Icons.home,
          color: Colors.black,
          size: 50,),
          Icon(Icons.favorite,
          color: Colors.red,
          ),  
        ],
      ),
     
    );
  }
}
