import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../../../core/resources/colors_manager.dart';
import '../../../../core/resources/icon_brooken.dart';
import '../../../../core/resources/routes.dart';
import '../../../../core/resources/strings_manager.dart';
import '../../../../core/resources/values_manager.dart';

Widget buildChatComposer(BuildContext context) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: AppPadding.p20),
    color: ColorManager.sWhite,
    height: 100,
    child: Row(
      children: [
        Expanded(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: AppPadding.p14),
            height: 60,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(30),
            ),
            child: Row(
              children: [
                Icon(
                  Icons.language,
                  color: Colors.grey[500],
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: AppStrings.typeSome,
                      hintStyle: TextStyle(color: Colors.grey[500]),
                    ),
                  ),
                ),
                Icon(
                  Icons.keyboard_voice_outlined,
                  color: Colors.grey[500],
                )
              ],
            ),
          ),
        ),
        const SizedBox(
          width: 16,
        ),
        CircleAvatar(
          backgroundColor:ColorManager.sWhite,
          child: GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, Routes.layoutPage);

              },
              child: Icon(IconBroken.Send ,color:  HexColor("#16919B"), ))

          ),
      ],
    ),
  );
}