import 'package:equatable/equatable.dart';

abstract class PrayerApiEvent extends Equatable {
  const PrayerApiEvent();
}

class GetPrayerApiList extends PrayerApiEvent {
  @override
  List<Object> get props => [];
}
