import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:contacts_service/contacts_service.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:image_picker/image_picker.dart';
import 'package:kmc/Screens/HomePage.dart';
import 'package:kmc/Screens/Mainhome.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:rich_alert/rich_alert.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'contactdetailupdate.dart';

class ContactsPage extends StatefulWidget {

  ContactdetailEditScreen contactdetailEditScreen=new ContactdetailEditScreen();

  @override
  _ContactsPageState createState() => _ContactsPageState(

  );
}

class _ContactsPageState extends State<ContactsPage> {
  List<Contact> _contacts = new List<Contact>();
  List<CustomContact> _uiCustomContacts = List<CustomContact>();
  List<CustomContact> _allContacts = List<CustomContact>();
  bool _isLoading = false;
  String User_id;
  bool _isSelectedContactsView = false;
  String floatingButtonLabel;
  Color floatingButtonColor;
  var  indes;
  IconData icon;
  _ContactsPageState({
      this.floatingButtonLabel, this.floatingButtonColor, this.icon});
  //Iterable<Contact> _contacts;
List<bool>inputs=new List<bool>();

  Future<CustomContact> _futureAlbum;
  void _onSubmit() {
    setState(() {
      if (!_isSelectedContactsView) {
        _uiCustomContacts = _allContacts.where((contact) => contact.isChecked == true).toList();
        _isSelectedContactsView = true;

      }
    });
  }
  @override
  void initState() {
    refreshContacts();
    super.initState();
  }
  refreshContacts() async {
    setState(() {
      _isLoading = true;
    });
    var contacts = await ContactsService.getContacts();


    _populateContacts(contacts);
  }

  void _populateContacts(Iterable<Contact> contacts) {
    _contacts = contacts.where((item) => item.displayName != null).toList();
    _contacts.sort((a, b) => a.displayName.compareTo(b.displayName));

    _allContacts = _contacts.map((contact) => CustomContact(contact: contact)).toList();
    setState(() {
      _uiCustomContacts = _allContacts;
      _isLoading = false;
    });
  }

