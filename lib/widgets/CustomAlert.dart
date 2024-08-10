import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class CustomAlert {
  static show({
    required BuildContext context,
    AlertType type = AlertType.success,
    String desc = "",
    int duration = 400,
    required VoidCallback onYesPressed,
    VoidCallback? onNoPressed,
  }) async {
    // Change title based on alert type
    String title = "";
    switch (type) {
      case AlertType.success:
        title = "Succès";
        break;
      case AlertType.error:
        title = "Erreur";
        break;
      case AlertType.warning:
        title = "Attention";
        break;
      case AlertType.info:
        title = "!تنبيه";
        break;
      case AlertType.none:
        break;
    }

    await Alert(
      context: context,
      type: type,
      title: title,
      style: AlertStyle(
        isCloseButton: false,
        isOverlayTapDismiss: false,
        descStyle: const TextStyle(fontWeight: FontWeight.bold),
        descTextAlign: TextAlign.center,
        animationDuration: Duration(milliseconds: duration),
        alertBorder: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
          side: const BorderSide(
            color: Colors.grey,
          ),
        ),
        titleStyle: const TextStyle(
          color: Colors.black,
        ),
        alertAlignment: Alignment.center,
      ),
      desc: desc,
      buttons: [
        DialogButton(
          onPressed: onNoPressed ?? () => Navigator.of(context).pop(),
          width: 120,
          child: const Text(
            "لا",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
        DialogButton(
          onPressed: onYesPressed,
          width: 120,
          child: const Text(
            "نعم",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
      ],
    ).show();
  }
}
