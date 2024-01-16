import 'package:flutter/material.dart';
import '../models/col.dart';
import 'package:japan_language/components/co.dart';
class colors extends StatelessWidget {
  List<Colora> color = [
    Colora(
        image: 'assets/colors/color_black.png',
        jpName: 'Kuro',
        enName: 'black',
        sound: 'black.wav'),
    Colora(
        image: 'assets/colors/color_brown.png',
        jpName: 'Chairo',
        enName: 'brown',
        sound: 'brown.wav'),
    Colora(
        image: 'assets/colors/color_dusty_yellow.png',
        jpName: 'Hokori ppoi kiiro',
        enName: 'dusty yellow',
        sound: 'dusty yellow.wav'),
    Colora(
        image: 'assets/colors/color_gray.png',
        jpName: 'Gurē',
        enName: 'gray',
        sound: 'gray.wav'),
    Colora(
        image: 'assets/colors/color_green.png',
        jpName: 'Midori',
        enName: 'green',
        sound: 'green.wav'),
    Colora(
        image: 'assets/colors/color_red.png',
        jpName: 'Aka',
        enName: 'red',
        sound: 'red.wav'),
    Colora(
        image: 'assets/colors/color_white.png',
        jpName: 'Shiro',
        enName: 'white',
        sound: 'white.wav'),
    Colora(
        image: 'assets/colors/yellow.png',
        jpName: 'Kiiro',
        enName: 'yellow',
        sound: 'yellow.wav'),



  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff46322B),
        title: Text(
          "Colors",
          style: TextStyle(
            fontSize: 24,
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment:MainAxisAlignment.center ,
          crossAxisAlignment:CrossAxisAlignment.start ,
          children: [

            ...getList(color),


          ],
        ),
      ),


    );
  }


  List<Widget> getList (List<Colora> color){
    List<co> itemsList=[];
    for(int i = 0 ; i<color.length;i++){
      itemsList.add(co(x: color[i]));
    }

    return itemsList;
  }
}


// item == co
//Number==Colora
//number=x;
//numbers=color

