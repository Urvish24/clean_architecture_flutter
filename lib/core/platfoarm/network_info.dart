import 'package:connectivity_plus/connectivity_plus.dart';

abstract class NetworkInfo {
  Future<bool> get isConnected;
}

class NetworkInfoImpl extends NetworkInfo {
  Connectivity connectivity = Connectivity();

  NetworkInfoImpl(this.connectivity);

  @override
  // TODO: implement isConnected
  Future<bool> get isConnected async {
    var connectivityResult = await (connectivity.checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile) {
      return Future.value(true);
    } else if (connectivityResult == ConnectivityResult.wifi) {
      return Future.value(true);
    }
    return Future.value(false);
  }
}
