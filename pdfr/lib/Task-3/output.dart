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
          leading: IconButton(icon: Icon(Icons.arrow_back, color: Colors.deepOrange.shade700, ), onPressed: task3),
          backgroundColor: Colors.grey.shade900,
          title: Center(child: Text('PDF-R : Search', style: TextStyle(color: Colors.deepOrange.shade700), )),
          actions: <Widget>[IconButton(icon: Icon(Icons.cached, color: Colors.deepOrange.shade700, ), onPressed: task3)],
        ),
          
      body: Center(
        child:Container(
          height: 200, width: 350,
          decoration: BoxDecoration(color: Colors.grey.shade700, borderRadius: BorderRadius.circular(20)),
            child:Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      height: 50, width: 300, 
                        color: Colors.grey.shade900, 
                         child: Card(
                          color: Colors.grey.shade900,
                          child: TextField(
                            onChanged: (val){ 
                              print(val); 
                            },

                            decoration: InputDecoration(
                              hintText: 'Type in PDF name', 
                              hintStyle: TextStyle(color: Colors.deepOrange.shade900, fontSize: 20), 
                            ),
                            cursorColor: Colors.deepOrange.shade700,
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.deepOrange.shade700, fontSize: 20),
                                  
                          ),
                        )
                    ),

                    FlatButton(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                      color: Colors.grey.shade900, 
                      onPressed: () => output(f: f,x: x), 
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[ 
                        Icon(Icons.check_circle_outline, color: Colors.deepOrange.shade700,), 
                        Text('Submit',style: TextStyle(color: Colors.deepOrange.shade700, fontSize: 20)) ],
                      )
                    ),

                  ],
              ),
            ),
        ),
      ),
    )
  );
  runApp(app);
  return app;
}