  final GlobalKey<FormState>_formKey = GlobalKey<FormState>();
  TextEditingController textpicupload = TextEditingController();
  TextEditingController tetphn =  TextEditingController();
  TextEditingController textphn2 = TextEditingController();
  TextEditingController tetemail =  TextEditingController();
  TextEditingController textname = TextEditingController();
  TextEditingController tetcity =  TextEditingController();
  TextEditingController textpincode = TextEditingController();
  TextEditingController tetbusneestype =  TextEditingController();
  TextEditingController textweblink = TextEditingController();
  TextEditingController tetbusness =  TextEditingController();
  TextEditingController textabout = TextEditingController();
  Future<void> _showSelectionDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
              title: Text("From where do you want to take the photo?"),
              content: SingleChildScrollView(
                child: ListBody(
                  children: <Widget>[
                    GestureDetector(
                      child: Text("Gallery"),
                      onTap: () {
                        _openGallery(context);
                      },
                    ),
                    Padding(padding: EdgeInsets.all(8.0)),
                    GestureDetector(
                      child: Text("Camera"),
                      onTap: () {
                        //_openCamera(context);
                      },
                    )
                  ],
                ),
              ));
        });
  }
  void _openGallery(BuildContext context) async {
    // ignore: deprecated_member_use
    var picture = await ImagePicker.pickImage(source: ImageSource.gallery);
    this.setState(() {
      var imageFile = picture;
    });
    Navigator.of(context).pop();
  }
  Future<CustomContact> createAlbum(String  Userid,Name ,Phone,Phone2,Email,Pincode,Weblink,Busness,busnesstype,about,City,) async {
    //var jsonResponse = null;
    var map = new Map<String, dynamic>();
    map['user_id'] = Userid;
    map['name'] = Name;
    map['mobile_number'] = Phone;
    map['mobile_number2'] = Phone2;
    map['email_id'] =Email;
    map['pincode'] = Pincode;
    map['web_link'] = Weblink;
    map['business_type'] = busnesstype;
    map['business_category'] = Busness;
    map['about'] = about;
    map['file'] = 'ABC1234563Af88jesKxPLVirJRW8wXvj3D';
    map['city'] = City;

    final http.Response response = await http.post(
      'https://meo.co.in/KmcApi/index.php/addContacts',
        body: map,


    );


    if (response.statusCode == 200 ) {


      var responseJson = json.decode(response.body.toString());

      Fluttertoast.showToast(
          msg: "data send to sever 111111111111"+response.body,
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0
      );

      // If the server did return a 201 CREATED response,
      // then parse the JSON.
      return  CustomContact.fromJson(json.decode(response.body));

    } else {
      var  jsonResponse = json.decode(response.body);

      throw Exception('Failed to load album');
    }
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
          onPressed: () {
            _showSelectionDialog(context);
          },
        ),
      );
  }
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
      controller: textname,
      validator: (String value) {
        if (value.isEmpty) {
          return 'Name is Required';
        }

        return null;
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
controller: tetemail,


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
controller: tetphn,
      keyboardType: TextInputType.number,
      validator: (String value) {
        if (value.isEmpty) {
          return 'mobile no required';
        }

        return null;
      },

    );
  }
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
  Widget _mobile2(){
    return
    TextFormField(
      validator: validateMobile,
      controller: textphn2,
      decoration: InputDecoration(labelText: 'Mobile 2'),
      keyboardType: TextInputType.number,
    );
  }
  Widget _city(){
    return TextFormField(
      controller: tetcity,
      decoration:  InputDecoration(labelText: 'City'),
      keyboardType: TextInputType.text,
      validator: (String value) {
        if (value.isEmpty) {
          return 'City is Required';
        }

        return null;
      },
    );

  }
  Widget _pincode(){
    return TextFormField(
      controller: textpincode,
      decoration: InputDecoration(labelText: 'Pincode'),
      keyboardType: TextInputType.number,


    );}
  Widget _weblink(){ return
    TextFormField(
      controller: textweblink,
      decoration: InputDecoration(labelText: 'Web Links'),
      keyboardType: TextInputType.url,
    );
  }
  Widget _busness(){ return
    TextFormField(
      validator: (String value) {
        if (value.isEmpty) {
          return 'Busness is Required';
        }

        return null;
      },
      controller: tetbusness,
      decoration: InputDecoration(labelText: 'Business type'),
      keyboardType: TextInputType.text,
    );
  }
  Widget _busnesstype(){ return
    TextFormField(
      controller: tetbusneestype,
      decoration: InputDecoration(labelText: 'Business category'),
      keyboardType: TextInputType.text,
      validator: (String value) {
        if (value.isEmpty) {
          return 'Bussnesstype is Required';
        }

        return null;
      },
    );
  }
  Widget _about(){ return
    TextFormField(
      controller: textabout,
      decoration: InputDecoration(labelText: 'About'),
      keyboardType: TextInputType.multiline,
      validator: (String value) {
        if (value.isEmpty) {
          return 'About is Required';
        }

        return null;
      },
    );
  }

  void navigationPage() {
    Navigator.push(context, new MaterialPageRoute(
        builder: (context) =>
        new mainhome())

    );
  }
  _openPopup(context) {
    Alert(

        context: context,
        title: "Form Detail",
        content:  SingleChildScrollView(  child:
        Container(

            margin: EdgeInsets.all(5),
            child: Form(
                key: _formKey,
                child: Column(

                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[


                      new Container(

                        child: _profilepic(),
                      ),
                      SizedBox(height: 5,),
                      Container(child: RichText(text: TextSpan(text: 'Upload Profile Photo',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18)),)),
                      SizedBox(height: 10,),
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

                      //  _buildPhoneNumber(),
                      //_buildCalories(),


                    ])))),
        buttons: [
          DialogButton(
            onPressed: () async {



              final prefs = await SharedPreferences.getInstance();
              final counter = prefs.getInt('counter') ?? 0;
              String stringValue = counter.toString();
              print ('id type find krna h $counter $stringValue');
              if (_formKey.currentState.validate()){
              _futureAlbum = createAlbum(stringValue, textname.text, tetphn.text, textphn2.text, tetemail.text, textpincode.text, textweblink.text, tetbusness.text, tetbusneestype.text , textabout.text,tetcity.text);
              Navigator.of(context, rootNavigator: true).pop();
            }},
            child: Text(
              "SAVE",
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
          )
        ]).show();
  }


  showAlertDialog(BuildContext context) {
    // Create button
    Widget okButton = FlatButton(
      child: Text("Next"),
      onPressed: () {
        // Navigator.of(context, rootNavigator: true).pop('dialog');
        Navigator.of(context, rootNavigator: true).pop();
        _openPopup(context);


      },
    );

    // Create AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("DETAILS"),
      content: Text("Provide basic details about person"),
      actions: [
        okButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  ListTile _buildListTile(CustomContact c, List<Item> list) {
    return ListTile(
      leading: (c.contact.avatar != null)
          ? CircleAvatar(backgroundImage: MemoryImage(c.contact.avatar))
          : CircleAvatar(child: Text((c.contact.displayName[0] + c.contact.displayName[1].toUpperCase()), style: TextStyle(color: Colors.white)),),
      title: Text(c.contact.displayName ?? ""),
      subtitle: list.length >= 1 && list[0]?.value != null
          ? Text(list[0].value)
          : Text(''),
      trailing: Checkbox(
          activeColor: Colors.green,
          value: c.isChecked,
          onChanged: (bool value) {
            setState(() {
              c.isChecked = value;
              showAlertDialog(context);
             // _openPopup(context);

            });
          }),
onTap: (){
     onTapped(_contacts);
},

    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: (Text('Contacts Book ')

        ), flexibleSpace: Container(
    decoration: BoxDecoration(
    gradient: LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: <Color>[
    Colors.indigo,
    Colors.blue,
      Colors.lightBlueAccent,
    ],
    ),
    ),),
        actions: <Widget>[

          InkWell( onTap: (){

            navigationPage();
          },
            child:Container(
              width: 100,
              alignment:Alignment.center ,
              child:
          Text('FINISH CIRCLE', style: TextStyle(color: Colors.amberAccent, fontSize: 15,fontWeight: FontWeight.bold, ),),),
          ),
      ],
      ),
      body:!_isLoading
          ? Container(
        child: ListView.builder(
          itemCount: _uiCustomContacts?.length,
          itemBuilder: (BuildContext context, int index) {
            CustomContact _contact = _uiCustomContacts[index];

            var _phonesList = _contact.contact.phones.toList();

            return _buildListTile(_contact, _phonesList);
          },
        ),
      )
          : Center(
        child: CircularProgressIndicator(),
      ),
    );
  }

  void onTapped(List<Contact> contacts) {





   print("vikas") ;

  }


}
class CustomContact {
  final Contact contact;
  bool isChecked;
 String Textpicupload ;
 String  Tetphn ;
String   Textphn2 ;
 String Tetemail ;
  String Textname ;
  String Tetcity ;
 String  Textpincode ;
  String Tetbusneestype ;
  String Textweblink;
 String Tetbusness ;
  String Textabout;
String TUserid;






  CustomContact({
    this.TUserid,
      this.contact,
      this.isChecked=false,
      this.Textpicupload,
      this.Tetphn,
      this.Textphn2,
      this.Tetemail,
      this.Textname,
      this.Tetcity,
      this.Textpincode,
      this.Tetbusneestype,
      this.Textweblink,
      this.Tetbusness,
      this.Textabout});
  factory CustomContact.fromJson(Map<String, dynamic> json) {
    return CustomContact(
      Textname  : json['name'],
      Tetphn : json['mobile_number'],
      Textphn2  : json['mobile_number2'],
      Tetemail : json['email_id'],
      Textpincode  : json['pincode'],
      Textweblink : json['web_link'],
      Tetbusneestype            : json['business_type'],
      Tetbusness : json['business_category'],
      Textabout : json['about'],
      Tetcity : json['city'],
      TUserid : json['user_id'],

    );
  }

}
