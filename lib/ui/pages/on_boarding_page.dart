import 'package:finalapp/shared/theme.dart';
import 'package:finalapp/ui/widgets/on_boarding_provider.dart';
import 'package:flutter/material.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OnBoardingProvider(
        backgroundUrl: '/images/bgOnBoardingImage1.png',
        imageUrl: '/images/onBoardingImage1.png',
        titleText: 'Hijaukan Dunia',
        descriptionText:
        'Lorem ipsum dolor sit amet consectetur. Nulla massa tortor platea felis pellentesque imperdiet dignissim. Semper pharetra aliquam ipsum magna vitae pellentesque nunc.',
        buttonColor: kSecondaryColor,
      ),
    );
  }
}
