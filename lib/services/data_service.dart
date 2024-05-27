// lib/services/data_service.dart

import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;
import 'package:testtask/models/data_point.dart';

class DataService {
  Future<List<DataPoint>> loadLocalData() async {
    final String response = await rootBundle.loadString('data/1.json');
    final data = await json.decode(response);
    List jsonResponse = data['parameters'];
    return jsonResponse.map((data) => DataPoint.fromJson(data)).toList();
  }
}
