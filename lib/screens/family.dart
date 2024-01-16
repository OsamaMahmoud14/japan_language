import 'package:flutter/material.dart';
import 'package:japan_language/screens/colors.dart';
import '../models/fam.dart';
import '../components/fa.dart';

class family1 extends StatelessWidget {

  List<family> fa = [
    family(image:'assets/family_members/family_father.png' , enName: 'father', sound:'father.wav' , jpName: 'Chichioya'),

    family(image:'assets/family_members/family_mother.png' , enName: 'mother', sound:'mother.wav' , jpName: 'Hahaoya'),
    family(image:'assets/family_members/family_older_brother.png' , enName: 'older bother', sound:'older bother.wav' , jpName: 'Ani'),
    family(image:'assets/family_members/family_older_sister.png' , enName: 'older sister', sound:'older sister.wav' , jpName: 'Ane'),
    family(image:'assets/family_members/family_grandfather.png' , enName: 'grand father', sound:'grand father.wav' , jpName: 'Ojīsan'),
    family(image:'assets/family_members/family_grandmother.png' , enName: 'grand mother', sound:'grand mother.wav' , jpName: 'O bāchan'),
    family(image:'assets/family_members/family_son.png' , enName: 'son', sound:'son.wav' , jpName: 'Musuko'),
    family(image:'assets/family_members/family_daughter.png' , enName: 'daughter', sound:'daughter.wav' , jpName: 'Musume'),
    family(image:'assets/family_members/family_younger_brother.png' , enName: 'younger brohter', sound:'younger brohter.wav' , jpName: 'Otōto'),
    family(image:'assets/family_members/family_younger_sister.png' , enName: 'younger sister', sound:'younger sister.wav' , jpName: 'Imōto'),



  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff46322B),
        title: Text(
          "family members",
          style: TextStyle(
            fontSize: 24,
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(

          children: [

            ...getList(fa),


          ],
        ),
      ),


    );
  }
  List<Widget> getList (List<family> fa){
    List<fam> itemsList=[];
    for(int i = 0 ; i<fa.length;i++){
      itemsList.add(fam(fa: fa[i]));
    }

    return itemsList;
  }
}



