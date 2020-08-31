import 'package:flutter/material.dart';

import 'Constant/Constant.dart';
import 'Screens/AccessContacts.dart';
import 'Screens/AlbumContainerScreen.dart';
import 'Screens/Contactdetail.dart';
import 'Screens/ContactsPage.dart';
import 'Screens/EditProfile.dart';
import 'Screens/HomePage.dart';
import 'Screens/HomeScreen.dart';
import 'Screens/Login.dart';
import 'Screens/Mainhome.dart';
import 'Screens/Otp.dart';
import 'Screens/OtpPage.dart';
import 'Screens/PhotoContainerScreen.dart';
import 'Screens/Signup.dart';
import 'Screens/SplashScreen.dart';
import 'Screens/VideoContainerScreen.dart';
import 'Screens/contactdetailupdate.dart';

void main() {
  runApp(new MaterialApp(
    title: 'Layout design',
    debugShowCheckedModeBanner: false,
    theme: new ThemeData(
        accentColor: Colors.black

        ,
        indicatorColor: Colors.black,
        highlightColor:  Colors.black,
        bottomAppBarColor: Colors.black,
        primaryColor: Color(0xFFffffff),
        primaryColorDark: Color(0xffffff)),
    home: new SplashScreen(),
    routes: <String, WidgetBuilder>{
      LOGIN_SCREEN:(BuildContext context)=> new LoginScreenq(),
      EDITPROFILE:(BuildContext context)=> new EditScreen(),
      OTPPROFLIE:(BuildContext context)=> new PasscodeTextField(totalCharacters: 4, onTextChanged: null),

      HOME_SCREEN: (BuildContext context) => new HomeScreen(),
      ANIMATED_SPLASH: (BuildContext context) => new SplashScreen(),
      PHOTO_CONTAINER_SCREEN: (BuildContext context) =>
      new PhotoContainerScreen(),
      VIDEO_CONTAINER_SCREEN: (BuildContext context) =>
      new VideoContainerScreen(),
      ALBUM_CONTAINER_SCREEN: (BuildContext context) =>
      new AlbumContainerScreen(),
      HOME_SCR: (BuildContext context) => new HomePage(),
      OTP_SCREEN: (BuildContext context) => new OtpPage(),
      MAIN_HOME:(BuildContext context)=>new mainhome(),
      CONTST:(BuildContext context)=>new  ContactsPage(),

      ACCESS_AB:(BuildContext context)=>new SeeContactsButton(),
      CONTDETIL:(BuildContext context)=>new ContactdetailEditScreen(),
      CONTDETALS:(BuildContext context)=>new PlayingSlivers(),
      SIGNUP: (BuildContext context)=>new Signup(),
    },
  ));}
