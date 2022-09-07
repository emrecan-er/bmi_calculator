import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:vki/constants.dart';
import 'package:vki/reusable_card.dart';
import 'calculator_brain.dart';

class SonucEkrani extends StatelessWidget {
  SonucEkrani({
    required this.result,
    required this.explain,
    required this.bmi_result,
  });

  final String result;
  final String explain;
  final String bmi_result;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16),
              child: Expanded(
                  child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const <Widget>[
                  Text(
                    'Your Result',
                    style: kBigNumStyle,
                  )
                ],
              )),
            ),
            Expanded(
              child: ReusableCard(
                colour: kActiveCardColour,
                cardChild: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(32.0),
                          child: Text(
                            result.toUpperCase(),
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w800,
                              color: Colors.green,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      child: Text(
                        bmi_result,
                        style: resultFont,
                      ),
                    ),
                    Expanded(
                      child: Text(
                        explain,
                        style: explainText,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Container(
                margin: const EdgeInsets.only(top: 3.0),
                child: const Center(
                    child: Text(
                  'RE-CALCULATE',
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                )),
                decoration: BoxDecoration(
                  color: kBottomCardColor,
                  borderRadius: BorderRadius.circular(15),
                ),
                width: double.infinity,
                height: kBottomContainerHeight,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
