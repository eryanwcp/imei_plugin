import 'dart:async';

import 'package:flutter/services.dart';

class ImeiPlugin {
  static const MethodChannel _channel = const MethodChannel('imei_plugin');

  // get imei android device @return String
  static Future<String?> getImei({
    bool shouldShowRequestPermissionRationale = false
  }) async {
    final String? imei = await _channel.invokeMethod('getImei', { "ssrpr": shouldShowRequestPermissionRationale });
    return imei;
  }

  // get multi imei numbers (dual-sim, tri-sim) @return List<String>
  static Future<List<String>?> getImeiMulti({
    bool shouldShowRequestPermissionRationale = false
  }) async {
    final List<String>? imeis = await _channel.invokeListMethod('getImeiMulti', { "ssrpr": shouldShowRequestPermissionRationale });
    return imeis;
  }

  // get 获取OAID/AAID，同步调用 android device @return String
  static Future<String?> getOAID({
    bool shouldShowRequestPermissionRationale = false
  }) async {
    final String? imei = await _channel.invokeMethod('getOAID', { "ssrpr": shouldShowRequestPermissionRationale });
    return imei;
  }
  // get 获取GUID，随机生成，不会为空 android device @return String
  static Future<String?> getGUID({
    bool shouldShowRequestPermissionRationale = false
  }) async {
    final String? imei = await _channel.invokeMethod('getGUID', { "ssrpr": shouldShowRequestPermissionRationale });
    return imei;
  }
  // get 获取数字版权管理ID，可能为空 android device @return String
  static Future<String?> getWidevineID({
    bool shouldShowRequestPermissionRationale = false
  }) async {
    final String? imei = await _channel.invokeMethod('getWidevineID', { "ssrpr": shouldShowRequestPermissionRationale });
    return imei;
  }
  // get 获取伪造ID，根据硬件信息生成，不会为空，有大概率会重复 android device @return String
  static Future<String?> getPseudoID({
    bool shouldShowRequestPermissionRationale = false
  }) async {
    final String? imei = await _channel.invokeMethod('getPseudoID', { "ssrpr": shouldShowRequestPermissionRationale });
    return imei;
  }

  static Future<String?> getId() async {
    return await _channel.invokeMethod('getId');
  }
  
}
