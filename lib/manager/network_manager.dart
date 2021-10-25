import 'dart:convert';

import 'package:basecoin/models/assets/assets.dart';
import 'package:flutter/services.dart';

class NetworkManager {
  static final NetworkManager _singleton = NetworkManager._();

  static NetworkManager get instance => _singleton;

  NetworkManager._();

  Future<Assets> getAssets() async {
    final data = await rootBundle.loadString('assets/data/assets.json');

    final assets = Assets.fromJson(json.decode(data));

    return assets;
  }
}