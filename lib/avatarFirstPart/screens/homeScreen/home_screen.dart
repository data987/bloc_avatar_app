import 'package:flutter/material.dart';
import 'package:bloc_avatar_app/avatarFirstPart/widgets/widgets.dart';
import 'widgets/character_list.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc/avatar_bloc.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<AvatarBloc>(context)
        .add(AvatarLoadCharacters(request: true));
  }

  @override
  Widget build(BuildContext context) {
    return Layout(child: BlocBuilder<AvatarBloc, AvatarState>(
      builder: (context, state) {
        if (state is AvatarLoaded) return CharacterList();
        if (state is AvatarFailure)
          return Center(child: Text("There's nothing here"));
        return Center(
          child: CircularProgressIndicator(),
        );
      },
    ));
  }
}
