import 'package:flutter/material.dart';
import '../screens/fifth_screen.dart';
import '../screens/first_screen.dart';
import '../screens/fourth_screen.dart';
import '../screens/second_screen.dart';
import '../screens/sixth_screen.dart';
import '../screens/third_screen.dart';

class ContentBox extends StatelessWidget {
// Create Variable

  const ContentBox(
      {super.key,
      @required this.colorText,
      @required this.descText,
      @required this.txtIcon,
      @required this.imgAddr,
      @required this.menuNum});

  final String? descText;
  final Color? colorText;
  final IconData? txtIcon;
  final String? imgAddr;
  final int? menuNum;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        width: 300,
        height: 340,
        child: Card(
          elevation: 6,
          color: colorText,
          semanticContainer: true,
          // Implement InkResponse
          child: InkResponse(
            containedInkWell: true,
            highlightShape: BoxShape.rectangle,
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                if (menuNum == 1) {
                  return const FirstScreenPage();
                } else if (menuNum == 2) {
                  return const SecondScreenPage();
                } else if (menuNum == 3) {
                  return const ThirdScreenPage();
                } else if (menuNum == 4) {
                  return const FourthScreenPage();
                } else if (menuNum == 5) {
                  return const FifthScreenPage();
                } else if (menuNum == 6) {
                  return const SixthScreenPage();
                } else {
                  return const FirstScreenPage();
                  // return ErrorPage();
                }
              }));
            },
            // Add image & text
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  '$imgAddr',
                  width: double.infinity,
                  height: 200,
                  fit: BoxFit.contain,
                ),
                Text(
                  '$descText',
                  style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87),
                ),
                const SizedBox(height: 10)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
