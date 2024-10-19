import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:payment_getways/modules/widgets/thank_you_container.dart';

class ThankYouViewBody extends StatelessWidget {
  const ThankYouViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            const ThankYouContainer(),
            Positioned(
                bottom: MediaQuery.sizeOf(context).height * 0.2,
                left: -20,
                child:  CircleAvatar(
                  backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                )),
            Positioned(
                bottom: MediaQuery.sizeOf(context).height * 0.2,
                right: -20,
                child:  CircleAvatar(
                  backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                )
            ),
            const Positioned(
                top: -50,
                left: 0,
                right: 0,
                child: CircleAvatar(
                    radius: 50,
                    backgroundColor: Color(0xffD9D9D9),
                    child: CircleAvatar(
                      radius: 40,
                      backgroundColor: Color(0xff34A853),
                      child: Icon(
                        Icons.check,
                        color: Colors.white,
                        size: 60,
                      ),
                    )
                )
            ),
            Positioned(
                bottom: MediaQuery.sizeOf(context).height * 0.2+20,
                left: 20+8,
                right: 20+8,
                child: const DottedLine(
              direction: Axis.horizontal,
              alignment: WrapAlignment.center,
              lineLength: double.infinity,
              lineThickness: 2.0,
              dashLength: 10.0,
              dashGapLength: 4.0,
              dashColor: Color(0xffB8B8B8),
              dashGapColor: Colors.transparent,
            )
            ),
          ],
        ),
      ),
    );
  }
}
