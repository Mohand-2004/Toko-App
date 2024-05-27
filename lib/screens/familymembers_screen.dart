import 'package:flutter/material.dart';
import '/components/my_widgets.dart';
class FamilymembersScreen extends StatelessWidget{
  const FamilymembersScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      appbar:  AppBar(
        backgroundColor: const Color.fromARGB(255, 41, 164, 168),
        toolbarHeight: 72,
        title:Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Spacer(flex: 1),
            const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Toko",
                  style: TextStyle(
                    fontFamily: 'Script_MT_bold',
                    fontSize: 36,
                    fontWeight: FontWeight.bold
                  ),
                ),
                Text(
                  "let's learn family members",
                  style: TextStyle(
                    fontFamily: 'Comic_Sans',
                    fontSize: 18,
                    color: Color.fromARGB(255, 79, 79, 79)
                  ),
                )
              ],
            ),
            const Spacer(flex: 4),
            SizedBox(
              height: 65,
              width: 80,
              child: Image.asset('assets/images/appbar_icon412.png'),
            ),
            const Spacer(flex: 1)
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 12),
        child: ListView(
          children: [
            MyDataContainer(image: const AssetImage('assets/images/family_father.png'), japanese_text:'Chichioya', english_text: 'father',sound_path: 'sounds/family_members/father.wav'),
            MyDataContainer(image: const AssetImage('assets/images/family_mother.png'), japanese_text:'Hahaoya', english_text: 'mother',sound_path: 'sounds/family_members/mother.wav'),
            MyDataContainer(image: const AssetImage('assets/images/family_grandfather.png'), japanese_text:'Ojisan', english_text: 'grandfather',sound_path: 'sounds/family_members/grand_father.wav'),
            MyDataContainer(image: const AssetImage('assets/images/family_grandmother.png'), japanese_text:'Sobo', english_text: 'grandmother',sound_path: 'sounds/family_members/grand_mother.wav'),
            MyDataContainer(image: const AssetImage('assets/images/family_older_brother.png'), japanese_text:'Nisan', english_text: 'older_brother',sound_path: 'sounds/family_members/older_brother.wav'),
            MyDataContainer(image: const AssetImage('assets/images/family_older_sister.png'), japanese_text:'Ane', english_text: 'older_sister',sound_path: 'sounds/family_members/older_sister.wav'),
            MyDataContainer(image: const AssetImage('assets/images/family_younger_brother.png'), japanese_text:'Otōto', english_text: 'younger_brother',sound_path: 'sounds/family_members/younger_brother.wav'),
            MyDataContainer(image: const AssetImage('assets/images/family_younger_sister.png'), japanese_text:'Imōto', english_text: 'younger_sister',sound_path: 'sounds/family_members/younger_sister.wav'),
            MyDataContainer(image: const AssetImage('assets/images/family_son.png'), japanese_text:'Musuko', english_text: 'son',sound_path: 'sounds/family_members/son.wav'),
            MyDataContainer(image: const AssetImage('assets/images/family_daughter.png'), japanese_text:'Musume', english_text: 'daughter',sound_path: 'sounds/family_members/daughter.wav')
          ]
        )
      )
    );
  }
}