import 'package:internet_connection_checker/internet_connection_checker.dart'; // ignore: file_names
import '../Features/Weather/Domain/Abstracts/network_info.dart';

class NetworkInfo implements INetworkInfo {
  final InternetConnectionChecker connectionChecker;

  NetworkInfo({required this.connectionChecker});
  @override
  Future<bool> get isConnected => connectionChecker.hasConnection;
}
