import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:profile_app/constants.dart';
import 'screen1.dart';

class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: SafeArea(
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => Screen1(),
                        ),
                      );
                    },
                    child: Icon(
                      FontAwesomeIcons.chevronLeft,
                      color: kpinkcolor,
                    ),
                  ),
                  SizedBox(width: 220),
                  Text(
                    'DOG PROFILE',
                    style: TextStyle(
                        color: Colors.black.withOpacity(0.5),
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ],
              ),
              Container(
                  height: (MediaQuery
                      .of(context)
                      .size
                      .height / 2) - 100,
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                  child: Stack(
                    children: [
                      Image(
                        image: AssetImage('images/puppy.jpg'),
                      ),
                      Positioned(
                        right: 20,
                        top: 250,
                        child: Container(
                          height: 35,
                          width: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: kpinkcolor
                          ),
                          child: Icon(FontAwesomeIcons.upload,
                            color: kwhitecolor,
                          ),
                        ),
                      ),
                    ],
                  )
              ),
              Padding(
                padding: const EdgeInsets.only(right: 260),
                child: Text(
                  'Dog Details',
                  style: kdogdetail
                ),
              ),
              SizedBox(height: 15,),
              DetailRow('Name', 200,'Duke'),
              SizedBox(height: 15,),
              DetailRow('Breed', 200,'pub'),
              SizedBox(height: 15,),
              DetailRow('Gender', 200,'Male'),
              SizedBox(height: 15,),
              DetailRow2('Age',200,'5 Years', FontAwesomeIcons.calendarPlus),
              SizedBox(height: 15,),
              DetailRow2('Vaccinated',80, '01-march-2021', FontAwesomeIcons.upload),
              SizedBox(height: 15,),
              DetailRow2('DogSize',150,'Small', FontAwesomeIcons.chevronDown),
              SizedBox(height: 15,),
              DetailRow('About',50,'If you\'re looking for a loving, \n easygoing pal. I am your boy '),
              SizedBox(height: 30,),
              Row(
                children: [
                  Icon(Icons.home_outlined,size:25,color: klightpink,),
                  SizedBox(width: 10,),
                  BottomContainer('Save \$ Next'),
                  SizedBox(width: 10,),
                  Icon(FontAwesomeIcons.userCircle,color: klightpink,),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Row DetailRow(String key,double width,String value){
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          key,
          style: TextStyle(
              color: Colors.black.withOpacity(0.8),
              fontSize: 20
          ),
        ),
        SizedBox(width: width),
        Text(
          value,
          style: TextStyle(
              color: Colors.black.withOpacity(0.8),
              fontSize: 20
          ),
        ),
      ],
    );
  }



Row DetailRow2(String key,double width, String value,IconData icon) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Text(
        key,
        style: TextStyle(
            color: Colors.black.withOpacity(0.8),
            fontSize: 20
        ),
      ),
      SizedBox(width: width),
      Text(
        value,
        style: TextStyle(
            color: Colors.black.withOpacity(0.8),
            fontSize: 20
        ),
      ),
      SizedBox(width: 20),
      InkWell(
        onTap: (){
        },
        child: Icon(
          icon,
          color: klightpink,
          size: 20,
        ),
      ),
    ],
  );
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
