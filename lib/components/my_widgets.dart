// ignore_for_file: non_constant_identifier_names
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
// ignore: must_be_immutable
class MyDataContainer extends StatelessWidget{
  ImageProvider image;
  String japanese_text;
  String english_text;
  String sound_path;
  MyDataContainer({required this.image,required this.japanese_text,required this.english_text,required this.sound_path,super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
          Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children:[
          const Spacer(flex: 1),
          Container(
            padding: const EdgeInsets.all(5),
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 41, 164, 168),
              borderRadius: BorderRadius.circular(22)
            ),
            child: FittedBox(
              fit: BoxFit.fill,
              child: ClipRRect(
              borderRadius: BorderRadius.circular(350),
              child: Image(
                image: image,
            )
            )
            )
          ),
          const Spacer(flex: 1),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: 80,
                height: 45,
                child: FittedBox(
                  fit: BoxFit.contain,
                  child: Text(
                    japanese_text,
                  ),
                ),
              ),
              SizedBox(
                width: 80,
                height: 25,
                child: FittedBox(
                  fit: BoxFit.contain,
                  child: Text(
                    english_text,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 79, 79, 79)
                    ),
                  ),
                ),
              )
            ],
          ),
          const Spacer(flex: 10),
          CircleAvatar(
            radius: 25,
            backgroundColor: const Color.fromARGB(255, 79, 79, 79),
            child: CircleAvatar(
              backgroundImage: const AssetImage('assets/images/play_icon_134504.png'),
              child: IconButton(
                onPressed:(){
                  AudioPlayer player = AudioPlayer();
                  player.play(AssetSource(sound_path));
                },
                icon: const Icon(
                  Icons.play_arrow_rounded,
                  color: Color.fromARGB(255, 41, 164, 168),
                )
              ),
            )
          ),
          const Spacer(flex: 2)
        ]
      ),
        const Divider(
          color: Color.fromARGB(255, 79, 79, 79),
          thickness: 2,
          indent: 80,
          endIndent: 60,
          height: 25,
        ),
      ],
    );
  }
}
// ignore: must_be_immutable
class MyScaffold extends StatelessWidget{
  Widget? body;
  AppBar? appbar;
  MyScaffold({this.body,this.appbar,super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: appbar,
      body: Container(
          decoration: const BoxDecoration(
            color: Color(0xffffffff),
            image: DecorationImage(
              image: AssetImage('assets/images/container_background.png')
            )
          ),
          child: body,
      )
    );
  }
}
// ignore: must_be_immutable
class MyContainer extends StatelessWidget{
  late ImageProvider image;
  late String text;
  Function()? onClicked;
  MyContainer({required this.text,required this.image,this.onClicked,super.key});
  @override
  Widget build(BuildContext context){
    return GestureDetector(
      onTap: onClicked,
      child:Container(
            margin: const EdgeInsets.symmetric(horizontal: 12),
            width: double.infinity,
            height: 100,
            decoration: const BoxDecoration(
              color: Color.fromARGB(132, 41, 164, 168),
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(18),bottomRight: Radius.circular(60),topLeft: Radius.circular(18),topRight: Radius.circular(18)),
            ),
            child: Container(
            margin: const EdgeInsets.all(5),
            width: double.infinity,
            height: 100,
            decoration: const BoxDecoration(
              color: Color.fromARGB(73, 199, 48, 43),
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(18),bottomRight: Radius.circular(60),topLeft: Radius.circular(18),topRight: Radius.circular(18)),
            ),
            child: Container(
            margin: const EdgeInsets.all(3),
            width: double.infinity,
            height: 100,
            decoration: const BoxDecoration(
              color: Color.fromARGB(96, 79, 79, 79),
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(18),bottomRight: Radius.circular(60),topLeft: Radius.circular(18),topRight: Radius.circular(18)),
            ),
            child:Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Spacer(flex: 2),
                SizedBox(
                  height: 45,
                  width: 180,
                  child:Center(
                    child: FittedBox(
                      fit: BoxFit.contain,
                      child: Text(
                              text,
                              style: const TextStyle(
                                fontSize: 50,
                                fontWeight: FontWeight.bold,
                              )
                            ),
                    )
                  )
                ),
                const Spacer(flex: 5),
                Image(
                  image: image,
                  width: 70,
                  height: 70,
                ),
                const Spacer(flex: 3)
              ],
            )
        ),
      ),
    )
    );
  }
}
// ignore: must_be_immutable
class MyPhraseContainer extends StatelessWidget{
  ImageProvider image;
  String japanese_text;
  String english_text;
  String sound_path;
  MyPhraseContainer({required this.image,required this.japanese_text,required this.english_text,required this.sound_path,super.key});
  @override
  Widget build(BuildContext context){
    return Column(
      children: [
          Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children:[
          const Spacer(flex: 1),
          Container(
            padding: const EdgeInsets.all(5),
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 41, 164, 168),
              borderRadius: BorderRadius.circular(22)
            ),
            child: FittedBox(
              fit: BoxFit.fill,
              child: ClipRRect(
              borderRadius: BorderRadius.circular(350),
              child: Image(
                image: image,
            )
            )
            )
          ),
          const Spacer(flex: 1),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: 200,
                height: 40,
                child: FittedBox(
                  fit: BoxFit.contain,
                  child: Text(
                    japanese_text,
                  ),
                ),
              ),
              SizedBox(
                width: 180,
                height: 25,
                child: FittedBox(
                  fit: BoxFit.contain,
                  child: Text(
                    english_text,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 79, 79, 79)
                    ),
                  ),
                ),
              )
            ],
          ),
          const Spacer(flex: 10),
          CircleAvatar(
            radius: 25,
            backgroundColor: const Color.fromARGB(255, 79, 79, 79),
            child: CircleAvatar(
              backgroundImage: const AssetImage('assets/images/play_icon_134504.png'),
              child: IconButton(
                onPressed:(){
                  AudioPlayer player = AudioPlayer();
                  player.play(AssetSource(sound_path));
                },
                icon: const Icon(
                  Icons.play_arrow_rounded,
                  color: Color.fromARGB(255, 41, 164, 168),
                )
              ),
            )
          ),
          const Spacer(flex: 2)
        ]
      ),
        const Divider(
          color: Color.fromARGB(255, 79, 79, 79),
          thickness: 2,
          indent: 80,
          endIndent: 60,
          height: 25,
        ),
      ],
    );
  }
}