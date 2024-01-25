import 'package:bloc_practice/netwrok/api_service.dart';
import 'package:bloc_practice/netwrok/urls.dart';
import 'package:flutter/foundation.dart';

class ApiResponse {
  ApiService api = ApiService();
  
  getresponse() async {
    try {
      var res = await api.getApi(Urls.post);
      return res;
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
  }
}
