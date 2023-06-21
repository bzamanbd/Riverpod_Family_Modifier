Future<String> fetchWeather(String cityName) async => await Future.delayed(
    const Duration(seconds: 5), () => "Today Temp in $cityName is : 33");
