
import 'package:flutter/material.dart';

import '../../shared/utils/styles.dart';

class ThankYouPayment extends StatelessWidget {
  const ThankYouPayment({super.key, required this.title, required this.value});
  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Styles.style18,
        ),
        Text(
          value,
          style: Styles.styleBold18,
        ),
      ],
    );
  }
}