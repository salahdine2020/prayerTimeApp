import 'package:dio/dio.dart';
import 'package:prayertimes/models/modelapi.dart';
import 'package:prayertimes/utilities/constants/strings.dart';

class ApiProvider {
  final Dio _dio = Dio();
  final String _url = url;

  Future<ModalApi> fetchPrayerApiList({String? longitude, String? latitude, String? elevation}) async {
    final String urlinside = 'https://api.pray.zone/v2/times/today.json?longitude=$longitude&latitude=$latitude&elevation=$elevation';
    try {
      Response response = await _dio.get(urlinside);
      return ModalApi.fromJson(response.data);
    } catch (error, stacktrace) {
      print("Exception occured: $error stackTrace: $stacktrace");
      return ModalApi.withError("Data not found / Connection issue");
    }
  }
}
