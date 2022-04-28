import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../helpers/constants.dart';

class IconBtnWCounter extends StatelessWidget {
  const IconBtnWCounter({
    Key? key,
    required this.icon,
    this.numOfItems = 0,
    required this.press,
  }) : super(key: key);

  final String icon;
  final int numOfItems;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      borderRadius: BorderRadius.circular(50),
      child: Stack(
          clipBehavior: Clip.none, children: [
        Container(
          height: 45,
          width: 45,
          decoration: BoxDecoration(
            color: kSecondaryColor.withOpacity(0.1),
            shape: BoxShape.circle,
          ),
          child: const Icon(Icons.notifications_none, color: Colors.grey,),
        ),
        Positioned(
          right: 0,
          top: -1,
          child: Container(
            height: 20,
            width: 20,
            decoration: const BoxDecoration(
              color: CupertinoColors.destructiveRed,
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Text('$numOfItems', textAlign: TextAlign.center, style: const TextStyle(color: Colors.white, fontSize: 12),),
            ),
          ),
        )
      ]
      ),
    );
  }
}
