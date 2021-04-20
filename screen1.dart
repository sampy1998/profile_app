import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:profile_app/constants.dart';
import 'screen2.dart';

class Screen1 extends StatefulWidget {
  @override
  _Screen1State createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(20.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    FontAwesomeIcons.chevronLeft,
                    color: kpinkcolor,
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Icon(
                    FontAwesomeIcons.commentAlt,
                    color: kpinkcolor,
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Icon(
                    FontAwesomeIcons.cog,
                    color: kpinkcolor
                  ),
                  SizedBox(
                    width: 190.0,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => Screen2(),
                        ),
                      );
                    },
                    child: Text(
                      'Profile',
                      style: TextStyle(
                          color: Colors.black.withOpacity(0.5),
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 250),
              child: Text(
                'Hi,',
                style: khi
              ),
            ),
            Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 50, left: 40, right: 40),
                  height: (MediaQuery
                      .of(context)
                      .size
                      .height / 2) - 130,
                  width: 300,
                  decoration: BoxDecoration(
                    color: kpinkcolor,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 20),
                      Text(
                        'Duke',
                        style: ktextContainer
                      ),
                      Text(
                        'PUG',
                        style: ktextpub
                      ),
                      Text(
                        '5 years old',
                        style:ktextContainer
                      ),
                      Text(
                        'MALE',
                        style: ktextmale,
                      ),
                      Icon(
                        FontAwesomeIcons.checkCircle,
                        color: Colors.green,
                        size: 30,
                      ),
                      Text(
                        'Vaccinated',
                        style: ktextvacc
                      ),
                      Text(
                        '{1 month girl}',
                        style: ktextgirl
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 5,
                  left: 140,
                  child: Container(
                    child: CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage('images/puppy.jpg'),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 5),
            Icon(FontAwesomeIcons.chevronDown,
              color: kpinkcolor,
            ),
            Text(
              'About Me',
              style: kaboutme
            ),
            SizedBox(height: 5),
            Text(
              'If you\'re looking for a loving, \n easygoing pal. I am your boy ',
              style: TextStyle(
                  color: Colors.black.withOpacity(0.5),
                  fontWeight: FontWeight.w900,
                  fontSize: 10
              ),
            ),
            SizedBox(height: 5),
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('images/boy.jpg'),
            ),
            Text(
              'Aditya',
              style: kname
            ),
            Text(
              'Owner',
              style: TextStyle(
                  color: Colors.black.withOpacity(0.9),
                  fontWeight: FontWeight.w900,
                  fontSize: 10
              ),
            ),
            SizedBox(height: 5,),
            BottomContainer('Find a match'),
            SizedBox(height: 10,),
            BottomContainer('Found matches'),
          ],
        ),
      ),
    );
  }
}


Container BottomContainer(String text1) {
  return Container(
    height: 40,
    width: 300,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: kpinkcolor
    ),
    child: Center(
      child: Text(
        text1,
        style: ktext1
      ),
    ),
  );
}