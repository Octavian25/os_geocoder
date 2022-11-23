library geocoder;

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:os_geocoder/geocoder.dart';
export 'octa_geocoder.dart';

/// A Calculator.
class OctaGeocoder {
  Future<OctaGeoCoderEntity?> getAddress(
      {required double lattitude, required double longitude}) async {
    try {
      var result = await Dio().get(
          "https://nominatim.openstreetmap.org/reverse?lat=$lattitude&lon=$longitude&format=jsonv2");
      return octaGeoCoderEntityFromJson(result.data);
    } on DioError catch (e) {
      if (kDebugMode) {
        print(e.error);
      }
      return null;
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
    return null;
  }
}
