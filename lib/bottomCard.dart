import 'package:flutter/material.dart';

import 'constants.dart';

class bottomContainer extends StatelessWidget {
  const bottomContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 3.0),
      child: const Center(
          child: Text(
        'CALCULATE',
        style: TextStyle(
            fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),
      )),
      decoration: BoxDecoration(
        color: kBottomCardColor,
        borderRadius: BorderRadius.circular(15),
      ),
      width: double.infinity,
      height: kBottomContainerHeight,
    );
  }
}
