import 'package:wheater_app/data/remote_data_sources/weather_remote_data_source.dart';
import 'package:wheater_app/domain/models/weather_model.dart';

class WeatherRepository {
  WeatherRepository(this._weatherRemoteDataSource);
  final WeatherRemoteDataSource _weatherRemoteDataSource;

  Future<WeatherModel?> getWeatherData({
    required String city,
  }) async {
    final json = await _weatherRemoteDataSource.getWeatherData(city: city);

    if (json == null) {
      return null;
    }

    return WeatherModel.fromJson(json);
  }
}
