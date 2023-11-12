
import 'package:flutter/cupertino.dart';
import 'package:z/app/app.locator.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeViewModel extends BaseViewModel {
  HomeViewModel({this.context});
  BuildContext? context;

  final _navigationService = locator<NavigationService>();

  navigateTo({view}) {
    _navigationService.navigateWithTransition(view, curve: Curves.easeIn, duration: const Duration(milliseconds: 300));
  }
}