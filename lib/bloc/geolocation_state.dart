import 'package:gps_tracker/models/location_model.dart';

abstract class GeolocationState {}

class GeolocationStateInitial extends GeolocationState {}

class GeolocationStateLoading extends GeolocationState {}

class GeolocationStateLoaded extends GeolocationState {
  final LocationModel location;

  GeolocationStateLoaded({
    required this.location,
  });
}

class GeolocationStateError extends GeolocationState {
  final String message;

  GeolocationStateError({
    required this.message,
  });
}
