import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'listcall.dart';

class ContactdetailEditScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {

    // TODO: implement createState
    return EditContact();
  }

}

class EditContact  extends State<ContactdetailEditScreen>{
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
        labelText: " Name",
      //  fillColor: Colors.white,
       // enabledBorder:OutlineInputBorder(
        //  borderSide: const BorderSide(color: Colors.black, width: 2.0),
        //  borderRadius: BorderRadius.circular(25.0),
        ),
     // maxLength: 10,
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
      //  enabledBorder:OutlineInputBorder(
       //   borderSide: const BorderSide(color: Colors.black, width: 2.0),
      //    borderRadius: BorderRadius.circular(25.0),
        ),

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
       // enabledBorder:OutlineInputBorder(
       //   borderSide: const BorderSide(color: Colors.black, width: 2.0),
     //     borderRadius: BorderRadius.circular(25.0),
        ),
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
        labelText: "Mobile no ",
        fillColor: Colors.black,
       //// enabledBorder:OutlineInputBorder(
        //  borderSide: const BorderSide(color: Colors.black, width: 2.0),
      //    borderRadius: BorderRadius.circular(25.0),
        ),

      keyboardType: TextInputType.number,
      validator: (String value) {
        if (value.isEmpty) {
          return 'mobile no required';
        }

        return null;
      },
      onSaved: (String value) {
        _url = value;
      },
    );
  }

  Widget _mobile2(){ return
    TextFormField(
      decoration: InputDecoration(labelText: 'Mobile 2'),
      keyboardType: TextInputType.number,
    );
  }
  Widget _city(){
    return TextFormField(
      decoration:  InputDecoration(labelText: 'City'),
      keyboardType: TextInputType.text,
    );

}
Widget _pincode(){
    return TextFormField(
  decoration: InputDecoration(labelText: 'Pincode'),
  keyboardType: TextInputType.number,


);}
Widget _weblink(){ return
    TextFormField(
      decoration: InputDecoration(labelText: 'Web Links'),
      keyboardType: TextInputType.url,
    );
}
  Widget _busness(){ return
    TextFormField(
      decoration: InputDecoration(labelText: 'Business type'),
      keyboardType: TextInputType.text,
    );
  }
  Widget _busnesstype(){ return
    TextFormField(
      decoration: InputDecoration(labelText: 'Business category'),
      keyboardType: TextInputType.text,
    );
  }
  Widget _about(){ return
    TextFormField(
      decoration: InputDecoration(labelText: 'About'),
      keyboardType: TextInputType.multiline,
    );
  }

  void navigationPage() {
    Navigator.push(context, new MaterialPageRoute(
        builder: (context) =>
        new ListScreen())

    );
  }
  Widget _profilepic(){
    return
      Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black,
            width: 2,

          ),
        ),
        padding: EdgeInsets.all(10),
        alignment: Alignment.center,
        child: IconButton(
          icon: Icon(
            Icons.camera_alt,
          ),
          iconSize: 40,
          color: Colors.green,
          splashColor: Colors.purple,
          onPressed: () {},
        ),
      );
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
appBar: AppBar(title: Text("Update Contact detail"),
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

        body: SingleChildScrollView(  child:
        Container(
            margin: EdgeInsets.all(24),
            child: Form(
                key: _formKey,
                child: Column(

                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[

                      SizedBox(height: 10,),
                      new Container(

                        child: _profilepic(),
                      ),
                      SizedBox(height: 5,),
                      Container(child: RichText(text: TextSpan(text: 'Upload Profile Photo',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18)),)),
                      SizedBox(height: 20,),
                      _buildName(),
                      Divider(thickness: 1,),
                      _buildPhoneNumber(),
                      _mobile2(),
                      SizedBox(height: 0),
                      _buildEmail(),
                      SizedBox(height: 0),
                      _city(),
                      _pincode(),
                      _weblink(),
                      _busness(),
                      _busnesstype(),
                      _about(),
                     // _buildPassword(),
                      // _builURL(),
                      SizedBox(height: 20),
                    //  _buildPhoneNumber(),
                      //_buildCalories(),
                      SizedBox(height: 20),
                      SafeArea(
                          child: Center(
                              child:
                              Container(
                                margin: EdgeInsets.all(20),
                                width: 200,
                                height: 50,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [Colors.indigo,Colors.blue,Colors.amberAccent, ],

                                    begin: FractionalOffset.center,
                                    end: FractionalOffset.bottomRight,
                                  ),
                                ),
                                child: FlatButton(
                                  child: Text(
                                    'Continue',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  onPressed: () {
                                    navigationPage();
                                  },
                                ),
                              ),))
                    ]))))
    );
    throw UnimplementedError();
  }
}