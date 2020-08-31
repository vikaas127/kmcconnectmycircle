import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kmc/Screens/ContactsPage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PlayingSlivers extends StatefulWidget {
  final CustomContact item;

  const PlayingSlivers({Key key, this.item}) : super(key: key);

  @override
  State<StatefulWidget> createState() => PlayingSliversState();
}

class PlayingSliversState extends State<PlayingSlivers> {
  var counter;

  var Emaild;

  var Phoned;

  var Phoned2;

  var Busnessd;

  var About;
  String stringValue;

  @override
  void initState() {
    refreshContacts();
    super.initState();

    final Textnameq = widget.item.Textname;
    final Emailq = widget.item.Tetemail;
    final Phoneq = widget.item.Tetphn;
    final Phoneqq = widget.item.Textphn2;
    final Aboutq = widget.item.Textabout;
    final Busnessq = widget.item.Tetbusness;
  }

  refreshContacts() async {
    final prefs = await SharedPreferences.getInstance();

// Try reading data from the counter key. If it doesn't exist, return 0.
    counter = prefs.getString('Textnameq') ?? 0;
    Emaild = prefs.getString('Emailq') ?? 0;
    Phoned = prefs.getString('Phoneq') ?? 0;
    Phoned2 = prefs.getString('Phoneqq') ?? 0;
    Busnessd = prefs.getString('Busnessq') ?? 0;
    About = prefs.getString('Aboutq') ?? 0;
    stringValue = counter.toString();

    print('abcasdfgh  $counter $Emaild $Phoned $Phoned2 $Busnessd $About ');
  }

