import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../shared/utils/styles.dart';

class CardTypeItem extends StatelessWidget {
  const CardTypeItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 305,
      decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusDirectional.circular(17)
          )
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 23.0,vertical: 16),
        child: Row(
          children: [
            SvgPicture.asset('assets/images/master_card.svg'),
            const SizedBox(width: 23,),
            const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Credit Card',
                  style: Styles.style18,
                ),
                Text(
                  'Mastercard **78',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w300
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
