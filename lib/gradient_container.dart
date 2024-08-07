import 'package:first_app/dice_roller.dart';
import 'package:flutter/material.dart';

const startAligment = Alignment.topLeft;
const endAligment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.startColor, this.endColor, {super.key});
// or const GradientContainer({super.key, required this.colors});
// final List<Color> colors;
//... colors: colors,

  const GradientContainer.purple({super.key})
      : startColor = const Color.fromARGB(255, 37, 10, 83),
        endColor = const Color.fromARGB(255, 179, 139, 248);

  final Color startColor;
  final Color endColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [startColor, endColor],
          begin: startAligment,
          end: endAligment,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
