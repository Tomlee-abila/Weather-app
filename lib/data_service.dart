import 'package:http/http.dart' as http;
import 'dart:convert';
import 'models.dart';

// const String appid = "78a9a8ccd663901bcb952cca2401c9ce";
class DataService {
  Future<WeatherResponse> getWeather(String city, String lat, String long) async {
    print('city+""+lat+""+long');
    print(city+""+lat+""+long);
     // https://api.openweathermap.org/data/2.5/weather?q=kisumu&appid=78a9a8ccd663901bcb952cca2401c9ce
    //  http://openweathermap.org/img/wn/10d@2x.png

     final queryParameters;
     
     if (city == ''){
      queryParameters = {
       'lat': lat,
       'lon': long,
       'appid': '4f9f9c0205d6a84a10477f9748a1fa64',
       'units': 'imperial'
       };

     }
     else{
      queryParameters = {
       'q': city, 
       'appid': '4f9f9c0205d6a84a10477f9748a1fa64',
       'units': 'imperial'
       };

     }

     

     final uri = Uri.https('api.openweathermap.org', '/data/2.5/weather', queryParameters);

     final response = await http.get(uri);

     print('response 2');
     print(response);
     print(response.body);
     print(response.body.toString());
     final json = jsonDecode(response.body);
     return WeatherResponse.fromJson(json);
  } 
}