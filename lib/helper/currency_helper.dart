import 'package:currency_converter_app/models/currency.dart';
import 'package:currency_converter_app/screens/utils/apikey.dart';
import 'package:http/http.dart' as http;

class CurrencyAPIHelper {
  CurrencyAPIHelper._();

  static final CurrencyAPIHelper apiHelper = CurrencyAPIHelper._();

  Future<Currency?> fetchCurrencyData() async {
    var response = await http.get(
      Uri.parse(
          "https://openexchangerates.org/api/latest.json?base=USD&app_id=$key"),
    );
    final result = ratesModelFromJson(response.body);
    return result;
  }
}

String convertansy(Map exchangeRates, String amount, String currencybase,
    String currencyfinal) {
  String output = (double.parse(amount) /
          exchangeRates[currencybase] *
          exchangeRates[currencyfinal])
      .toStringAsFixed(2)
      .toString();

  return output;
}
