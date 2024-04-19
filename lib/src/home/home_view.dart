import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_ecommerce/src/search_screen/search_screen_view.dart';

part 'home_binding.dart';
part 'home_controller.dart';

class HomeView extends GetView<HomeViewController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //header
                const Text(
                  'Choose your',
                  style: TextStyle(fontSize: 25),
                ),
                const Text(
                  'favourite catalog',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                //search bar
                GestureDetector(
                  onTap: () {
                    Get.toNamed('/searchScreen');
                  },
                  child: Container(
                    margin: const EdgeInsets.only(top: 20),
                    height: 50,
                    decoration: BoxDecoration(
                      color: ThemeData.light().focusColor,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.search,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            "What can we do for you?",
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                //catalog list
                Container(
                  margin: const EdgeInsets.only(top: 30),
                  height: 40,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.only(right: 10),
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        decoration: BoxDecoration(
                          color: ThemeData.light().focusColor,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Center(
                          child: Text(
                            "Catalog $index",
                            style: TextStyle(fontSize: 13),
                          ),
                        ),
                      );
                    },
                  ),
                ),

                //product list
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 30),
                      width: MediaQuery.of(context).size.width * 0.5 - 30,
                      height: 250,
                      decoration: BoxDecoration(
                        color: ThemeData.light().focusColor,
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    Spacer(),
                    Container(
                      margin: EdgeInsets.only(top: 30),
                      width: MediaQuery.of(context).size.width * 0.5 - 30,
                      height: 250,
                      decoration: BoxDecoration(
                        color: ThemeData.light().focusColor,
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 30),
                      width: MediaQuery.of(context).size.width * 0.5 - 30,
                      height: 250,
                      decoration: BoxDecoration(
                        color: ThemeData.light().focusColor,
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    Spacer(),
                    Container(
                      margin: EdgeInsets.only(top: 30),
                      width: MediaQuery.of(context).size.width * 0.5 - 30,
                      height: 250,
                      decoration: BoxDecoration(
                        color: ThemeData.light().focusColor,
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 30),
                  width: MediaQuery.of(context).size.width,
                  height: 150,
                  decoration: BoxDecoration(
                    color: ThemeData.light().focusColor,
                    borderRadius: BorderRadius.circular(30),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

//[]