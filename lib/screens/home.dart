import 'package:flutter/material.dart';
import 'package:japan_language/screens/numbers_page.dart';
import '../components/co.dart';
import '../models/fam.dart';
import '../screens/numbers_page.dart';
import '../components/categories.dart';
import '../components/fa.dart';
import 'family.dart';
import 'colors.dart';
import 'phrases.dart';
class home_page extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor:Color(0xff46322B) ,
        title:Text(
          "Toku",
          style:TextStyle(
            fontSize: 24,
          ) ,
        ) ,
      ) ,
      body: Column(
        children: [
          Category(
           onTap: () {
             Navigator.push(context, MaterialPageRoute(builder:( BuildContext context)
             {
               return numbers_page();
             }
             ));
           },
            text: "Numbers",
            color: Color(0xffEF9235),

          ),
          Category(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder:( BuildContext context )
              {
                return family1();
              }));
            },
            text: "Family Members",
            color: Color(0xff558B37),
          ),
          Category(
            onTap: ()
            {
              Navigator.push(context, MaterialPageRoute(builder:( BuildContext context )
              {
                return colors();
              }));
            },
            text: "Colors",
            color: Color(0xff79359F),
          ),
          Category (
            onTap: ()
            {
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)
              {
                return phrases();
              }));
            },
            text: "Phrases",
            color: Color(0xff50ADC7),
          ),

        ],
      ),
    );
  }
}

