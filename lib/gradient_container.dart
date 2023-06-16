import 'package:flutter/material.dart';
import 'package:project2/dice_roller.dart';
//import 'package:project2/styled_text.dart';

const startAlign = Alignment.topCenter;
const endAlign = Alignment.bottomCenter;
// can also be assigned as Alignment? startAlign which means the data type is
// Ailgnment or NULL
// const is used to lock values during Compilation time.
// final is used to lock values during Runtime.

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.colors, {super.key});

  final List<Color> colors;
  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors, // colors are passed as the declared list is dynamic
          begin: startAlign, // can be assigned with multiple values as we can
          end:
              endAlign, // multiple values to the declared variable as of vector in C++
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
