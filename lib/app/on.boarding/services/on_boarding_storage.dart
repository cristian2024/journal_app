

import 'package:journal/core/services/storage/storage_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OnBoardingStorage extends StorageService<bool>{
  static final _instance = SharedPreferences.getInstance();

  static const _key = 'on_boarding';

  @override
  Future<bool> get() async {
    try {
      return (await _instance).getBool(_key) ?? false;
    } catch (e) {
      return false;
    }
  }

  @override
  Future<bool> set(bool value) async {
    return (await _instance).setBool(_key, value);
  }



  static final OnBoardingStorage _singleton = OnBoardingStorage._internal();

  factory OnBoardingStorage() {
    return _singleton;
  }

  OnBoardingStorage._internal();
}
