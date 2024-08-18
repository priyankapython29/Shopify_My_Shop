import 'package:flutter/material.dart';

class MyUtils {
  /// It is the common function declare to use any screen when it is necessary
  /// @author Priyanka
  static showCenterSuccessDialog(context, String message) {
    showDialog(
        context: context,
        builder: (context) {
          return Dialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            child: Container(
              height: 250,
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.white,
                      child: Image(
                        image: AssetImage(
                          'assets/images/success_action_icon.png',
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 20),
                    child: Text(message),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
