import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gps_tracker/bloc/geolocation_state.dart';
import 'package:gps_tracker/services/geolocator_service.dart';

class GeolocationCubit extends Cubit<GeolocationState> {
  GeolocationCubit() : super(GeolocationStateInitial());

  Future<void> streamGeolocation() async {
    emit(GeolocationStateLoading());

    try {
      (await GeolocatorService.streamLocation()).listen((event) {
        print('[GEOLOCATION DEBUG] - $event');
        emit(GeolocationStateLoaded(location: event));
      });
    } catch (e, s) {
      print('[GEOLOCATION DEBUG] - $e');
      print('[GEOLOCATION DEBUG] - $s');
      emit(GeolocationStateError(message: e.toString()));
    }
  }
}