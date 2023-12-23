import 'package:flutter/material.dart';
import 'package:goodspace_assignment/constants.dart';

class CustomBoxDecoration {
  static BoxDecoration cardBoxDecoration({showShadow}) {
    return BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
      border: Border.all(
        color: Colors.white,
      ),
      boxShadow: (showShadow == null)
          ? const [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 5,
              ),
            ]
          : null,
    );
  }

  static BoxDecoration buttonBoxDecoration({color}) {
    return BoxDecoration(
      color: (color != null) ? color : kBlue,
      borderRadius: BorderRadius.circular(10),
    );
  }

  static BoxDecoration tagsBoxDecoration() {
    return BoxDecoration(
      color: kLightGrey,
      borderRadius: BorderRadius.circular(10),
    );
  }
}
