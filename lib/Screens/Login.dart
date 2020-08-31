import 'dart:convert';
import 'dart:core';


import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:kmc/Constant/Constant.dart';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:wc_form_validators/wc_form_validators.dart';

import 'ContactsPage.dart';
class LoginScreenq extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {

    // TODO: implement createState
    return Loginscreen();
  }

}

class Loginscreen  extends State<LoginScreenq> {
  bool _isLoading = false;

  String _name;
  String _email;
  String _password;
  String _url;
  String _phoneNumber;
  String _calories;
   final GlobalKey<FormState>_formKey = GlobalKey<FormState>();


  String validateMobile(String value) {
    String patttern = r'(^(?:[+0]9)?[0-9]{10,12}$)';
    RegExp regExp = new RegExp(patttern);
    if (value.length == 0) {
      return 'Please enter mobile number';
    }
    else if (!regExp.hasMatch(value)) {
      return 'Please enter valid mobile number';
    }
    return null;
  }


  Widget _buildPassword() {
    return TextFormField(
      controller: tetpass,
      decoration: InputDecoration(
        labelText: "Password",
        fillColor: Colors.white,
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.black, width: 2.0),
          borderRadius: BorderRadius.circular(0.0),
        ),),
      keyboardType: TextInputType.visiblePassword,

    );
  }

  Widget _buildPhoneNumber() {
    return TextFormField(
      controller: textphn,
      validator: validateMobile,
      decoration: InputDecoration(

        labelText: "+91| Mobile number",
        fillColor: Colors.black,
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.black, width: 2.0),
          borderRadius: BorderRadius.circular(0.0),
        ),),

      keyboardType: TextInputType.visiblePassword,

    );
  }

  TextEditingController textphn = TextEditingController();
  TextEditingController tetpass =  TextEditingController();

  Future<Album> _futureAlbum;


  Future<Album> createAlbum(String  title, password) async {
    //var jsonResponse = null;
    final http.Response response = await http.post(
      'https://meo.co.in/KmcApi/index.php/login',
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String  >{
        'password': password,
        'mobile_number':title,
      }),
    );


    if (response.statusCode == 200 ) {

Map<String,dynamic> responseJson = json.decode(response.body);

Map result = responseJson['result'];
     var UserTid = result['id'];

     final prefs = await SharedPreferences.getInstance();

     prefs.setInt('counter', UserTid);

var sucess= responseJson['message'];
print('userid result $UserTid' );
if (sucess=="success" ){

  navigationPage();
  Fluttertoast.showToast(
      msg: "Successfully login",
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.CENTER,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.red,
      textColor: Colors.white,
      fontSize: 16.0);
}else{
  Fluttertoast.showToast(
      msg: "Register First !! u r not member ",
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.CENTER,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.red,
      textColor: Colors.white,
      fontSize: 16.0);
}


      // If the server did return a 201 CREATED response,
      // then parse the JSON.
      return  Album.fromJson(json.decode(response.body));

    } else {
      Fluttertoast.showToast(
          msg: "Register First !! u r not member ",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
      var  jsonResponse = json.decode(response.body);

      throw Exception('Failed to load album');
    }
  }

  void navigationPage() {
    Navigator.of(context).pushReplacementNamed(MAIN_HOME);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(

      //  backgroundColor: Colors.white70,

        body:
        SingleChildScrollView(child:
        Container(

            margin: EdgeInsets.all(24),
            child: Form(
                key: _formKey,
                child: Column(

                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(height: 30,),
                      new Container(

                        height: 100, width: 100,

                        child:
                        new Image.asset(
                          "assets/images/logokmc.jpg",
                        ),


                      ),
                      SizedBox(height: 50,),
                      Container(child: RichText(text: TextSpan(
                          text: 'Login/Signup',
                          style: TextStyle(color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 25)),)),
                      SizedBox(height: 40,),
                      //_buildName(),SizedBox(height: 20),
                      //_buildEmail()SizedBox(height: 20),
                      //_buildPassword(),
                      // _builURL(),
                      // SizedBox(height: 20),
                      _buildPhoneNumber(),

                      SizedBox(height: 20,),
                      _buildPassword(),
                      SizedBox(height: 20),


                      Container(


                          child:InkWell(
                            onTap: (){

                            },
                            child: RichText(text: TextSpan(
                                text: 'forgot password?',
                                style: TextStyle(color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16)),)),
                          ),


                      SizedBox(height: 40,),
                      //_buildCalories(),
                      SizedBox(height: 60),

                      Container(
                        margin: EdgeInsets.all(20),
                        width: 200,
                        height: 50,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Colors.indigo,
                              Colors.blue,
                              Colors.indigoAccent,
                            ],

                            begin: FractionalOffset.center,
                            end: FractionalOffset.bottomRight,
                          ),
                        ),
                        child: FlatButton(
                          child: Text(
                            'Continue',
                            style: TextStyle(color: Colors.white),
                          ),
                          onPressed:  () {
    if (_formKey.currentState.validate())
                           // String loginId = tetpass.text;
                          //  String  loginname= textphn.text;
                           {
                              _futureAlbum = createAlbum(textphn.text,
                                  tetpass.text);

                              FutureBuilder<Album>(
                                future: _futureAlbum,
                                builder: (context, snapshot) {
                                  if (snapshot.hasData) {
                                    return Text(snapshot.data.mobileno);
                                  } else if (snapshot.hasError) {
                                    return Text("${snapshot.error}");
                                  }

                                  return CircularProgressIndicator();
                                },
                              );
                           //  signIn(textphn.text, tetpass.text);

                              //navigationPage();
                            };
                          },
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                          child: InkWell(
                            onTap:(){
                              Navigator.of(context).pushReplacementNamed(SIGNUP);
                            } ,
                            child: RichText(text: TextSpan(
                                text: 'New User? Create Account',
                                style: TextStyle(color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16)),)),
                          )






                    ]))))
    );
    throw UnimplementedError();
  }



}
class Album {
  final String mobileno;
  final String  phoneno;

  Album({this.mobileno, this.phoneno});

  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(mobileno: json['mobile_number'],
      phoneno: json['password'],);
  }
}

