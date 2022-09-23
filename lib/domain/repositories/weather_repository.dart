import 'package:dio/dio.dart';
import 'package:wheater_app/domain/models/weather_model.dart';

class WeatherRepository {
  Future<WeatherModel?> getWeatherModel({
    required String city,
  }) async {
    //http://api.weatherapi.com/v1/current.json?key=3b0aa7beabbd494ba49102846222309&q=Barcelona&aqi=no
    final response = await Dio().get(
        'http://api.weatherapi.com/v1/current.json?key=3b0aa7beabbd494ba49102846222309&q=Barcelona&aqi=no');
    print(response.data);
    return const WeatherModel(city: 'Warsaw', temperature: -5.5);
  }
}
