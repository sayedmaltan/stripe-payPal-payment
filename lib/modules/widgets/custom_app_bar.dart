
  import 'package:flutter/material.dart';
import 'package:payment_getways/shared/utils/styles.dart';

   PreferredSizeWidget  customAppBar({ String title=''}) {
    return  AppBar(
      centerTitle: true,
      title:   Text(
        title,
        style: Styles.style25,
      ),
    );
  }

