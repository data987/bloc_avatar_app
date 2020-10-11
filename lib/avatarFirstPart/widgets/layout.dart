import 'package:bloc_avatar_app/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Layout extends StatelessWidget {
  const Layout({Key key, @required this.child}) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        SvgPicture.asset('assets/images/header_bg.svg'),
        SafeArea(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 40.0),
                child: Image.asset('assets/images/avatar_logo.png'),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.asset('assets/images/avatar_hero.png',
                    fit: BoxFit.cover),
              ),
              Expanded(
                  child: Container(
                      padding: EdgeInsets.only(top: 45.0),
                      width: SizeConfig.safeBlockHorizontal * 78,
                      child: child))
            ],
          ),
        )
      ],
    );
  }
}
