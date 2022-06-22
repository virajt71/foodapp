import 'package:flutter/material.dart';
import 'package:foodapp/Home/food_page_body.dart';
import 'package:foodapp/utils/colors.dart';
import 'package:foodapp/utils/dimensions.dart';
import 'package:foodapp/widget/big_text.dart';
import 'package:foodapp/widget/small_text.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({Key? key}) : super(key: key);

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    //print("height  " + MediaQuery.of(context).size.width.toString());
    return Scaffold(
      body: Column(
        children: [
          //showing the header of the page
          Container(
            child: Container(
              margin: EdgeInsets.only(top: Dimensions.heigth45, bottom: Dimensions.height15),
              padding: EdgeInsets.only(left: Dimensions.width20, right: Dimensions.width20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      BigText(text: "India", color: AppColors.mainColor),
                      Row(
                        children: [
                          SmallText(text: "Food", color: Colors.black54),
                          Icon(Icons.arrow_drop_down_rounded),
                        ],
                      )
                    ],
                  ),
                  Center(
                      child: Container(
                    width: Dimensions.heigth45,
                    height: Dimensions.heigth45,
                    child: Icon(Icons.search, color: Colors.white, size: Dimensions.iconSize24,),
                    decoration: BoxDecoration(
                      color: AppColors.mainColor,
                      borderRadius: BorderRadius.circular(Dimensions.radius15),
                    ),
                  ))
                ],
              ),
            ),
          ),
          //showing the body of the page
          Expanded(child: SingleChildScrollView(
            child: FoodPageBody(),
          )),
        ],
      ),
    );
  }
}
