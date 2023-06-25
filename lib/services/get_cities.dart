
import 'package:http/http.dart';
import 'dart:convert';


class GetCities {
  String? country;
  List? cities;

  GetCities({ this.country });

  Future<void> getCities() async {
    try{
      Response response = await get(Uri.parse('https://countriesnow.space/api/v0.1/countries/states/q?iso2=$country'));
      Map data = jsonDecode(response.body);
      cities = data['data']['states'];
    }
    catch(error){
      print('ERROR: $error');
    }
  }
}