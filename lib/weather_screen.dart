import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_family_modifier/providers.dart';

class WeatherScreen extends ConsumerWidget {
  const WeatherScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final weatherData = ref.watch(weatherProvider('Khulna'));
    return Scaffold(
      appBar: AppBar(
        title: const Text('WeatherScreen'),
        centerTitle: true,
      ),
      body: weatherData.when(
        data: (_) => Center(child: Text(_.toString())),
        error: (__, ___) => Center(child: Text(__.toString())),
        loading: () => const Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
