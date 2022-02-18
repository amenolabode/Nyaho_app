import 'package:flutter/material.dart';

class ButtonOutlined extends StatelessWidget {
  final String buttonText;
  final String buttonSubText;

  const ButtonOutlined(
      {Key? key, required this.buttonText, required this.buttonSubText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      margin: const EdgeInsets.only(top: 12, bottom: 12),
      width: width * 0.9,
      height: 72,
      child: Stack(
        children: [
          //background
          Container(
            decoration: BoxDecoration(
              color: const Color(0xffF1F4FF),
              border: Border.all(
                  color: const Color(0xff3E64FF),
                  width: 0.5,
                  style: BorderStyle.solid),
              borderRadius: const BorderRadius.all(
                Radius.circular(8),
              ),
            ),
          ),
          //Text and Button
          Row(
            children: [
              //Text
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        buttonText,
                        style: const TextStyle(
                            color: Color(0xff23374D),
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        buttonSubText,
                        style: const TextStyle(
                            color: Color(0xff96979A),
                            fontSize: 13,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(8),
                  ),
                  child: Container(
                    color: const Color(0xff3E64FF),
                    height: 44,
                    width: 44,
                    child: const Icon(
                      Icons.chevron_right,
                      color: Colors.white,
                      size: 28,
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
