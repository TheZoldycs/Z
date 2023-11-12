import 'package:z/app/app.locator.dart';
import 'package:z/services/connectivity_service.dart';
import 'package:stacked/stacked.dart';

class IndexViewModel extends IndexTrackingViewModel {
  bool? thereIsConnection = true;
  final _connectivityService = locator<ConnectivityService>();
  bool? isReload = false;

  updateIsReload() {
    isReload = !isReload!;
    notifyListeners();
  }

  getConnectivityStatus({context}) {
    _connectivityService.checkConnectivity(() {
      thereIsConnection = true;
      notifyListeners();
    }, () {
      thereIsConnection = false;
      notifyListeners();
    });
  }
}