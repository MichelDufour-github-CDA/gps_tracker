import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gps_tracker/bloc/geolocation_cubit.dart';
import 'package:gps_tracker/presentation/components/geolocator_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static const name = 'home';

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Geolocator'),
        ),
        body: BlocProvider<GeolocationCubit>(
          create: (_) => GeolocationCubit()..streamGeolocation(),
          child: const GeolocatorWidget(),
        ),
      );
}
