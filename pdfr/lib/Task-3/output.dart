import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;
import 'task3.dart';


output({var f = 0, var x}) async
{
  var x,f=0;
  var app = MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.grey.shade800,
        appBar: AppBar(
          leading: IconButton(icon: Icon(Icons.arrow_back, color: Color(0xff5e27a4), ), onPressed: task3),
          backgroundColor: Color(0xff280a50),
          title: Center(child: Text('PDF-R : Search', style: TextStyle(color: Color(0xff5e27a4)), )),
          actions: <Widget>[IconButton(icon: Icon(Icons.cached, color: Color(0xff5e27a4), ), onPressed: task3)],
        ),
          
      body: Container(
        height: double.infinity, width: double.infinity,

        decoration: BoxDecoration(
                image: new DecorationImage(image: new AssetImage('images/aural.png'), fit: BoxFit.cover),
                ),

        child: Center(
          child:Container(
            height: 200, width: 350,

            decoration: BoxDecoration(
              color: Colors.purple.shade900, 
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Color(0xff13002c), width: 2.0),
              ),

              child:Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        height: 50, width: 300,

                          decoration: BoxDecoration(
                            color: Color(0xff280a50),
                            borderRadius: BorderRadius.circular(15)
                          ),

                           child: Card(
                             shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
                             color: Color(0xff280a50),
                             child: TextField(
                              onChanged: (val){ 
                                print(val); 
                              },

                              decoration: InputDecoration(
                                hintText: 'Type in PDF name', 
                                hintStyle: TextStyle(color: Color(0xff5e27a4), fontSize: 20), 
                              ),
                              cursorColor: Color(0xff5e27a4),
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Color(0xff5e27a4), fontSize: 20),
                                    
                             ),
                           )
                      ),

                      FlatButton(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                        color: Color(0xff280a50), 
                        onPressed: () => output(f: f,x: x), 
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[ 
                          Icon(Icons.check_circle_outline, color: Color(0xff5e27a4),), 
                          Text('Submit',style: TextStyle(color: Color(0xff5e27a4), fontSize: 20)) ],
                        )
                      ),

                    ],
                ),
              ),
          ),
        ),
      ),
    )
  );
  runApp(app);
  return app;
}