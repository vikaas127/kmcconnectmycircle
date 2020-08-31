import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Contactdetail extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return Contactdetail2();
  }
//
}

class Contactdetail2 extends State<Contactdetail>{
  @override
  Widget build(BuildContext context)
  {
    Widget _Email(){
      return

        RichText(text: TextSpan(text: 'Email:',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18)),);}

    Widget _name(){
      return
        RichText(text: TextSpan(text: 'Profession:',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18)),);}


    Widget _namedetails(){
      return
        RichText(text: TextSpan(text: 'Graphic Designer',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18)),);}


    Widget _phone(){
      return
        RichText(text: TextSpan(text: 'Mobile :',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18)),);}


    Widget _phone1(){
      return
        RichText(text: TextSpan(text: 'Mobile no2 :',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18)),);}


    Widget _phonedetail(){
      return
        RichText(text: TextSpan(text: '941319459',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18)),);}


    Widget _phone1detail(){
      return
        RichText(text: TextSpan(text: '8233081931',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18)),);}


    Widget _emaildatial(){

      return
        RichText(text: TextSpan(text: 'Vikas090497@gmail.com',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18)),);}



    return Scaffold(
      backgroundColor: Colors.amberAccent,
      body: ListView(

          children: <Widget>[
          //  RichText(text: TextSpan(text: 'Vikas yadav:',style: TextStyle(color: Colors.black,fontWeight: FontWeight.normal,fontSize: 20)),),
           // Divider(thickness: 1,),
            SizedBox(height: 20,),



            SizedBox(height: 10,),


            SizedBox(height: 10,),
            Row(
              children: <Widget>[ _phone(),_phonedetail()],

            ),
            Row(
              children: <Widget>[_phone1(),_phone1detail()],

            ),
            SizedBox(height: 20,),
            Row(
              children: <Widget>[_Email(),_emaildatial()],
            ),
            SizedBox(height: 20,),
            Row(
              children: <Widget>[_name(),_namedetails()],


            ),
            SizedBox(height: 30,),
            RichText(text: TextSpan(text: 'About Business:',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 22)),),

          ]

      ),
      // color: Colors.amberAccent,



    );
  }

// TODO: implement build

}
