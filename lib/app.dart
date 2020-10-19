import 'package:flutter/material.dart';
import 'package:bloc_avatar_app/avatarFirstPart/screens/homeScreen/bloc/avatar_bloc.dart';
import 'package:bloc_avatar_app/avatarFirstPart/screens/homeScreen/home_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Avatar Bloc',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Material(
          child: BlocProvider(
        create: (context) => AvatarBloc(),
        child: HomeScreen(),
      )),
    );
  }
}
