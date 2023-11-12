import 'package:flutter/material.dart';
import 'package:z/app/app.locator.dart';
import 'package:z/enum/dialog_type.dart';
import 'package:stacked_services/stacked_services.dart';

void setupDialogUi() {
  var dialogService = locator<DialogService>();

  var builders = {
    DialogType.basic : (BuildContext context, DialogRequest dialogRequest, Function(DialogResponse) completer)
        => Container(),
  };

  dialogService.registerCustomDialogBuilders(builders);
}