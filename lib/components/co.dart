import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:japan_language/models/number.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:japan_language/models/col.dart';

class co extends StatelessWidget {

  final Colora x;

   co({super.key, required this.x});


  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffEF9235),
      height: 100,
      child: Row(
        children: [
          Container(color: Color(0xffFFF6DC), child: Image.asset(x.image!)),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  x.jpName!,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                Text(
                  x.enName!,
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
                  final PlayerAudio= AudioCache(prefix: 'assets/sound/colors/');
                  PlayerAudio.play(x.sound!);

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





