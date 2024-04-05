import 'package:finalapp/shared/theme.dart';
import 'package:finalapp/ui/widgets/small_button_nav.dart';
import 'package:flutter/material.dart';

class OnBoardingProvider extends StatelessWidget {
  final String imageUrl;
  final String backgroundUrl;
  final String titleText;
  final String descriptionText;
  final Color buttonColor;

  const OnBoardingProvider(
      {super.key,
      required this.imageUrl,
      required this.titleText,
      required this.descriptionText,
      required this.backgroundUrl,
      required this.buttonColor});

  @override
  Widget build(BuildContext context) {
    Widget image() {
      return Image.asset(
        imageUrl,
      );
    }

    Widget title() {
      return Text(
        titleText,
        style: whiteTextStyle.copyWith(
          fontWeight: extraBold,
          fontSize: 32,
        ),
      );
    }

    Widget description() {
      return Text(
        descriptionText,
        style: whiteTextStyle.copyWith(
          fontWeight: medium,
          fontSize: 20,
        ),
      );
    }

    Widget navigation() {
      return Row(
        children: [
          Expanded(
            child: Text(
              "Skip",
              style: whiteTextStyle.copyWith(
                fontWeight: bold,
                fontSize: 20,
              ),
            ),
          ),
          SmallButtonNav(buttonColor),
        ],
      );
    }

    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(backgroundUrl),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(40),
        child: Column(
          children: [
            Expanded(child: image()),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                title(),
                SizedBox(
                  height: 40,
                ),
                description(),
                SizedBox(
                  height: 52,
                ),
                navigation(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
