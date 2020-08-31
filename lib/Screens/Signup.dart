import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'package:kmc/Constant/Constant.dart';
import 'package:wc_form_validators/wc_form_validators.dart';
class Signup extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {


    return signup1();
  }

}
class signup1 extends State<Signup>{

  Future<Registeruser> _futureRegisrer ;



  Future<Registeruser> createuser(String firstnmae ,Lastname,Password,Email,Phoneno ) async{
    final http.Response response = await http.post('https://meo.co.in/KmcApi/index.php/userRegister',
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String  >{
        "firstname":firstnmae,
        "lastname":Lastname,
        "email":Email,
        "phone":Phoneno,
        "password":Password


      }),
    );
    if (response.statusCode == 200 ) {


      Map<String,dynamic> responseJson = json.decode(response.body);

      //Map result = responseJson['result'];

    //  var sucess= responseJson['message'];
      print( 'result ${response.body}');




      // If the server did return a 201 CREATED response,
      // then parse the JSON.
      return  Registeruser.fromJson(json.decode(response.body));
    } else {
      var  jsonResponse = json.decode(response.body);

      throw Exception('Failed to load album');
    }
  }

  TextEditingController txtphnoe = TextEditingController();
  TextEditingController txtemail =  TextEditingController();
  TextEditingController txtpassword = TextEditingController();
  TextEditingController txtfname =  TextEditingController();
  TextEditingController txtlastname = TextEditingController();
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
   String isValidEmail( String value) {
    String patt = r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
        RegExp regExp= new RegExp(patt);
        if(value.length==0)
{ return 'Please enter email ';
}
        else if (!regExp.hasMatch(value)) {
          return 'Please enter valid email';
        }
    return null;
}
  Widget _buildName()  {
    return TextFormField(

      controller: txtfname,
      decoration: InputDecoration(
        labelText: " First Name ",

        fillColor: Colors.white,
        enabledBorder:OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.black, width: 2.0),
          borderRadius: BorderRadius.circular(0.0),
        ),),

      validator: (String value) {
        if (value.isEmpty) {
          return 'Name is Required';
        }

        return null;
      },

    );
  }
  Widget _buildLname() {
    return TextFormField(
      controller: txtfname,
      decoration: InputDecoration(
        labelText: "  LastName ",

        fillColor: Colors.redAccent,
        enabledBorder:OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.black, width: 2.0),
          borderRadius: BorderRadius.circular(0.0),
        ),),

      validator: (String val) {
        if (val.isEmpty) {
          return ' Last Name  is Required';
        }

        return null;
      },

    );
  }
  Widget _buildEmail() {

    return TextFormField(
      controller: txtemail,
      decoration: InputDecoration(
        labelText: "Email ID",
        fillColor: Colors.red,
        enabledBorder:OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.black, width: 2.0),
          borderRadius: BorderRadius.circular(0.0),
        ),),

      validator: (String value) {
        if (value.isEmpty) {
          return 'Email is Required';
        }

        if (!RegExp(
            r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?")
            .hasMatch(value)) {
          return 'Please enter a valid email Address';
        }

        return null;
      },
      onSaved: (String value) {

      },
    );
  }
  Widget _buildPassword() {
    return TextFormField(
      controller: txtpassword,
      decoration: InputDecoration(
        labelText: "Password",
        fillColor: Colors.white,
        enabledBorder:OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.black, width: 2.0),
          borderRadius: BorderRadius.circular(0.0),
        ),),
      keyboardType: TextInputType.visiblePassword,

    );
  }
  Widget _buildPhoneNumber() {

    return TextFormField(
      controller:txtphnoe ,
      decoration: InputDecoration(
        labelText: "Phone No.",
        fillColor: Colors.black,
        enabledBorder:OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.black, width: 2.0),
          borderRadius: BorderRadius.circular(0.0),
        ),),
maxLength: 10,
      keyboardType: TextInputType.visiblePassword,
validator:validateMobile ,
    );
  }

  void navigationPage() {
    Navigator.of(context).pushReplacementNamed(LOGIN_SCREEN);
  }
  final GlobalKey<FormState>_formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

return Scaffold(

  appBar: AppBar(title: Text("Sign Up"),
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
  body: Container(
    margin: EdgeInsets.all(20),
    child: Form(
    key: _formKey,
    child:
  ListView(

    children: <Widget>[


      SizedBox(height: 20,),
      Container(alignment: Alignment.center,
          child: RichText(text: TextSpan(
          text: 'Signup',
          style: TextStyle(color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 25)),)),
      SizedBox(height: 20,),
      _buildName(),
      SizedBox(height: 20,),
        _buildLname(),
      SizedBox(height: 20,),
        _buildPhoneNumber(),
      SizedBox(height: 20,),
      _buildEmail(),
      SizedBox(height: 20,),
      _buildPassword(),
      SizedBox(height: 20,),
      Container(
        margin: EdgeInsets.fromLTRB(60, 30, 60, 0),
        width: 200,
        height: 50,
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
            'Continue',
            style: TextStyle(color: Colors.white),
          ),
          onPressed:  () {

            if (_formKey.currentState.validate()){
            // String loginId = tetpass.text;
            //  String  loginname= textphn.text;

              _futureRegisrer = createuser(txtphnoe.text , txtemail.text  , txtpassword.text, txtfname.text , txtlastname.text,);
            //  navigationPage();

              FutureBuilder<Registeruser>(
                future: _futureRegisrer,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return Text(snapshot.data.Emaiid);
                  } else if (snapshot.hasError) {
                    return Text("${snapshot.error}");
                  }

                  return CircularProgressIndicator();
                },
              );
              //  signIn(textphn.text, tetpass.text);

              //navigationPage();
            }},

        ),
      ),



    ],
  ),),
),);





  }
}
class Registeruser{
  String Firstname;
  String Lastname;
  String Emaiid;
  String Password;
  String Phonenumber;

  Registeruser({this.Firstname, this.Lastname, this.Emaiid, this.Password,
    this.Phonenumber});
  factory Registeruser.fromJson(Map<String, dynamic> json) {
    return Registeruser(

      Firstname:json['firstname'],
      Lastname:json['lastname'],
      Emaiid:json['email'],
      Password:json['password'],
      Phonenumber:json['phone'],
    );
  }
}