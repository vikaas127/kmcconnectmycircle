import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Contactdetail.dart';

class ListScreen extends StatelessWidget {ListScreen();

  @override
  Widget build(BuildContext context) {
    void navigationPage() {
      Navigator.push(context, new MaterialPageRoute(
          builder: (context) =>
          new PlayingSlivers())

      );

    }
    return new Scaffold(
appBar: AppBar(title: Text("circle"),
    flexibleSpace: Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: <Color>[
            Colors.indigo,
            Colors.blueAccent,
            Colors.lightBlueAccent,
          ],
        ),
      ),),),
      body: Padding(
        padding: const EdgeInsets.only(top: 2.0),
        child: new ListView(
          padding: EdgeInsets.all(2.0),
          addRepaintBoundaries: true,
          shrinkWrap: true,
          children: <Widget>[
SizedBox(height: 40,),
            new Card(

              child: new InkWell(
                onTap: () {
                  navigationPage();
                },
                child: Container(

                  //elevation: 1.0,
                    margin: EdgeInsets.all(3.0),
                    child: new Row(
                      children: <Widget>[
                        SizedBox(height: 30,),
                        new Image.asset(
                          "assets/images/scene2.png",
                          width: 140.0,
                          height: 140.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: new Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              new Row(
                                children: <Widget>[
                                  new Text(
                                    "Vikas yadav",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(fontWeight:FontWeight.bold,fontSize: 22,),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 5.0),
                                child: new Row(
                                  children: <Widget>[
                                    new Text("Jaipur", textAlign: TextAlign.left,style:TextStyle(fontWeight:FontWeight.bold,fontSize: 18 ,),),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 5.0),
                                child: new
                                Container(
                                  margin: EdgeInsets.all(0),
                                  width: 100,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [Colors.indigo,Colors.blue,Colors.amberAccent, ],

                                      begin: FractionalOffset.center,
                                      end: FractionalOffset.bottomRight,
                                    ),
                                  ),
                                  child: FlatButton(
                                    child: Text(
                                      'Call',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    onPressed: () {
                                      //   navigationPage();

                                    },
                                  ),
                                ),),
                            ],
                          ),
                        )
                      ],
                    )),


              ),
            ),
            new Card(

              child: new InkWell(
                onTap: () {
                  navigationPage();
                },
                child: Container(

                  //elevation: 1.0,
                    margin: EdgeInsets.all(3.0),
                    child: new Row(
                      children: <Widget>[
                        SizedBox(height: 30,),
                        new Image.asset(
                          "assets/images/scene2.png",
                          width: 140.0,
                          height: 140.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: new Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              new Row(
                                children: <Widget>[
                                  new Text(
                                    "Rohit yadav",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(fontWeight:FontWeight.bold,fontSize: 22,),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 5.0),
                                child: new Row(
                                  children: <Widget>[
                                    new Text("Sikar", textAlign: TextAlign.left,style:TextStyle(fontWeight:FontWeight.bold,fontSize: 18 ,),),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 5.0),
                                child: new
                                Container(
                                  margin: EdgeInsets.all(0),
                                  width: 100,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [Colors.indigo,Colors.blue,Colors.amberAccent, ],

                                      begin: FractionalOffset.center,
                                      end: FractionalOffset.bottomRight,
                                    ),
                                  ),
                                  child: FlatButton(
                                    child: Text(
                                      'Call',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    onPressed: () {
                                      //   navigationPage();

                                    },
                                  ),
                                ),),
                            ],
                          ),
                        )
                      ],
                    )),


              ),),
            new Card(

              child: new InkWell(
                onTap: () {
                  navigationPage();
                },
                child: Container(

                  //elevation: 1.0,
                    margin: EdgeInsets.all(3.0),
                    child: new Row(
                      children: <Widget>[
                        SizedBox(height: 30,),
                        new Image.asset(
                          "assets/images/scene2.png",
                          width: 140.0,
                          height: 140.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: new Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              new Row(
                                children: <Widget>[
                                  new Text(
                                    "Sakshi ",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(fontWeight:FontWeight.bold,fontSize: 22,),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 5.0),
                                child: new Row(
                                  children: <Widget>[
                                    new Text("kota", textAlign: TextAlign.left,style:TextStyle(fontWeight:FontWeight.bold,fontSize: 18 ,),),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 5.0),
                                child: new
                                Container(
                                  margin: EdgeInsets.all(0),
                                  width: 100,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [Colors.indigo,Colors.blue,Colors.amberAccent, ],

                                      begin: FractionalOffset.center,
                                      end: FractionalOffset.bottomRight,
                                    ),
                                  ),
                                  child: FlatButton(
                                    child: Text(
                                      'Call',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    onPressed: () {
                                      //   navigationPage();

                                    },
                                  ),
                                ),),
                            ],
                          ),
                        )
                      ],
                    )),


              ),),
            new Card(

              child: new InkWell(
                onTap: () {
                  navigationPage();
                },
                child: Container(

                  //elevation: 1.0,
                    margin: EdgeInsets.all(3.0),
                    child: new Row(
                      children: <Widget>[
                        SizedBox(height: 30,),
                        new Image.asset(
                          "assets/images/scene2.png",
                          width: 140.0,
                          height: 140.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: new Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              new Row(
                                children: <Widget>[
                                  new Text(
                                    "Rajesh yadav",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(fontWeight:FontWeight.bold,fontSize: 22,),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 5.0),
                                child: new Row(
                                  children: <Widget>[
                                    new Text("new Dehli", textAlign: TextAlign.left,style:TextStyle(fontWeight:FontWeight.bold,fontSize: 18 ,),),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 5.0),
                                child: new
                                Container(
                                  margin: EdgeInsets.all(0),
                                  width: 100,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [Colors.indigo,Colors.blue,Colors.amberAccent, ],

                                      begin: FractionalOffset.center,
                                      end: FractionalOffset.bottomRight,
                                    ),
                                  ),
                                  child: FlatButton(
                                    child: Text(
                                      'Call',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    onPressed: () {
                                      //   navigationPage();

                                    },
                                  ),
                                ),),
                            ],
                          ),
                        )
                      ],
                    )),


              ),),
            new Card(

              child: new InkWell(
                onTap: () {
                  navigationPage();
                },
                child: Container(

                  //elevation: 1.0,
                    margin: EdgeInsets.all(3.0),
                    child: new Row(
                      children: <Widget>[
                        SizedBox(height: 30,),
                        new Image.asset(
                          "assets/images/scene2.png",
                          width: 140.0,
                          height: 140.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: new Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              new Row(
                                children: <Widget>[
                                  new Text(
                                    "Vikas yadav",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(fontWeight:FontWeight.bold,fontSize: 22,),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 5.0),
                                child: new Row(
                                  children: <Widget>[
                                    new Text("Jaipur", textAlign: TextAlign.left,style:TextStyle(fontWeight:FontWeight.bold,fontSize: 18 ,),),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 5.0),
                                child: new
                                Container(
                                  margin: EdgeInsets.all(0),
                                  width: 100,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [Colors.indigo,Colors.blue,Colors.amberAccent, ],

                                      begin: FractionalOffset.center,
                                      end: FractionalOffset.bottomRight,
                                    ),
                                  ),
                                  child: FlatButton(
                                    child: Text(
                                      'Call',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    onPressed: () {
                                      //   navigationPage();

                                    },
                                  ),
                                ),),
                            ],
                          ),
                        )
                      ],
                    )),


              ),),
            new Card(

              child: new InkWell(
                onTap: () {
                  navigationPage();
                },
                child: Container(

                  //elevation: 1.0,
                    margin: EdgeInsets.all(3.0),
                    child: new Row(
                      children: <Widget>[
                        SizedBox(height: 30,),
                        new Image.asset(
                          "assets/images/scene2.png",
                          width: 140.0,
                          height: 140.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: new Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              new Row(
                                children: <Widget>[
                                  new Text(
                                    "Vikas yadav",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(fontWeight:FontWeight.bold,fontSize: 22,),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 5.0),
                                child: new Row(
                                  children: <Widget>[
                                    new Text("Jaipur", textAlign: TextAlign.left,style:TextStyle(fontWeight:FontWeight.bold,fontSize: 18 ,),),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 5.0),
                                child: new
                                Container(
                                  margin: EdgeInsets.all(0),
                                  width: 100,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [Colors.indigo,Colors.blue,Colors.amberAccent, ],

                                      begin: FractionalOffset.center,
                                      end: FractionalOffset.bottomRight,
                                    ),
                                  ),
                                  child: FlatButton(
                                    child: Text(
                                      'Call',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    onPressed: () {
                                      //   navigationPage();

                                    },
                                  ),
                                ),),
                            ],
                          ),
                        )
                      ],
                    )),


              ),),
          ],
        ),
      ),
    );
  }


}
