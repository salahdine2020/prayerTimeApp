//import 'dart:async';
//
//import 'package:flutter/material.dart';
//import 'package:flutter_bloc/flutter_bloc.dart';
//import 'package:geolocator/geolocator.dart';
//import 'package:prayertimes/blocs/bloclocation/bloclocationstateevents/blocstate.dart';
//
//import 'blocevents.dart';
//
//class LocationBloc extends Bloc<LocationEvent, LocationState> {
//  final Geolocator? _geolocator;
//  StreamSubscription? _locationSubscription;
//
//  LocationBloc({Geolocator? geolocator})
//      : assert(geolocator != null),
//        _geolocator = geolocator, super(LocationInitial());
//
//  @override
//  LocationState get initialState => LocationInitial();
//
//  @override
//  Stream<LocationState> mapEventToState(LocationEvent event,) async* {
//    if(event is LocationInitial){
//      yield LocationInitial();
//
//    }
//    else if (event is LocationStarted) {
//      yield LocationLoadInProgress();
//      _locationSubscription?.cancel();
//      _locationSubscription = Geolocator.getPositionStream().listen(
//            (Position position) => add(LocationChanged(position: position),
//        ),
//      );
//    } else if (event is LocationChanged) {
//      yield LocationLoadSuccess(position: event.position);
//    }
//  }
//
//  @override
//  Future<void> close() {
//    _locationSubscription?.cancel();
//    return super.close();
//  }
//}