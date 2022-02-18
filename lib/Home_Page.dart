import 'package:flutter/material.dart';
import 'package:nyaho/Components/Card_home.dart';
import 'package:nyaho/Components/Button_Outlined.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        elevation: 0,
        title: const Padding(
          padding: EdgeInsets.only(left: 4.0),
          child: Text(
            "Hello Amen",
            style: TextStyle(
                color: Color(0xff222B45),
                fontSize: 16,
                fontWeight: FontWeight.w600),
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.calendar_today,
              color: Color(0xff222B45),
              size: 24,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: Icon(
              Icons.more_vert,
              color: Color(0xff222B45),
              size: 28,
            ),
          ),
        ],
        backgroundColor: Colors.white,
      ),
      body: Stack(
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
                        fontFamily: "Poppins",
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
      ),
    );
  }
}
