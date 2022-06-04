import 'package:animations/animations.dart';
import 'package:animeku/widget/infoDialog.dart';
import 'package:flutter/material.dart';

class DialogUtils {
  static DialogUtils instance = DialogUtils();

  void showInfo(
      BuildContext context, String message, IconData icon, String buttonText,
      {required Function onClick}) {
    showModal(
      context: context,
      configuration: FadeScaleTransitionConfiguration(
        barrierDismissible: false
      ),
      builder: (context) {
        return InfoDialog(
          text: message,
          onClickOK: () =>
              onClick != null ? onClick() : Navigator.pop(context),
          icon: icon,
          clickText: buttonText,
          onClickCancel: () => Navigator.pop(context),
        );
      });
  }

  void showChoose(
      BuildContext context, String message, IconData icon, String buttonText,
      {required Function onClick}) {
    showModal(
      context: context,
      configuration: FadeScaleTransitionConfiguration(
        barrierDismissible: false
      ),
      builder: (context) {
        return InfoDialog(
          text: message,
          onClickOK: () =>
              onClick != null ? onClick() : Navigator.pop(context),
          icon: icon,
          onClickCancel: () => Navigator.pop(context),
          clickText: buttonText,
        );
      });
  }
}
