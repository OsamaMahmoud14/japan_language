import 'package:flutter/material.dart';
import '../models/number.dart';
import '../components/item.dart';
class numbers_page extends StatelessWidget {
  Number one = Number(
      image: 'assets/numbers/number_one.png',
      jpName: 'ichi',
      enName: 'one',
      sound:'number_one_sound.mp3'
  );
  List<Number> numbers = [
    Number(
      image: 'assets/numbers/number_one.png', jpName: 'ichi', enName: 'one',sound: 'number_one_sound.mp3' ),
    Number(
      image: 'assets/numbers/number_two.png', jpName: 'ni', enName: 'two',sound: 'number_two_sound.mp3'),
    Number(image: 'assets/numbers/number_three.png',
      jpName: 'san',
      enName: 'three',
        sound: 'number_three_sound.mp3'

    ),
    Number(
      image: 'assets/numbers/number_four.png', jpName: 'yon', enName: 'four',sound: 'number_four_sound.mp3'),
    Number(
      image: 'assets/numbers/number_five.png', jpName: 'go', enName: 'five',sound: 'number_five_sound.mp3'),
    Number(
      image: 'assets/numbers/number_six.png', jpName: 'roku', enName: 'six',sound: 'number_six_sound.mp3'),
    Number(image: 'assets/numbers/number_seven.png',
      jpName: 'nana',
      enName: 'seven',
        sound: 'number_seven_sound.mp3'),
    Number(image: 'assets/numbers/number_eight.png',
      jpName: 'hachi',
      enName: 'eight',
        sound: 'number_eight_sound.mp3'),
    Number(
      image: 'assets/numbers/number_nine.png', jpName: 'kyu', enName: 'nine',sound: 'number_nine_sound.mp3'),
    Number(
      image: 'assets/numbers/number_ten.png', jpName: 'ju', enName: 'ten',sound: 'number_ten_sound.mp3'),



  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff46322B),
        title: Text(
          "Numbers",
          style: TextStyle(
            fontSize: 24,
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [

         ...getList(numbers),


          ],
        ),
      ),


    );
  }
  List<Widget> getList (List<Number> numbers){
    List<item> itemsList=[];
    for(int i = 0 ; i<numbers.length;i++){
    itemsList.add(item(number: numbers[i]));
    }

    return itemsList;
  }
}



