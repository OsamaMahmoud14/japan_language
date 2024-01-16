import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:japan_language/models/ph.dart';
import '../screens/phrases.dart';

class ph extends StatelessWidget {
  final Phrase phrase;

  const ph({super.key, required this.phrase});
//Phrase = Number
//phrase=number

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      height: 100,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment:CrossAxisAlignment.start ,
              children: [
                Text(
                  phrase.jpName!,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                Text(
                  phrase.enName!,
                  style: TextStyle(
                    fontSize: 18,
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
                  final PlayerAudio= AudioCache(prefix: 'assets/sound/phrases/');
                  PlayerAudio.play(phrase.sound!);

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
