import 'package:flutter/material.dart';
import 'package:foodapp/utils/colors.dart';
import 'package:foodapp/utils/dimensions.dart';
import 'package:foodapp/widget/app_icon.dart';
import 'package:foodapp/widget/big_text.dart';

class RecommendedFoodDetail extends StatelessWidget {
  const RecommendedFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
          toolbarHeight: 70,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppIcon(icon: Icons.clear),
              AppIcon(icon: Icons.shopping_cart_outlined)
            ],
          ),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(Dimensions.height20),
            child: Container(
              child: Center(child: BigText(size: Dimensions.font26, text: "Chinese side")),
              width: double.maxFinite,
              padding: EdgeInsets.only(top: 5, bottom: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft:Radius.circular(Dimensions.radius20),
                  topRight:Radius.circular(Dimensions.radius20)
                )
              ),
            ),
          ),
          pinned: true,
          backgroundColor: AppColors.yellowColor,
          expandedHeight: 300,
          flexibleSpace: FlexibleSpaceBar(
            background: Image.asset("assets/image/food0.png",
                width: double.maxFinite, fit: BoxFit.cover),
          ),
        ),
        SliverToBoxAdapter(
          child: Text(
              "Italy is my favorite country; in fact, I plan to spend two weeks there next year. I'd always thought lightning was something only I could see. Nancy decided to make the porta-potty her home. Nothing seemed out of place except the washing machine in the bar. Italy is my favorite country; in fact, I plan to spend two weeks there next year. I'd always thought lightning was something only I could see. Nancy decided to make the porta-potty her home. Nothing seemed out of place except the washing machine in the bar. Italy is my favorite country; in fact, I plan to spend two weeks there next year. I'd always thought lightning was something only I could see. Nancy decided to make the porta-potty her home. Nothing seemed out of place except the washing machine in the bar. Italy is my favorite country; in fact, I plan to spend two weeks there next year. I'd always thought lightning was something only I could see. Nancy decided to make the porta-potty her home. Nothing seemed out of place except the washing machine in the bar. Italy is my favorite country; in fact, I plan to spend two weeks there next year. I'd always thought lightning was something only I could see. Nancy decided to make the porta-potty her home. Nothing seemed out of place except the washing machine in the bar. Italy is my favorite country; in fact, I plan to spend two weeks there next year. I'd always thought lightning was something only I could see. Nancy decided to make the porta-potty her home. Nothing seemed out of place except the washing machine in the bar. Italy is my favorite country; in fact, I plan to spend two weeks there next year. I'd always thought lightning was something only I could see. Nancy decided to make the porta-potty her home. Nothing seemed out of place except the washing machine in the bar. Italy is my favorite country; in fact, I plan to spend two weeks there next year. I'd always thought lightning was something only I could see. Nancy decided to make the porta-potty her home. Nothing seemed out of place except the washing machine in the bar. Italy is my favorite country; in fact, I plan to spend two weeks there next year. I'd always thought lightning was something only I could see. Nancy decided to make the porta-potty her home. Nothing seemed out of place except the washing machine in the bar. Italy is my favorite country; in fact, I plan to spend two weeks there next year. I'd always thought lightning was something only I could see. Nancy decided to make the porta-potty her home. Nothing seemed out of place except the washing machine in the bar. Italy is my favorite country; in fact, I plan to spend two weeks there next year. I'd always thought lightning was something only I could see. Nancy decided to make the porta-potty her home. Nothing seemed out of place except the washing machine in the bar. Italy is my favorite country; in fact, I plan to spend two weeks there next year. I'd always thought lightning was something only I could see. Nancy decided to make the porta-potty her home. Nothing seemed out of place except the washing machine in the bar. Italy is my favorite country; in fact, I plan to spend two weeks there next year. I'd always thought lightning was something only I could see. Nancy decided to make the porta-potty her home. Nothing seemed out of place except the washing machine in the bar. Italy is my favorite country; in fact, I plan to spend two weeks there next year. I'd always thought lightning was something only I could see. Nancy decided to make the porta-potty her home. Nothing seemed out of place except the washing machine in the bar. Italy is my favorite country; in fact, I plan to spend two weeks there next year. I'd always thought lightning was something only I could see. Nancy decided to make the porta-potty her home. Nothing seemed out of place except the washing machine in the bar. Italy is my favorite country; in fact, I plan to spend two weeks there next year. I'd always thought lightning was something only I could see. Nancy decided to make the porta-potty her home. Nothing seemed out of place except the washing machine in the bar."),
        )
      ],
    ));
  }
}
