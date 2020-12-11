import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'output.dart';

task3() {
  var x, f = 0;
  var app = MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
        backgroundColor: Colors.grey.shade800,
        appBar:AppBar(
                leading: Icon(Icons.flare, color: Colors.deepOrange.shade700, ),
                backgroundColor: Colors.grey.shade900,
                title: Center(
                        child: Text('PDF-R', style: TextStyle(color: Colors.deepOrange.shade700), )),
                actions: <Widget>[IconButton(icon: Icon(Icons.cached, color: Colors.deepOrange.shade700, ),onPressed: task3)],
        ),

        body:ListView(
              children: <Widget>[

                ListTile(
                  title: Container(
                    height: 150,
                    width: 300,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade900,
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                      child: Text('PDF-Search', style: TextStyle(color: Colors.deepOrange.shade700, fontSize: 30), ),
                    ),
                  ),
                  contentPadding: EdgeInsets.fromLTRB(20, 100, 20, 25),
                  onTap: output,
                ),

                Divider(thickness: 1, color: Colors.deepOrange.shade800, indent: 100, endIndent: 100,),

                ListTile(
                  title: Container(
                    height: 150,
                    width: 300,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade900,
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                      child: Text('PDF-Upload', style: TextStyle(color: Colors.deepOrange.shade700, fontSize: 30), ),
                    ),
                  ),
                  contentPadding: EdgeInsets.fromLTRB(20, 25, 20, 100),
                  onTap: task3,
                ),

              ],
            ),

      )
  );

  runApp(app);
  return app;
}
