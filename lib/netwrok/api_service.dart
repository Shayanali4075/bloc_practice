import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class ApiService {
  Dio dio = Dio();

  Future getApi(String? url) async {
    try {
      Response res = await dio.get(url!);
      if(res.statusCode == 200){
        return res.data;
      }
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
  }
}
