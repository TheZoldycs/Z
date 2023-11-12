import 'package:flutter/animation.dart';
import 'package:z/app/app.locator.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:z/services/api_service.dart';
import 'package:z/services/token_service.dart';

class OnBoardingViewModel extends IndexTrackingViewModel {
  final _navigationService = locator<NavigationService>();
  final _tokenService = locator<TokenService>();
  final _apiService = locator<ApiService>();
  dynamic usersCount;

  Future<String?> getLang() async {
    return await _tokenService.getLangValue();
  }

  void navigateTo({view}) {
    _navigationService.replaceWithTransition(view, curve: Curves.easeIn);
  }
}