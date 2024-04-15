import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';

import 'package:get/get.dart';
import 'package:mobile_ecommerce/src/constrains/fonts.dart';
import 'package:mobile_ecommerce/src/search_screen/search_screen_view.dart';

Widget AppSearchBarWidget(BuildContext context) {
  // bool isClicked = true;
  return Row(
    children: [
      Expanded(
        child: Container(
          height: 60,
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: CupertinoSearchTextField(
            borderRadius: BorderRadius.circular(5),
            backgroundColor: Color(0xff4F4A45),
            itemColor: Colors.grey,
            placeholder: "What can we do for you?",
            placeholderStyle: TextStyle(
              fontFamily: AppFonts.Rosela.value,
              color: Colors.grey,
              fontSize: 16,
            ),
            style: TextStyle(
              fontFamily: AppFonts.Rosela.value,
              fontSize: 16,
              color: Colors.grey,
            ),
            // controller: controller,
            onChanged: (value) {
              if (value.isNotEmpty) {
                Get.to(
                  () => SearchScreenView(
                    input: value,
                  ),
                  transition: Transition.upToDown,
                  duration: Duration(milliseconds: 500),
                  curve: Curves.elasticOut,
                );
              }
            },

            onTap: () {
              Get.to(
                () => SearchScreenView(),
                transition: Transition.upToDown,
                duration: Duration(milliseconds: 500),
                curve: Curves.elasticOut,
              );
            },
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(left: 10),
        child: Bounceable(
          onTap: () => {},
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xff4F4A45),
              borderRadius: BorderRadius.circular(5),
            ),
            width: 50,
            height: 50,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Image.asset(
                'assets/icons/filter.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    ],
  );
}
