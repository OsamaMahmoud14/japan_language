import 'package:flutter/material.dart';
import 'package:japan_language/components/pha.dart';
import 'package:japan_language/models/ph.dart';
import '../models/ph.dart';
class phrases extends StatelessWidget {

  List<Phrase> phrase = [
    Phrase(
        jpName: 'Anata wa kite imasu', enName: 'are_you_coming',sound: 'are_you_coming.wav' ),
    Phrase(
        jpName: 'Kōdoku o wasurenaide kudasai', enName: 'dont_forget_to_subscribe',sound: 'dont_forget_to_subscribe.wav' ),
    Phrase(
        jpName: 'Go kibun wa ikagadesu ka', enName: 'how_are_you_feeling',sound: 'how_are_you_feeling.wav' ),
    Phrase(
        jpName: 'Watashi wa anime ga daisukidesu', enName: 'i_love_anime',sound: 'i_love_anime.wav' ),
    Phrase(
        jpName: 'Puroguramingu ga daisuki', enName: 'i_love_programming',sound: 'i_love_programming.wav' ),
    Phrase(
        jpName: 'Puroguramingu wa kantandesu', enName: 'programming_is_easy',sound: 'programming_is_easy.wav' ),
    Phrase(
        jpName: 'Namae wa nandesu ka', enName: 'what_is_your_name',sound: 'what_is_your_name.wav' ),
    Phrase(
        jpName: 'Doko ni iku no', enName: 'where_are_you_going',sound: 'where_are_you_going.wav' ),
    Phrase(
        jpName: 'Hai, kimasu', enName: 'yes_im_coming',sound: 'yes_im_coming.wav' ),

  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff46322B),
        title: Text(
          "phrases",
          style: TextStyle(
            fontSize: 24,
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [

            ...getList(phrase),


          ],
        ),
      ),


    );
  }
  List<Widget> getList (List<Phrase> phrase){
    List<ph> itemsList=[];
    for(int i = 0 ; i<phrase.length;i++){
      itemsList.add(ph(phrase: phrase[i]));
    }

    return itemsList;
  }
}



