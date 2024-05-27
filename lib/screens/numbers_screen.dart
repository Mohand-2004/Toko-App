import 'package:flutter/material.dart';
import '/components/my_widgets.dart';
class NumbersScreen extends StatelessWidget{
  const NumbersScreen({super.key});
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
                  "let's learn numbers",
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
              child: Image.asset('assets/images/235742342004.png'),
            ),
            const Spacer(flex: 1)
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 12),
        child: ListView(
        children: [
        MyDataContainer(image: const AssetImage('assets/images/apple-cartoon-illustration-style-apple-for-design-resources-free-vector.png'), japanese_text: 'ichi',english_text: 'One',sound_path: 'sounds/numbers/number_one_sound.mp3'),
        MyDataContainer(image: const AssetImage('assets/images/485885.png'), japanese_text: 'Ni', english_text: 'Two',sound_path: 'sounds/numbers/number_two_sound.mp3'),
        MyDataContainer(image: const AssetImage('assets/images/4858854775.png'), japanese_text: 'san', english_text: 'Three',sound_path: 'sounds/numbers/number_three_sound.mp3',),
        MyDataContainer(image: const AssetImage('assets/images/478520.png'), japanese_text: 'Shi', english_text: 'Four',sound_path: 'sounds/numbers/number_four_sound.mp3'),
        MyDataContainer(image: const AssetImage('assets/images/845264.png'), japanese_text: 'Go', english_text: 'Five',sound_path: 'sounds/numbers/number_five_sound.mp3'),
        MyDataContainer(image: const AssetImage('assets/images/9846513.png'), japanese_text: 'Roku', english_text: 'six',sound_path: 'sounds/numbers/number_six_sound.mp3'),
        MyDataContainer(image: const AssetImage('assets/images/78.png'), japanese_text: 'Sebun', english_text: 'seven',sound_path: 'sounds/numbers/number_seven_sound.mp3'),
        MyDataContainer(image: const AssetImage('assets/images/558952.png'), japanese_text: 'Hachi', english_text: 'eight',sound_path: 'sounds/numbers/number_eight_sound.mp3'),
        MyDataContainer(image: const AssetImage('assets/images/95.png'), japanese_text: 'Kyū', english_text: 'nine',sound_path: 'sounds/numbers/number_nine_sound.mp3'),
        MyDataContainer(image: const AssetImage('assets/images/101.png'), japanese_text: 'Jū', english_text: 'Ten',sound_path: 'sounds/numbers/number_ten_sound.mp3'),
        ],
      )
      )
    );
  }
}