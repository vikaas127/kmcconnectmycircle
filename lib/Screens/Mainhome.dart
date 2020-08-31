import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:kmc/Constant/Constant.dart';
import 'package:http/http.dart' as http;
import 'package:permission_handler/permission_handler.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Contactdetail.dart';
import 'ContactsPage.dart';
import 'listcall.dart';



class mainhome extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return mainhome1();
  }
}
class mainhome1 extends State<mainhome>{
  var radius = Radius.circular(0);
  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: DefaultTabController(
        length: 3,
        child:
      Scaffold(

        appBar: AppBar(title: Text("Home"),
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
            ),),
      bottom:
      TabBar(

        indicatorSize: TabBarIndicatorSize.tab,
        indicatorWeight: 2.0,
        indicator:ShapeDecoration (
          color: Colors.white, shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topRight: radius, topLeft: radius,)),

        ),
        tabs: [
          Tab(
      child: Container(
       decoration: BoxDecoration(
         border: Border.all(
           color: Colors.black,
           width: 2,

         ),
        ),
      alignment: Alignment.center,
        constraints: BoxConstraints.expand(width: 200),

        child: Text('SELF', style: TextStyle(color: Colors.black, fontSize: 12,fontWeight: FontWeight.bold),),

      ),
      ),
          Tab(
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                  width: 2,

                ),
              ),
              alignment: Alignment.center,
          //    constraints: BoxConstraints.expand(width: 200),

              child: Text('OTHER', style: TextStyle(color: Colors.black, fontSize: 12,fontWeight: FontWeight.bold),),

            ),
          ),
          Tab(
            child: Container(
              width: 200,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                  width: 2,

                ),
              ),
              alignment: Alignment.center,
              constraints: BoxConstraints.expand(width: 200),

              child: Text('DASHBOARD', style: TextStyle(color: Colors.black, fontSize: 12,fontWeight: FontWeight.bold),),

            ),
          ),
        //  child: Text('SELF', style: TextStyle(color: Colors.black, fontSize: 12,fontWeight: FontWeight.bold),),


        ],
      ),
    ),
    drawer:  Drawer(

      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.indigo,Colors.blue,Colors.blueAccent, ],

            begin: FractionalOffset.center,
            end: FractionalOffset.bottomRight,
          ),
        ),
      // Add a ListView to the drawer. This ensures the user can scroll
      // through the options in the drawer if there isn't enough vertical
      // space to fit everything.
      child: ListView(

        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text("vikas yadav"),
            accountEmail: Text("vikas12@gmail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundColor:
              Theme.of(context).platform == TargetPlatform.iOS
                  ? Colors.lightBlue
                  : Colors.white,
              child: Text(
                "V",
                style: TextStyle(fontSize: 40.0),
              ),
            ),
          ),

          ListTile(
            title: Text('My Profile',style: TextStyle(color: Colors.white, fontSize: 12,fontWeight: FontWeight.bold)),
            trailing: Icon( Icons.arrow_right ,color: Colors.white,),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
          Divider(  color: Colors.white,
            thickness: 2,),
          ListTile(
            title: Text('Settings',style: TextStyle(color: Colors.white, fontSize: 12,fontWeight: FontWeight.bold)),
            trailing:  Icon(Icons.arrow_right,color: Colors.white,),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
          Divider(  color: Colors.white,
            thickness: 2,),
          ListTile(
            title: Text('Chat',style: TextStyle(color: Colors.white, fontSize: 12,fontWeight: FontWeight.bold)),
            trailing:  Icon(Icons.arrow_right ,color: Colors.white, ),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
          Divider(  color: Colors.white,
            thickness: 2,),
          ListTile(
            title: Text('About App',style: TextStyle(color: Colors.white, fontSize: 12,fontWeight: FontWeight.bold)),
            trailing:  Icon(Icons.arrow_right,color: Colors.white,),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
          Divider(  color: Colors.white,
            thickness: 2,),

          ListTile(
            title: Text('FAQ,S',style: TextStyle(color: Colors.white, fontSize: 12,fontWeight: FontWeight.bold)),
            trailing:  Icon(Icons.arrow_right,color: Colors.white,),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
          Divider(  color: Colors.white,
            thickness: 2,),
          ListTile(
            title: Text('Rate Us',style: TextStyle(color: Colors.white, fontSize: 12,fontWeight: FontWeight.bold)),
            trailing:  Icon(Icons.arrow_right,color: Colors.white,),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
          Divider(  color: Colors.white,
            thickness: 2,),
          ListTile(
            title: Text('Support',style: TextStyle(color: Colors.white, fontSize: 12,fontWeight: FontWeight.bold)),
            trailing:  Icon(Icons.arrow_right,color: Colors.white,),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
          Divider(  color: Colors.white,
            thickness: 2,),
          ListTile(
            title: Text('FeedBack',style: TextStyle(color: Colors.white, fontSize: 12,fontWeight: FontWeight.bold)),
            trailing:  Icon(Icons.arrow_right,color: Colors.white,),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
          Divider(
            color: Colors.white,
            thickness: 2,
          ),
          ListTile(
            title: Text('Share App',style: TextStyle(color: Colors.white, fontSize: 12,fontWeight: FontWeight.bold)),
            trailing:  Icon(Icons.arrow_right,color: Colors.white,),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
          Divider(  color: Colors.white,
            thickness: 2,),
          ListTile(
            title: Text('Logout',style: TextStyle(color: Colors.white, fontSize: 12,fontWeight: FontWeight.bold)),
            //trailing:  Icon(Icons.arrow_forward),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),

        ],
      ),
    )),

        body:
        TabBarView(
          children: [

            task(),
            SecondScreen(),
            ThirdScreen(),
          ],
        ),
      )));
  }
}
class task extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
 return FirstScreen();
  }


}
class FirstScreen extends State<task> with AutomaticKeepAliveClientMixin<task> {
  Future<CustomContact> _futureAlbum;
  bool _isLoading = false;
  List<CustomContact> _postList =new List<CustomContact>();

