import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gps_tracker/bloc/geolocation_cubit.dart';
import 'package:gps_tracker/bloc/geolocation_state.dart';

class GeolocatorWidget extends StatelessWidget {
  const GeolocatorWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) =>
      BlocBuilder<GeolocationCubit, GeolocationState>(
        builder: (context, state) {
          if (state is GeolocationStateLoaded) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Latitude:'),
                      const SizedBox(
                          width: 10),
                      Text('${state.location.latitude}'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Longitude:'),
                      const SizedBox(
                          width: 10),
                      Text('${state.location.longitude}'),
                    ],
                  ),
                ],
              ),
            );
          } else if (state is GeolocationStateError) {
            return Center(
              child: Text(state.message),
            );
          }

          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      );
}
