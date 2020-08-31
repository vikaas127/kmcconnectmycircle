import 'package:flutter/material.dart';
import 'package:kmc/Constant/Constant.dart';

class EditScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {

    // TODO: implement createState
    return EditProfile();
  }

}

class EditProfile  extends State<EditScreen>{
  String _name;
  String _email;
  String _password;
  String _url;
  String _phoneNumber;
  String _calories;
  final GlobalKey<FormState>_formKey = GlobalKey<FormState>();
  Widget _buildName() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: " Photo",
        fillColor: Colors.white,
        enabledBorder:OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.black, width: 2.0),
          borderRadius: BorderRadius.circular(25.0),
        ),),
      maxLength: 10,
      validator: (String value) {
        if (value.isEmpty) {
          return 'Name is Required';
        }

        return null;
      },
      onSaved: (String value) {
        _name = value;
      },
    );
  }
  Widget _buildEmail() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: "Email ID",
        fillColor: Colors.white,
        enabledBorder:OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.black, width: 2.0),
          borderRadius: BorderRadius.circular(25.0),
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
        _email = value;
      },
    );
  }
  Widget _buildPassword() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: "Contact No",
        fillColor: Colors.white,
        enabledBorder:OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.black, width: 2.0),
          borderRadius: BorderRadius.circular(25.0),
        ),),
      keyboardType: TextInputType.visiblePassword,
      validator: (String value) {
        if (value.isEmpty) {
          return 'Password is Required';
        }

        return null;
      },
      onSaved: (String value) {
        _password = value;
      },
    );
  }
  Widget _buildPhoneNumber() {

    return TextFormField(

      decoration: InputDecoration(
        labelText: "Status",
        fillColor: Colors.black,
        enabledBorder:OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.black, width: 2.0),
          borderRadius: BorderRadius.circular(25.0),
        ),),

      keyboardType: TextInputType.visiblePassword,
      validator: (String value) {
        if (value.isEmpty) {
          return 'password required';
        }

        return null;
      },
      onSaved: (String value) {
        _url = value;
      },
    );
  }
  Widget _builURL() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Url'),
      keyboardType: TextInputType.url,
      validator: (String value) {
        if (value.isEmpty) {
          return 'URL is Required';
        }

        return null;
      },
      onSaved: (String value) {
        _url = value;
      },
    );
  }
  Widget _buildCalories() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Calories'),
      keyboardType: TextInputType.number,
      validator: (String value) {
        int calories = int.tryParse(value);

        if (calories == null || calories <= 0) {
          return 'Calories must be greater than 0';
        }

        return null;
      },
      onSaved: (String value) {
        _calories = value;
      },
    );
  }
  void navigationPage() {
    Navigator.of(context).pushReplacementNamed(HOME_SCREEN);
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
     //   backgroundColor: Colors.amberAccent,

        body: SingleChildScrollView(  child:
        Container(
            margin: EdgeInsets.all(24),
            child: Form(
                key: _formKey,
                child: Column(

                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(height: 60,),
                      Container(child: RichText(text: TextSpan(text: 'Edit Profile',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 25)),)),
                      SizedBox(height: 40,),
                      _buildName(),
                      SizedBox(height: 20),
                      _buildEmail(),
                      SizedBox(height: 20),
                      _buildPassword(),
                      // _builURL(),
                      SizedBox(height: 20),
                      _buildPhoneNumber(),
                      //_buildCalories(),
                      SizedBox(height: 60),
                      SafeArea(
                          child: Center(
                              child:
                              Container(
                                  width: 250,height: 45,

                                  child:
                                  RaisedButton(
                                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(16.0))),
                                      color: Colors.white,
                                      child: Text(
                                        'Continue',
                                        style: TextStyle(color: Colors.black, fontSize: 18,fontWeight: FontWeight.bold),
                                      ),
                                      onPressed: () {
                                        // _formKey.currentState.save();
navigationPage();
                                        print(_name);
                                        print(_email);
                                        print(_phoneNumber);
                                        //  print(_url);
                                        print(_password);
                                        // print(_calories);

                                        //Send to API


                                      } ))))
                    ]))))
    );
    throw UnimplementedError();
  }
}