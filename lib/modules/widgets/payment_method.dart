import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PaymentMethod extends StatelessWidget {
  const PaymentMethod({super.key,this.isActive=false,required this.image});
  final bool isActive;
  final String image;

  @override
  Widget build(BuildContext context) {
    return  AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      height: 62,
      width: 103,
      decoration: ShapeDecoration(
        color: const Color(0xff34A853),
        shape: RoundedRectangleBorder(
          side:  BorderSide(width: 1.5, color:isActive?  const Color(0xff34A853):Colors.grey),
          borderRadius: BorderRadiusDirectional.circular(15),
        ),
        shadows:  [
          BoxShadow(
            color: isActive? const Color(0xff34A853): Colors.grey,
            blurRadius: 4,
            offset: const Offset(1, 1),
          ),
        ],
      ),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadiusDirectional.circular(15)
        ),
        child: Center(
          child: SvgPicture.asset(
            image,
          ),
        ),
      ),
    );
  }
}
