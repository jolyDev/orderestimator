import 'package:http/http.dart' as http;
import 'package:orderestimate/models/price_estimate.dart';
 
final _SERVER_ADDRES = "http://localhost:3002";

Future<String> getPriceEstimate() async {
  final httpPackageUrl = Uri.parse(_SERVER_ADDRES);
  final httpPackageInfo = await http.read(httpPackageUrl);
  return httpPackageInfo;
}