import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:prayertimes/blocs/blocapi/prayer_state.dart';
import 'package:prayertimes/blocs/blocapi/prayer_event.dart';
import 'package:prayertimes/resources/api_repository.dart';


class PrayerApiBloc extends Bloc<PrayerApiEvent, PrayerApiState> {
  final ApiRepository _apiRepository = ApiRepository();

  PrayerApiBloc(PrayerApiState initialState) : super(initialState);

  @override
  PrayerApiState get initialState => PrayerApiInitial();

  @override
  Stream<PrayerApiState> mapEventToState(
    PrayerApiEvent event,
  ) async* {
    if (event is GetPrayerApiList) {
      try {
        yield PrayerApiLoading();
        final mList = await _apiRepository.fetchPrayerTimeList();
        yield PrayerApiLoaded(mList);
        if (mList.error != null) {
          yield PrayerApiError(mList.error);
        }
      } on NetworkError {
        yield PrayerApiError("Failed to fetch data. is your device online?");
      }
    }
  }
}
