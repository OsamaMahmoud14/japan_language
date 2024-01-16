import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:japan_language/models/number.dart';

class item extends StatelessWidget {
  final Number number;

  const item({super.key, required this.number});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffEF9235),
      height: 100,
      child: Row(
        children: [
          Container(color: Color(0xffFFF6DC), child: Image.asset(number.image!)),
          Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  number.jpName!,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                Text(
                  number.enName!,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Spacer(
            flex: 1,
          ),
          IconButton(

            onPressed: ()
            {

              try{
                final PlayerAudio= AudioCache(prefix: 'assets/sound/numbers/');
                PlayerAudio.play(number.sound!);

              }
              catch(ex){
                print(ex);
              }
            },
              icon: Icon(
            Icons.play_arrow,
            color: Colors.white,
            size: 28,




          )

          ),
        ],
      ),
    );
  }
}
