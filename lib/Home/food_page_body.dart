import 'package:flutter/material.dart';
import 'package:foodapp/utils/colors.dart';
import 'package:foodapp/utils/dimensions.dart';
import 'package:foodapp/widget/big_text.dart';
import 'package:foodapp/widget/icon_and_text_widget.dart';
import 'package:foodapp/widget/small_text.dart';
import 'package:dots_indicator/dots_indicator.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({Key? key}) : super(key: key);

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  PageController pageController = PageController(viewportFraction: 0.85);
  var _currPageValue = 0.0;
  double _pageOffset = 0.8;
  double _height = Dimensions.pageViewContainerHeight;

  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        _currPageValue = pageController.page!;
        print("Current valur is " + _currPageValue.toString());
      });
    });
  }

  @override
  void dispose() {
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // silder section
        Container(
          // color: Colors.redAccent,
          height: Dimensions.pageView,
          child: PageView.builder(
              controller: pageController,
              itemCount: 5,
              itemBuilder: (context, position) {
                return _buildPageItem(position);
              }),
        ),
        // dots
        new DotsIndicator(
          dotsCount: 5,
          position: _currPageValue,
          decorator: DotsDecorator(
            activeColor: AppColors.mainColor,
            size: const Size.square(9.0),
            activeSize: const Size(18.0, 9.0),
            activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(Dimensions.radius5)),
          ),
        ),
        // spacer
        SizedBox(height: Dimensions.heigth30),
        // popular text
        Container(
          margin: EdgeInsets.only(left: Dimensions.width30),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              BigText(text: "Popular"),
              SizedBox(width: Dimensions.width10),
              Container(
                margin: const EdgeInsets.only(bottom: 3),
                child: BigText(
                  text: ".",
                  color: Colors.black26,
                ),
              ),
              SizedBox(width: Dimensions.width10),
              Container(
                margin: const EdgeInsets.only(bottom: 2),
                child: SmallText(text: "Food Paring"),
              )
            ],
          ),
        ),
        // list view (images and text)
        ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return Container(
                
              );
            })
      ],
    );
  }

  Widget _buildPageItem(int index) {
    Matrix4 matrix = new Matrix4.identity();
    if (index == _currPageValue.floor()) {
      var currScale = 1 - (_currPageValue - index) * (1 - _pageOffset);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == _currPageValue.floor() + 1) {
      var currScale =
          _pageOffset + (_currPageValue - index + 1) * (1 - _pageOffset);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == _currPageValue.floor() - 1) {
      var currScale = 1 - (_currPageValue - index) * (1 - _pageOffset);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else {
      var currScale = 0.8;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, _height * (1 - _pageOffset) / 2, 1);
    }

    return Transform(
        transform: matrix,
        child: Stack(
          children: [
            Container(
              height: Dimensions.pageViewContainerHeight,
              margin: EdgeInsets.only(
                  left: Dimensions.width10, right: Dimensions.width10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius30),
                  color: index.isEven ? Color(0xFF69C5DF) : Color(0xFF9294CC),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/image/food0.png"))),
            ),
            Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: Dimensions.pageViewTextContainerHeight,
                  margin: EdgeInsets.only(
                      left: Dimensions.width30,
                      right: Dimensions.width30,
                      bottom: Dimensions.heigth30),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensions.radius20),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Color(0xFFe8e8e8),
                            blurRadius: 5.0,
                            offset: Offset(0, 5)),
                        BoxShadow(color: Colors.white, offset: Offset(-5, 0)),
                        BoxShadow(
                            color: Colors.white,
                            blurRadius: 5.0,
                            offset: Offset(5, 0)),
                      ]),
                  child: Container(
                    padding: EdgeInsets.only(
                        top: Dimensions.height15,
                        left: Dimensions.width15,
                        right: Dimensions.width15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        BigText(text: "chinese side"),
                        SizedBox(height: Dimensions.height10),
                        Row(
                          children: [
                            Wrap(
                              children: List.generate(5, (index) {
                                return Icon(
                                  Icons.star,
                                  color: AppColors.mainColor,
                                  size: 15,
                                );
                              }),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            SmallText(text: "4.5"),
                            SizedBox(
                              width: 10,
                            ),
                            SmallText(text: "1287"),
                            SizedBox(
                              width: 10,
                            ),
                            SmallText(text: "comments"),
                          ],
                        ),
                        SizedBox(height: Dimensions.height20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconAndTextWidget(
                              icon: Icons.circle_sharp,
                              text: "Normal",
                              iconcolor: AppColors.iconColor1,
                            ),
                            IconAndTextWidget(
                              icon: Icons.location_on,
                              text: "1.7 Km",
                              iconcolor: AppColors.mainColor,
                            ),
                            IconAndTextWidget(
                              icon: Icons.access_time_rounded,
                              text: "32 min",
                              iconcolor: AppColors.iconColor2,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                )),
          ],
        ));
  }
}
