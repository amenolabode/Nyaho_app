import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class VerticalSliderCard extends StatelessWidget {
  final String textData;
  final String cardBackgroundImage;
  final String date;
  final String priceTag;

  const VerticalSliderCard(
      {Key? key,
      required this.textData,
      required this.cardBackgroundImage,
      required this.date,
      required this.priceTag})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: 100,
      width: width * 0.6,
      margin: const EdgeInsets.only(right: 8, bottom: 8),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(cardBackgroundImage), fit: BoxFit.cover),
              borderRadius: const BorderRadius.all(
                Radius.circular(8),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              alignment: Alignment.topRight,
              child: Stack(
                children: [
                  Container(
                    child: Center(
                      child: Text(
                        priceTag,
                        // textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 10,
                            fontWeight: FontWeight.w300),
                      ),
                    ),
                    height: 22,
                    width: 56,
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.6),
                        border: Border.all(
                            color: Colors.white, // set border color
                            width: 1.0),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(8))),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 4.0),
                  child: Row(
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.calendar_today,
                        color: Colors.white70,
                        size: 14,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          date,
                          style: const TextStyle(
                            fontSize: 12,
                            fontFamily: "Poppins",
                            color: Colors.white70,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  textData,
                  style: const TextStyle(
                    fontSize: 16,
                    fontFamily: "Poppins",
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
