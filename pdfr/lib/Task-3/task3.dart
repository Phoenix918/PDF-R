import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'output.dart';

task3() {
  var x, f = 0;
  var app = MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
        appBar:AppBar(
                leading: Icon(Icons.flare, color: Color(0xff5e27a4), ),
                backgroundColor: Color(0xff280a50),
                title: Center(
                        child: Text('PDF-R', style: TextStyle(color: Color(0xff5e27a4)), )),
                actions: <Widget>[IconButton(icon: Icon(Icons.cached, color: Color(0xff5e27a4), ),onPressed: task3)],
        ),

        body:Container(
                height: double.infinity, width: double.infinity,
                alignment: Alignment.topCenter,
                child: ListView(
                  children: <Widget>[

                    ListTile(
                      title: Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                            color: Colors.purple.shade900,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Color(0xff13002c), width: 2.0),
                            ),
                        child: Center(
                        child: Text('PDF-Search', style: TextStyle(color: Color(0xff13002c), fontSize: 40), ),
                        ),
                      ),
                      contentPadding: EdgeInsets.fromLTRB(35, 100, 35, 25),
                      onTap: output,
                    ),

                  Divider(thickness: 2, color: Color(0xff13002c), indent: 100, endIndent: 100,),

                    ListTile(
                      title: Container(
                        height: 150,
                        width: 150,
                      decoration: BoxDecoration(
                          color: Colors.purple.shade900,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Color(0xff13002c), width: 2.0),
                          ),
                      child: Center(
                          child: Text('PDF-Upload', style: TextStyle(color:Color(0xff13002c), fontSize: 40), ),
                        ),
                      ),
                      contentPadding: EdgeInsets.fromLTRB(35, 25, 35, 100),
                      onTap: task3,
                    ),

                  ],
               ),

              decoration: BoxDecoration(
                image: new DecorationImage(image: new AssetImage('images/aural.png'), fit: BoxFit.cover),
                ),
            ),

      )
  );

  runApp(app);
  return app;
}
