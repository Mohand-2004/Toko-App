import 'package:flutter/material.dart';
import 'screens/home_padge.dart';
class App extends StatelessWidget{
  const App({super.key});
  @override
  Widget build(BuildContext context) => const MaterialApp(
    home: HomePadge()
  );
}
main(){
  runApp(const App());
}