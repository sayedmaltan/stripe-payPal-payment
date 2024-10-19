import 'package:flutter/material.dart';
import 'package:payment_getways/modules/widgets/thank_you_view_body.dart';

class ThankYouView extends StatelessWidget {
  const ThankYouView({super.key});

  @override
  Widget build(BuildContext context) {
    return    Scaffold(
      appBar: AppBar(
      backgroundColor: Colors.transparent,
      ),
      body:Transform.translate(
          offset: const Offset(0, -16),
          child: const ThankYouViewBody()) ,
    );
  }
}
