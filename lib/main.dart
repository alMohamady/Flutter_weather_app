import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Weather',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.grey[900],
        body: SearchPage(),
      ),
    );
  }
}

class SearchPage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    var cityController = TextEditingController();

    // TODO: implement build
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Center(
           child: Container(
             child: FlareActor("assets/WorldSpin.flr", fit: BoxFit.contain, animation: "roll",),
             height: 300,
             width: 300,
           ),
        ),
        Container(
          padding: EdgeInsets.only(left: 32, right: 32, ),
          child: Column(
            children: <Widget>[
              Text("Search Weather", style: TextStyle(fontSize: 40, fontWeight: FontWeight.w500, color: Colors.white70  ),),
              Text("City" , style: TextStyle(fontSize: 40, fontWeight: FontWeight.w200, color: Colors.white70),),
              SizedBox(height: 24,),
              TextFormField(
                controller: cityController,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search, color: Colors.white70,),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all( Radius.circular(10)),
                    borderSide: BorderSide(
                      color: Colors.white70,
                      style: BorderStyle.solid
                    )
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(
                      color: Colors.blue,
                      style: BorderStyle.solid
                    )
                  ),
                  hintText: "City Name",
                  hintStyle: TextStyle(
                    color: Colors.white70,
                  ),
                ),
                style: TextStyle(color: Colors.white70),
              ),
              SizedBox(height: 20,),
              Container(
                width: double.infinity,
                height: 50,
                child: FlatButton(
                  shape: new RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                  onPressed: (){

                  },
                  color:Colors.lightBlue,
                  child: Text("Search", style: TextStyle(color: Colors.white70, fontSize: 16),),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}



