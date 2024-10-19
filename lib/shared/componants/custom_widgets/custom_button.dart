import 'package:flutter/material.dart';

import '../../utils/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key,this.onTap, required this.title});
  final void Function()? onTap;
  final String title;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60,
        width: double.infinity,
        decoration: BoxDecoration(
            color: const Color(0xff34A853),
            borderRadius: BorderRadiusDirectional.circular(13)),
        child:  Center(
          child: Text(
            title,
            style: Styles.style22,
          ),
        ),
      ),
    );
  }
}
