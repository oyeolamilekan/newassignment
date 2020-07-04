import 'package:flutter/material.dart';
import 'package:ui_assignment_flutter/widgets/buyCrypto.dart';

class Modal {
  mainBottomSheet(
    BuildContext context,
  ) {
    showModalBottomSheet(
        context: context,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        builder: (BuildContext context) {
          return SizedBox.expand(
            child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: new BorderRadius.only(
                        topLeft: const Radius.circular(50.0),
                        topRight: const Radius.circular(50.0))),
                child: BuyCrypto()),
          );
        });
  }
}