  Widget _Email() {
    print('strinvalue $stringValue');
    return RichText(
      text: TextSpan(
          text: 'Email:',
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 15)),
    );
  }

  Widget _name() {
    return RichText(
      text: TextSpan(
          text: 'Profession:',
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 15)),
    );
  }

  Widget _namedetails() {
    return Text(
      Phoned2 ?? "vikaas",
      textAlign: TextAlign.left,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 15,
      ),
    );
  }

  Widget _phone() {
    return RichText(
      text: TextSpan(
          text: 'Mobile :',
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 15)),
    );
  }

  Widget _phone1() {
    return RichText(
      text: TextSpan(
          text: 'Mobile no2 :',
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 15)),
    );
  }

  Widget _phonedetail() {
    return RichText(
      text: TextSpan(
          text: 'Phoned' ?? 'default',
          style: TextStyle(color: Colors.black, fontSize: 15)),
    );
  }

  Widget _phone1detail() {
    return RichText(
      text: TextSpan(
          text: Phoned2 ?? 'default',
          style: TextStyle(color: Colors.black, fontSize: 15)),
    );
  }

  Widget _emaildatial() {
    return RichText(
      text: TextSpan(
          text: Emaild ?? 'Vikas090497@gmail.com',
          style: TextStyle(color: Colors.black, fontSize: 15)),
    );
  }

  Widget _instragram() {
    return Container(
      padding: EdgeInsets.all(0),
      alignment: Alignment.center,
      child: IconButton(
        icon: FaIcon(FontAwesomeIcons.instagramSquare),
        iconSize: 40,
        color: Colors.red,
        splashColor: Colors.purple,
        onPressed: () {},
      ),
    );
  }

  Widget _facebook() {
    return Container(
      padding: EdgeInsets.all(0),
      alignment: Alignment.center,
      child: IconButton(
        icon: FaIcon(FontAwesomeIcons.facebookSquare),
        iconSize: 40,
        color: Colors.blueAccent,
        splashColor: Colors.purple,
        onPressed: () {},
      ),
    );
  }

  Widget _whaatapp() {
    return Container(
      padding: EdgeInsets.all(0),
      alignment: Alignment.center,
      child: IconButton(
        icon: FaIcon(FontAwesomeIcons.whatsappSquare),
        iconSize: 40,
        color: Colors.green,
        splashColor: Colors.purple,
        onPressed: () {},
      ),
    );
  }

  Widget _youtube() {
    return Container(
      padding: EdgeInsets.all(0),
      alignment: Alignment.center,
      child: IconButton(
        icon: FaIcon(FontAwesomeIcons.youtubeSquare),
        iconSize: 40,
        color: Colors.red,
        splashColor: Colors.purple,
        onPressed: () {},
      ),
    );
  }

  Widget _linkedin() {
    return Container(
      padding: EdgeInsets.all(0),
      alignment: Alignment.center,
      child: IconButton(
        icon: FaIcon(FontAwesomeIcons.linkedin),
        iconSize: 40,
        color: Colors.blue,
        splashColor: Colors.purple,
        onPressed: () {},
      ),
    );
  }

  Widget _website() {
    return Container(
      padding: EdgeInsets.all(0),
      alignment: Alignment.center,
      child: IconButton(
        icon: FaIcon(FontAwesomeIcons.weebly),
        iconSize: 40,
        color: Colors.green,
        splashColor: Colors.purple,
        onPressed: () {},
      ),
    );
  }

  Widget _call() {
    return Container(
      padding: EdgeInsets.fromLTRB(70, 0, 0, 0),
      alignment: Alignment.center,
      child: IconButton(
        icon: Icon(
          Icons.phone,
        ),
        iconSize: 40,
        color: Colors.green,
        splashColor: Colors.purple,
        onPressed: () {},
      ),
    );
  }

  Widget _lcation() {
    return Container(
      padding: EdgeInsets.all(0),
      alignment: Alignment.center,
      child: IconButton(
        icon: Icon(
          Icons.location_on,
        ),
        iconSize: 40,
        color: Colors.green,
        splashColor: Colors.purple,
        onPressed: () {},
      ),
    );
  }

  Widget _messages() {
    return Container(
      padding: EdgeInsets.all(0),
      alignment: Alignment.center,
      child: IconButton(
        icon: FaIcon(FontAwesomeIcons.sms),
        iconSize: 40,
        color: Colors.green,
        splashColor: Colors.purple,
        onPressed: () {},
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: <Widget>[
            SliverPersistentHeader(
              pinned: true,
              floating: true,
              delegate: CustomSliverDelegate(
                expandedHeight: 120,
              ),
            ),
            SliverFillRemaining(
              child: Center(
                child: ListView(children: <Widget>[
                  //  RichText(text: TextSpan(text: 'Vikas yadav:',style: TextStyle(color: Colors.black,fontWeight: FontWeight.normal,fontSize: 20)),),
                  // Divider(thickness: 1,),
                  SizedBox(
                    height: 10,
                  ),

                  Row(
                    children: <Widget>[_phone(), _phonedetail()],
                  ),
                  Row(
                    children: <Widget>[_phone1(), _phone1detail()],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: <Widget>[_Email(), _emaildatial()],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: <Widget>[_name(), _namedetails()],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  new Container(
                    alignment: Alignment.center,
                    child: RichText(
                      text: TextSpan(
                          text: 'About Business:',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18)),
                    ),
                  ),
                  Divider(
                    thickness: 2,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: 100,
                    alignment: Alignment.center,
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        width: 2,
                      ),
                    ),
                    child: RichText(
                      text: TextSpan(
                          text: About ??
                              'This happens when you start using the older version of font_awesome_flutter and because the virtual device cache is stored when you build the Flutter app, so every time you change the icon you have to stop the emulator and rebuild it.',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          )),
                    ),
                  ),
                  Divider(
                    thickness: 2,
                  ),
                  Row(
                    children: <Widget>[_call(), _lcation(), _messages()],
                  ),
                  Divider(
                    thickness: 2,
                  ),
                  Row(
                    children: <Widget>[
                      _instragram(),
                      _whaatapp(),
                      _facebook(),
                      _youtube(),
                      _website(),
                      _linkedin()
                    ],
                  ),
                  new Container(
                    height: 80,
                    child: new Container(
                      margin: EdgeInsets.fromLTRB(0, 50, 0, 0),
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
                      ),
                      alignment: Alignment.bottomLeft,
                      child: new Row(children: <Widget>[
                        RichText(
                          text: TextSpan(
                              text: 'Rate us ',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18)),
                        ),
                        IconButton(
                          icon: Icon(Icons.star_border),
                          iconSize: 20,
                          color: Colors.white,
                          splashColor: Colors.purple,
                          onPressed: () {},
                        ),
                      ]),
                    ),
                  ),
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomSliverDelegate extends SliverPersistentHeaderDelegate {
  final double expandedHeight;
  final bool hideTitleWhenExpanded;

  CustomSliverDelegate({
    @required this.expandedHeight,
    this.hideTitleWhenExpanded = true,
  });

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    final appBarSize = expandedHeight - shrinkOffset;
    final cardTopPosition = expandedHeight / 2 - shrinkOffset;
    final proportion = 2 - (expandedHeight / appBarSize);
    final percent = proportion < 0 || proportion > 1 ? 0.0 : proportion;
    return SizedBox(
      height: expandedHeight + expandedHeight / 2,
      child: Stack(
        children: [
          SizedBox(
            height: appBarSize < kToolbarHeight ? kToolbarHeight : appBarSize,
            child: AppBar(
              flexibleSpace: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: <Color>[
                      Colors.indigo,
                      Colors.blueAccent,
                      Colors.amberAccent
                    ],
                  ),
                ),
              ),
              elevation: 0.0,
              title: Opacity(
                  opacity: hideTitleWhenExpanded ? 1.0 - percent : 1.0,
                  child: Text("vikas yadav")),
            ),
          ),
          Positioned(
            left: 0.0,
            right: 0.0,
            top: cardTopPosition > 0 ? cardTopPosition : 0,
            bottom: 0.0,
            child: Opacity(
              opacity: percent,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 30 * percent),
                child: Card(
                  elevation: 20.0,
                  child: Center(
                    child: new Container(
                      //  constraints: new BoxConstraints.expand(height: 200),
                      color: Colors.white,
                      child: new Container(
                        height: 250,
                        width: 300,
                        child: new Card(
                          //  elevation: 1.0,
                          //  margin: EdgeInsets.all(0.0),
                          child: new Image.asset(
                            "assets/images/scene1.png",
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  double get maxExtent => expandedHeight + expandedHeight / 2;

  @override
  double get minExtent => kToolbarHeight;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
