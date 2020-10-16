import 'package:bloc_avatar_app/avatarFirstPart/widgets/widgets.dart';
import 'package:flutter/material.dart';

import 'widgets/character_list.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Layout(child: CharacterList());
  }
}
