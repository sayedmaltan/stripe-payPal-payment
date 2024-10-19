import 'package:flutter/material.dart';

import '../../shared/utils/styles.dart';

class TotalPriceItem extends StatelessWidget {
  const TotalPriceItem({super.key, required this.info, required this.price});
  final String info;
  final String price;


  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Text(
          info,
          style: Styles.style24,
        ),
        const Spacer(),
        Text(
          price,
          style: Styles.style24,
        ),
      ],
    );
  }
}
