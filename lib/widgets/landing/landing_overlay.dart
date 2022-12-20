import 'package:apexology/constants/colors.dart';
import 'package:apexology/widgets/landing/landing_card.dart';
import 'package:apexology/widgets/shared/texts.dart';
import 'package:flutter/material.dart';


class LandingOverlay extends StatelessWidget {
  const LandingOverlay({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.center,
                end: Alignment.bottomCenter,
                colors: [MyColors.black26, MyColors.black87])),
        child: SafeArea(
          child: Column(children: [
            const Spacer(
              flex: 2,
            ),
            LandingCard(),
            const Spacer(
              flex: 2,
            ),
            MyTexts.imageContribution(),
            const Spacer()
          ]),
        ));
  }
}
