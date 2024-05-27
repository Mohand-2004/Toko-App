import 'package:flutter/material.dart';
import '/components/my_widgets.dart';
class ColorsScreen extends StatelessWidget{
  const ColorsScreen({super.key});
  @override
  Widget build(BuildContext context) {
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
                  "let's learn colors",
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
              child: Image.asset('assets/images/455555.png'),
            ),
            const Spacer(flex: 1)
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 12),
        child: ListView(
          children:[
            MyDataContainer(image: const AssetImage('assets/images/color_white.png'), japanese_text: 'Shiroi', english_text: 'white',sound_path: 'sounds/colors/white.wav'),
            MyDataContainer(image: const AssetImage('assets/images/color_black.png'), japanese_text: 'Burakku', english_text: 'black',sound_path: 'sounds/colors/black.wav'),
            MyDataContainer(image: const AssetImage('assets/images/color_red.png'), japanese_text: 'Aka', english_text: 'red',sound_path: 'sounds/colors/red.wav'),
            MyDataContainer(image: const AssetImage('assets/images/color_yellow.png'), japanese_text: 'Kiiro', english_text: 'yellow',sound_path: 'sounds/colors/yellow.wav'),
            MyDataContainer(image: const AssetImage('assets/images/color_green.png'), japanese_text: 'Midori', english_text: 'green',sound_path: 'sounds/colors/green.wav'),
            MyDataContainer(image: const AssetImage('assets/images/color_blue.png'), japanese_text: 'Ao', english_text: 'blue',sound_path: 'sounds/colors/blue.wav'),
          ]
        )
      )
    );
  }
}