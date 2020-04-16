import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';

class DialogWidget {
  showDialog(BuildContext context, String title, String desc, DialogType type,
      Function btnCancel, Function btnOK) {
    AwesomeDialog(
            context: context,
            headerAnimationLoop: false,
            dialogType: type,
            animType: AnimType.BOTTOMSLIDE,
            tittle: title,
            desc: desc,
            btnCancelOnPress: btnCancel == null ? null : btnCancel,
            btnOkOnPress: btnOK == null ? null : btnOK)
        .show();
  }
}
