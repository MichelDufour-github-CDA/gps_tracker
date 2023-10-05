import 'package:gps_tracker/data/geolocation_data_source.dart';
import 'package:gps_tracker/models/location_model.dart';

abstract class GeolocatorService {
  static Future<Stream<LocationModel>> streamLocation() {
    return GeolocationDataSource.streamLocation();
  }
}
