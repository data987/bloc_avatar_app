import 'package:bloc_avatar_app/avatarFirstPart/widgets/widgets.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Layout(
      child: ListView(
        children: [
          AvatarTile(
              image: 'assets/images/appa_flying.png',
              name: 'Appa',
              info: 'Air Acolytes Air Temple Island',
              onTap: () => print('Hi dani')),
          AvatarTile(
              image: 'assets/images/zuko.png',
              name: 'Zuko',
              info: 'Fire Nation Fire Nation Royal Family',
              onTap: () => print('Hi dani'))
        ],
      ),
    );
  }
}
