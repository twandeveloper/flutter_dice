import 'package:flutter/material.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer({required this.colors, super.key});
  final List<Color> colors;

  void rollDice() {
    print('Rolling the dice');
  }

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: colors, begin: startAlignment, end: endAlignment),
      ),
      child: Center(
        child: Column(
          children: [
            Image.asset(
              'assets/images/dice-2.png',
              width: 200,
            ),
            TextButton(
              onPressed: rollDice,
              child: const Text('Roll the dice'),
            ),
          ],
        ),
      ),
    );
  }
}

// class GradientContainer extends StatelessWidget {
//   const GradientContainer({required this.colors, super.key});
//   final List<Color> colors;
//   @override
//   Widget build(context) {
//     return Container(
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//             colors: colors, begin: startAlignment, end: endAlignment),
//       ),
//       child: const Center(
//         child: StyledText(
//           'Hello Antoine!',
//         ),
//       ),
//     );
//   }
// }
