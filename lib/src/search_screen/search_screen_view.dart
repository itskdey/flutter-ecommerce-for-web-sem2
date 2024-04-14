import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_ecommerce/src/constrains/colors.dart';
import 'package:mobile_ecommerce/src/constrains/fonts.dart';

part 'search_screen_binding.dart';
part 'search_screen_controller.dart';

class SearchScreenView extends GetView<SearchScreenViewController> {
  final String input;
  const SearchScreenView({key, this.input = "What can we do for you?"})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff48473f),
      appBar: AppBar(
        backgroundColor: const Color(0xff48473f),
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(
            Icons.arrow_back,
            color: AppColors.TextPrimary.value,
          ),
        ),
        title: Text(
          "SEARCH",
          style: TextStyle(
            fontFamily: AppFonts.Rosela.value,
            color: AppColors.TextPrimary.value,
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          const Icon(Icons.search),
                          const SizedBox(width: 10),
                          Expanded(
                            child: SizedBox(
                              height: 60,
                              child: CupertinoSearchTextField(
                                autofocus: true,
                                padding: EdgeInsets.zero,
                                prefixIcon: const Icon(
                                  CupertinoIcons.nosign,
                                  color: Colors.white,
                                ),
                                borderRadius: BorderRadius.circular(5),
                                backgroundColor: Colors.white,
                                placeholder: input,

                                style: TextStyle(
                                    fontFamily: AppFonts.Dosis.value,
                                    fontSize: 15,
                                    color: AppColors.Primary.value,
                                    fontWeight: FontWeight.w500),
                                // controller: controller,
                                onChanged: (value) {},
                                onSubmitted: (value) {},
                                autocorrect: true,
                                onTap: () {},
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          const Icon(Icons.tune),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Popular Searches',
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                fontFamily: AppFonts.Rosela.value,
                                color: AppColors.TextPrimary.value),
                          ),
                          Text(
                            'View All',
                            style: TextStyle(
                              color: AppColors.TextPrimary.value,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      height: 200,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: const EdgeInsets.only(right: 10),
                            width: 150,
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          );
                        },
                      ),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Recent Searches',
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                fontFamily: AppFonts.Rosela.value,
                                color: AppColors.TextPrimary.value),
                          ),
                          Text(
                            'Clear All',
                            style: TextStyle(
                              color: AppColors.TextPrimary.value,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
