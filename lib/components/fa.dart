import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:japan_language/models/fam.dart';
import '../screens/family.dart';
class fam extends StatelessWidget {
  final family ? fa;

   fam({super.key,  this.fa});




  @override
  Widget build(BuildContext context) {
    return
      Container(
        color: Color(0xff558B37),
        height: 100,
        child: Row(
          children: [
            Container(color: Color(0xffFFF6DC), child: Image.asset(fa!.image)),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment:CrossAxisAlignment.start ,

                children: [
                  Text(
                    fa!.jpName,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),

                  Text
                    (
                    fa!.enName,
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
                    final Player= AudioCache(prefix: 'assets/sound/family_members/');
                    Player.play(fa!.sound);

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
