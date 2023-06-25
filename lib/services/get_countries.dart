import 'package:http/http.dart';
import 'dart:convert';

class GetCountries {
  List<dynamic>? countries;

  Future<void> getCountries() async {
    try{
      Response response = await get(Uri.parse('https://restcountries.com/v3.1/all?fields=name,cca2'));
      List<dynamic> data = jsonDecode(response.body);
      countries = data;
    }
    catch(e){
      print('ERROR: $e');
      countries = ['could not get info'];
    }
  }
}