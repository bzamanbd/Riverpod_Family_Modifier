import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_family_modifier/dummy_weather.dart';

final weatherProvider = FutureProvider.family<String, String>(
    (_, cityName) => fetchWeather(cityName));
