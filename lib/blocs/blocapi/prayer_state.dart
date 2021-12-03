//part of 'covid_bloc.dart';

import 'package:equatable/equatable.dart';
import 'package:prayertimes/models/modelapi.dart';

abstract class PrayerApiState extends Equatable {
  const PrayerApiState();
}

class PrayerApiInitial extends PrayerApiState {
  const PrayerApiInitial();
  @override
  List<Object> get props => [];
}

class PrayerApiLoading extends PrayerApiState {
  const PrayerApiLoading();
  @override
  List<Object> get props => [];
}

class PrayerApiLoaded extends PrayerApiState {
  final ModalApi apiModel;
  const PrayerApiLoaded(this.apiModel);
  @override
  List<Object> get props => [apiModel];
}

class PrayerApiError extends PrayerApiState {
  final String? message;
  const PrayerApiError(this.message);
  @override
  List<Object> get props => [message ?? ''];
}
