import 'package:flutter/material.dart';
import '/components/my_widgets.dart';
class PhrasesScreen extends StatelessWidget{
  const PhrasesScreen({super.key});
  @override
  Widget build(BuildContext context){
    return MyScaffold(
      appbar: AppBar(
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
                  "let's learn phrases",
                  style: TextStyle(
                    fontFamily: 'Comic_Sans',
                    fontSize: 18,
                    color: Color.fromARGB(255, 79, 79, 79)
                  ),
                )
              ],
            ),
            const Spacer(flex: 18),
            SizedBox(
              height: 65,
              width: 80,
              child: Image.asset('assets/images/ph.png'),
            ),
            const Spacer(flex: 1)
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 12),
        child: ListView(
          children:[
            MyPhraseContainer(image: const AssetImage('assets/images/whats_your_name.png'), japanese_text: 'Anata no namae wa nandesuka', english_text: "what's your name",sound_path: 'sounds/phrases/what_is_your_name.wav'),
            MyPhraseContainer(image: const AssetImage('assets/images/how_are_you_feeling.png'), japanese_text: 'Go kibun wa ikagadesu ka', english_text: "how are you feeling",sound_path: 'sounds/phrases/how_are_you_feeling.wav'),
            MyPhraseContainer(image: const AssetImage('assets/images/are_you_coming.png'), japanese_text: 'Kimasu ka', english_text: "are you coming",sound_path: 'sounds/phrases/are_you_coming.wav'),
            MyPhraseContainer(image: const AssetImage('assets/images/yes_Im_coming.png'), japanese_text: 'Hai, kimasu', english_text: "yes I'm coming",sound_path: 'sounds/phrases/yes_im_coming.wav'),
            MyPhraseContainer(image: const AssetImage('assets/images/where_are_you_going.png'), japanese_text: 'Doko ni iku no', english_text: "where are you going",sound_path: 'sounds/phrases/where_are_you_going.wav'),
            MyPhraseContainer(image: const AssetImage('assets/images/i_love_programming.png'), japanese_text: 'Watashi wa puroguramingu ga daisukidesu', english_text: "I love programming",sound_path: 'sounds/phrases/i_love_programming.wav'),
            MyPhraseContainer(image: const AssetImage('assets/images/programming_is_easy.png'), japanese_text: 'Puroguramingu wa kantandesu', english_text: "programming is easy",sound_path: 'sounds/phrases/programming_is_easy.wav'),
          ]
        )
      )
    );
  }
}