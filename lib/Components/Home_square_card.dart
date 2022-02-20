import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SquareCard extends StatelessWidget {
  final String cardImage;
  final String textData;
  final String subtitleTextData;

  const SquareCard(
      {Key? key,
      required this.cardImage,
      required this.textData,
      required this.subtitleTextData})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: 132,
      width: width * 0.29,
      margin: const EdgeInsets.only(right: 8, bottom: 8),
      child: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Colors.black87,
              borderRadius: BorderRadius.all(
                Radius.circular(8),
              ),
            ),
          ),
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 24),
                  child: SvgPicture.asset(cardImage),
                ),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Text(
                    textData,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Text(
                  subtitleTextData,
                  style: const TextStyle(
                    fontSize: 10,
                    color: Colors.white70,
                    fontWeight: FontWeight.w300,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
