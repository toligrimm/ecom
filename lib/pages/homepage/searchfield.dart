import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../helpers/constants.dart';
import 'icon_buttons.dart';



class SearchField extends StatelessWidget {
  const SearchField({
    Key? key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          Container(
            width: 280,
            height: 50,
            decoration: BoxDecoration(
              color: kSecondaryColor.withOpacity(0.1),
              borderRadius: BorderRadius.circular(12),
            ),
            child: TextField(
              onChanged: (value) {

              },
              decoration: const InputDecoration(
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                hintText: 'Искать',
                prefixIcon: Icon(Icons.search),
                contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          InkWell(
            onTap: () {},
            borderRadius: BorderRadius.circular(50),
            child: Stack(
              clipBehavior: Clip.none,
              children: [Container(
                height: 45,
                width: 45,
                decoration: BoxDecoration(
                  color: kSecondaryColor.withOpacity(0.1),
                  shape: BoxShape.circle,
                ),
                child: const Icon(CupertinoIcons.cart, color: Colors.grey,),),
              ],),),
          const SizedBox(
            width: 10,
          ),
          IconBtnWCounter(
            numOfItems: 3,
            press: () {},
            icon: '',),
        ],
    ),
    );
  }
}