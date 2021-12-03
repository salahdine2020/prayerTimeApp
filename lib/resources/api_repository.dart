
import 'package:prayertimes/models/modelapi.dart';

import 'api_provider.dart';

class ApiRepository {
  final _provider = ApiProvider();

  Future<ModalApi> fetchPrayerTimeList({String? longitude, String? latitude, String? elevation}) {
    return _provider.fetchPrayerApiList(longitude: longitude, latitude: latitude, elevation: elevation);
  }
}

class NetworkError extends Error {}
