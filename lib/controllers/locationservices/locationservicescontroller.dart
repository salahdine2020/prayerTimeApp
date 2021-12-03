import 'dart:async';

import 'package:location/location.dart';
import 'package:prayertimes/models/locationservices.dart';

abstract class LocationServices {
  Future<UserLocation> getLocation();
  listenpositions();
}

class LocationService extends LocationServices {
  late UserLocation _currentLocation;

  Location location = Location();
  StreamController<UserLocation> _locationController = StreamController<UserLocation>();

  Stream<UserLocation> get locationStream => _locationController.stream;

  @override
  Future<UserLocation> getLocation() async {
    try {
      var userLocation = await location.getLocation();
      _currentLocation = UserLocation(
        latitude: userLocation.latitude,
        longitude: userLocation.longitude,
      );
      print('*******Long :  ${_currentLocation.longitude} Lat : ${_currentLocation.latitude}*********');
    } on Exception catch (e) {
      print('Could not get location: ${e.toString()}');
    }
    return _currentLocation;
  }

  @override
  listenpositions() {
    // TODO: implement listenpositions
    // Request permission to use location
    location.requestPermission().then((granted) {
      if (granted == true) {
        // If granted listen to the onLocationChanged stream and emit over our controller
        // todo: location.onLocationChanged().listen((locationData) {
        location.onLocationChanged.listen((locationData) {
          if (locationData != null) {
            _locationController.add(
              UserLocation(
                latitude: locationData.latitude,
                longitude: locationData.longitude,
              ),
            );
          }
        });
      }
    });
  }
}
