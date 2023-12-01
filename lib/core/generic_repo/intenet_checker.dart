
import 'package:connectivity_plus/connectivity_plus.dart';

class CheckInternet {
  // static Future<bool> isConnected() async {
  //   bool isConnected = true;
  //   try {
  //     final result = await InternetAddress.lookup('example.com');
  //     if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
  //       isConnected = true;
  //     } else {
  //       isConnected = false;
  //     }
  //   } on SocketException catch (_) {
  //     isConnected = false;
  //   }
  //   return isConnected;
  // }
    static Future<bool> checkInternetAvailability() async {
    final connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile ||
        connectivityResult == ConnectivityResult.wifi) {
      return true;
    }
    return false;
  }

}
