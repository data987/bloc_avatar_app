import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AvatarTile extends StatelessWidget {
  const AvatarTile(
      {Key key,
      @required this.image,
      @required this.name,
      @required this.info,
      @required this.onTap})
      : super(key: key);

  final String image;
  final String name;
  final String info;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 25.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha(50),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 2), // changes position of shadow
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          _basicInfo(),
          Expanded(
              child: InkWell(
            onTap: onTap,
            child: Container(
              height: 40,
              width: 60,
              decoration: BoxDecoration(
                  color: Color(0xFF56C5FF),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10))),
              child: Icon(Icons.arrow_forward, color: Colors.white),
            ),
          ))
        ],
      ),
    );
  }

  Widget _basicInfo() {
    return Padding(
      padding: EdgeInsets.only(left: 20.0, top: 20.0, bottom: 20.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Container(
                height: 80,
                width: 80,
                child: Image.asset(
                  image,
                  fit: BoxFit.cover,
                ),
              )),
          Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Container(
              width: 110,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name, style: TextStyle(fontWeight: FontWeight.bold)),
                  SizedBox(height: 10.0),
                  Text(info, style: TextStyle(fontSize: 12))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
