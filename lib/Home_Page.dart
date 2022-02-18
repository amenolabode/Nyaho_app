import 'package:flutter/material.dart';
import 'package:nyaho/Components/Card_home.dart';
import 'package:nyaho/Components/Button_Outlined.dart';
import 'package:nyaho/Home.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Body(height, width);
  }

  Stack Body(double height, double width) {
    return Stack(
      children: <Widget>[
        Container(
          height: height,
          width: width,
          decoration: const BoxDecoration(color: Colors.white),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(
                  left: 4,
                  top: 32.0,
                  bottom: 24,
                ),
                child: Text(
                  "What do you want \n to do this morning?",
                  style: TextStyle(
                      color: Color(0xff222B45),
                      fontSize: 24,
                      letterSpacing: 0.3,
                      fontWeight: FontWeight.w700),
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
              const ButtonOutlined(
                buttonText: "Have an emergency?",
                buttonSubText: "Find the closest ER here",
              ),
              const ButtonOutlined(
                buttonText: "Order a Test?",
                buttonSubText: "View all Tests here",
              ),
            ],
          ),
        ),
      ],
    );
  }
}