  createGetData(String password) {
    //var jsonResponse = null;
    //final http.Response response = await http.post(
   http.post(
      'https://meo.co.in/KmcApi/index.php/getContacts',
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String  >{

        "user_id":password
      }),
    ).then((value) => {

     setState(() {
       Map<String, dynamic> response = json.decode(value.body);

       _postList = List<CustomContact>();
       if (response['status'] == '200') {
         response['result'].forEach((value) {
           _postList.add(CustomContact.fromJson(value));
         });
       }
       print('Dio Response $response');
     }),
   });



  }

  @override
  void initState() {
    refreshContacts();
    super.initState();

  }

  refreshContacts() async {
    _isLoading = true;
    final prefs = await SharedPreferences.getInstance();

// Try reading data from the counter key. If it doesn't exist, return 0.
    final counter = prefs.getInt('counter') ?? 0;
    String stringValue = counter.toString();
    createGetData( stringValue);


  }
    @override
  Widget build(BuildContext context) {

    return Scaffold(

      body:  new ListView.builder(
         addAutomaticKeepAlives: false,
        shrinkWrap: false,
        itemCount: _postList== null ? 0 : _postList.length,

        itemBuilder: (BuildContext context, int index){
          final item = _postList[index];

          return new Card(

            child: new InkWell(
              onTap: () {



                  Navigator.push(context, new MaterialPageRoute(
                      builder: (context) =>
                      new PlayingSlivers(item:item ))

                  );

              //  navigationPage();
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
                                new Text( item.Textname??"vikaas",

                                  textAlign: TextAlign.left,
                                  style: TextStyle(fontWeight:FontWeight.bold,fontSize: 22,),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 5.0),
                              child: new Row(
                                children: <Widget>[
                                  new Text(   item.Tetcity??"Jaipur", textAlign: TextAlign.left,style:TextStyle(fontWeight:FontWeight.bold,fontSize: 18 ,),),
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
          );
        },
      ),

       // appBar: AppBar(title: Text("Home"), backgroundColor: Colors.amberAccent,),
      bottomNavigationBar: BottomAppBar(
      notchMargin: 5,
        color: Colors.indigoAccent,
        shape:  const CircularNotchedRectangle(),
        child: Container(


          height: 50.0,
        ),
      ),

      floatingActionButton: FloatingActionButton(

        onPressed: ()  async {
          Navigator.push(context, new MaterialPageRoute(
              builder: (context) =>
              new ContactsPage( )));

         // refreshContacts();
    final PermissionStatus permissionStatus = await _getPermission();
    if (permissionStatus == PermissionStatus.granted) {

    } else {
    //If permissions have been denied show standard cupertino alert dialog
    showDialog(
    context: context,
    builder: (BuildContext context) => CupertinoAlertDialog(
    title: Text('Permissions error'),
    content: Text('Please enable contacts access '
    'permission in system settings'),
    actions: <Widget>[
    CupertinoDialogAction(
    child: Text('OK'),
    onPressed: () => Navigator.of(context).pop(),
    )
    ],
    ));


    }



          //   print('onclick ACCESS_AB'); // now try

          // Navigator.of(context).pushReplacementNamed(LOGIN_SCREEN);
        },

        child: Icon(Icons.add),
        backgroundColor: Colors.indigoAccent,
        clipBehavior: Clip.antiAliasWithSaveLayer,
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    //   print('onclick ACCESS_AB'); // now try

    // Navigator.of(context).pushReplacementNamed(LOGIN_SCREEN);



);







  }
  Future<PermissionStatus> _getPermission() async {
    final PermissionStatus permission = await Permission.contacts.status;
    if (permission != PermissionStatus.granted &&
        permission != PermissionStatus.denied) {
      final Map<Permission, PermissionStatus> permissionStatus =
      await [Permission.contacts].request();
      return permissionStatus[Permission.contacts] ??
          PermissionStatus.undetermined;
    } else {
      return permission;
    }
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;

}

class ThirdScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    void navigationPage() {
      Navigator.of(context).pushReplacementNamed(ACCESS_AB);
    };
    return Scaffold(
      // appBar: AppBar(title: Text("Home"), backgroundColor: Colors.amberAccent,),


    );



  }
}
class SecondScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
   return SecondScreen1();
  }





}
class SecondScreen1 extends State<SecondScreen> with AutomaticKeepAliveClientMixin<SecondScreen> {

  Future<CustomContact> _futureAlbum;
  bool _isLoading = false;
  List<CustomContact> _postList = new List<CustomContact>();

  createGetData(String password) {
    //var jsonResponse = null;
    //final http.Response response = await http.post(
    http.post(
      'https://meo.co.in/KmcApi/index.php/getContactsAll',
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{

        "user_id": password
      }),
    ).then((value) =>
    {

      setState(() {
        Map<String, dynamic> response = json.decode(value.body);

        _postList = List<CustomContact>();
        if (response['status'] == '200') {
          response['result'].forEach((value) {
            _postList.add(CustomContact.fromJson(value));
          });
        }
        print('Dio Response $response');
      }),
    });
  }

  @override
  void initState() {
    refreshContacts();
    super.initState();
  }

  refreshContacts() async {
    _isLoading = true;
    final prefs = await SharedPreferences.getInstance();

// Try reading data from the counter key. If it doesn't exist, return 0.
    final counter = prefs.getInt('counter') ?? 0;
    String stringValue = counter.toString();
    createGetData(stringValue);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: new ListView.builder(
        addAutomaticKeepAlives: false,
        shrinkWrap: false,
        itemCount: _postList == null ? 0 : _postList.length,

        itemBuilder: (BuildContext context, int index) {
          final item = _postList[index];

          return new Card(

            child: new InkWell(
              onTap: () {
                Navigator.push(context, new MaterialPageRoute(
                    builder: (context) =>
                    new PlayingSlivers(item: item))

                );

                //  navigationPage();
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
                                new Text(item.Textname ?? "vikaas",

                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 22,),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 5.0),
                              child: new Row(
                                children: <Widget>[
                                  new Text( item.Tetcity??"default", textAlign: TextAlign.left,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,),),
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
                                    colors: [
                                      Colors.indigo,
                                      Colors.blue,
                                      Colors.amberAccent,
                                    ],

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
          );
        },
      ),

    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}