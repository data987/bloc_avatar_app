import 'package:bloc_avatar_app/avatarFirstPart/widgets/widgets.dart';
import 'package:bloc_avatar_app/utils/size_config.dart';
import 'package:flutter/material.dart';

class CharacterList extends StatelessWidget {
  const CharacterList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return ListView(
      children: [
        Container(
          width: SizeConfig.safeBlockHorizontal * 100,
          padding: EdgeInsets.only(top: 45.0),
          child: Column(
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
        )
      ],
    );
  }
}
