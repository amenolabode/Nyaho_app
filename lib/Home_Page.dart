import 'package:flutter/material.dart';
import 'package:nyaho/Components/Home_square_card.dart';
import 'package:nyaho/Components/Button_Outlined.dart';
import 'package:nyaho/Home.dart';
import 'package:nyaho/Components/vertical_slider_card.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return ListView(children: [
      // Container(
      //   height: height,
      //   width: width,
      //   decoration: const BoxDecoration(color: Colors.white),
      // ),
      Padding(
        padding: const EdgeInsets.only(left: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // const Padding(
            //   padding: EdgeInsets.only(
            //     left: 4,
            //     top: 16.0,
            //     bottom: 16,
            //   ),
            //   // child: Text(
            //   //   "What do you want \n to do this morning?",
            //   //   style: TextStyle(
            //   //       color: Color(0xff222B45),
            //   //       fontSize: 24,
            //   //       letterSpacing: 0.3,
            //   //       fontFamily: "Poppins",
            //   //       fontWeight: FontWeight.w600),
            //   // ),
            // ),
            SizedBox(
              height: 140,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const <Widget>[
                  VerticalSliderCard(
                    textData: "Neurology",
                    cardBackgroundImage: "images/cont-bg.jpg",
                    date: "26/12/2022",
                    priceTag: "free",
                  ),
                  VerticalSliderCard(
                    textData: "Neurology",
                    cardBackgroundImage: "images/cont-bg2.jpg",
                    date: "26/12/2022",
                    priceTag: "#12000",
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 16.0, bottom: 12),
              child: Text(
                "Categories",
                style: TextStyle(
                    color: Color(0xff222B45),
                    fontSize: 16,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w600),
              ),
            ),
            Row(
              children: const [
                SquareCard(
                  cardImage: "images/svg/brain icon-1.svg",
                  textData: "Neurology",
                  subtitleTextData: "2,029 doctors",
                ),
                SquareCard(
                  cardImage: "images/svg/brain icon-1.svg",
                  textData: "Genetics",
                  subtitleTextData: "1,870 doctors",
                ),
                SquareCard(
                  cardImage: "images/svg/brain icon-1.svg",
                  textData: "Err",
                  subtitleTextData: "Hiyah",
                ),
              ],
            ),
            Row(
              children: const [
                SquareCard(
                  cardImage: "images/svg/brain icon-1.svg",
                  textData: "Hello",
                  subtitleTextData: "Hiyah",
                ),
                SquareCard(
                  cardImage: "images/svg/brain icon-1.svg",
                  textData: "Err",
                  subtitleTextData: "Hiyah",
                ),
                SquareCard(
                  cardImage: "images/svg/brain icon-1.svg",
                  textData: "Err",
                  subtitleTextData: "Hiyah",
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Column(
                children: const [
                  ButtonOutlined(
                    buttonText: "Have an emergency?",
                    buttonSubText: "Find the closest ER here",
                  ),
                  ButtonOutlined(
                    buttonText: "Order a Test?",
                    buttonSubText: "View all Tests here",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ]);
  }
}
