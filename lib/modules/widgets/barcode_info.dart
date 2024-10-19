import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../shared/utils/styles.dart';

class BarcodeInfo extends StatelessWidget {
  const BarcodeInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          FontAwesomeIcons.barcode,
          size: 64,
        ),
        const Spacer(),
        Container(
          height: 58,
          width: 113,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.green, width: 1.5),
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Center(
            child: Text('PAID',
                style: Styles.style24
                    .copyWith(color: const Color(0xff34A853))),
          ),
        )
      ],
    );
  }
}
