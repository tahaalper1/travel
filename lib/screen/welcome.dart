import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gezi/screen/MyHomePage.dart';

class Welcome extends StatefulWidget {
  
  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
     var ekranBilgisi = MediaQuery.of(context);
    final double yukseklik = ekranBilgisi.size.height;
    final double en = ekranBilgisi.size.width;
    SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
    return Scaffold(
     body:Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage("https://images.unsplash.com/photo-1516939884455-1445c8652f83?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80"),
              fit: BoxFit.cover,
            ),
          ),

           child: 
        Column(
            children: [

              Center(
                child: Padding(
                  padding:EdgeInsets.only(top: yukseklik/4),
                  child: Text(" Calculating your route %+/-*", style: TextStyle(color: Colors.white,
                   fontSize: 24, 
                   fontWeight: FontWeight.bold,
                   ),),
                ),
              ),
                 Padding(
                  padding:EdgeInsets.only(top: yukseklik/40),
                  child: Text(" Welcome ", style: TextStyle(color: Colors.white,
                   fontSize: 42, 
                   fontWeight: FontWeight.bold,
                   ),),
                ),   
                Center(
              child: Padding(
                   padding:EdgeInsets.only(top: yukseklik/2.25),
                   child: FittedBox(
                      child: GestureDetector(
                        onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomePage()));       
                        },
                        child: Container(
                          margin: EdgeInsets.only(bottom: 25),
                          padding:
                              EdgeInsets.symmetric(horizontal: 26, vertical: 16),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Colors.white,
                          ),
                          child: Row(
                            children: <Widget>[
                              Text(
                                "START TRAVELLING",
                               
                              ),
                              SizedBox(width: 10),
                              Icon(
                                Icons.arrow_forward,
                                color: Colors.black,
                              )
                            ],
                          ),
                                    
                                
                        ),
                      ),
                   ),
                 ),
            ),
            ],
            
              
        ),
        
       ),
     
     
     
     
    );
  }
}