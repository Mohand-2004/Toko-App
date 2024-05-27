import 'package:flutter/material.dart';
import '/screens/familymembers_screen.dart';
import '/screens/colors_screen.dart';
import '/screens/numbers_screen.dart';
import '/screens/phrases_screen.dart';
import '/components/my_widgets.dart';
class HomePadge extends StatelessWidget{
  const HomePadge({super.key});
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
                  'your first step to learn japanese',
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
              child: Image.asset('assets/images/appbar_icon.png'),
            ),
            const Spacer(flex: 1)
          ],
        ),
      ),
      body:  Container(
          decoration: const BoxDecoration(
            color: Color(0xffffffff),
            image: DecorationImage(
              image: AssetImage('assets/images/container_background.png')
            )
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              MyContainer(
                text: 'Numbers',
                image: const AssetImage('assets/images/23574234.png'),
                onClicked: (){
                  Navigator.push(context,MaterialPageRoute(builder:(BuildContext context){
                    return const NumbersScreen();
                  }));
                }
              ),
              MyContainer(
                text: 'Colors',
                image: const AssetImage('assets/images/2357423.png'),
                onClicked:(){
                  Navigator.push(context,MaterialPageRoute(builder:(context){
                    return const ColorsScreen();
                  },));
                },
              ),
              MyContainer(
                text: 'Phrases',
                image: const AssetImage('assets/images/2776793-200.png'),
                onClicked:(){
                  Navigator.push(context,MaterialPageRoute(builder:(context){
                    return const PhrasesScreen();
                  },));
                },
              ),
              MyContainer(
                text: 'Family Members',
                image: const AssetImage('assets/images/0-984_japan-clipart-family-japanese-japanese-family-clipart.png'),
                onClicked:(){
                  Navigator.push(context,MaterialPageRoute(builder:(context){
                    return const FamilymembersScreen();
                  },));
                }
                )
            ],
        )
      ),
    );
  }
}