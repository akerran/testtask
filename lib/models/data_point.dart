// lib/models/data_point.dart

class DataPoint {
  final double flexex;
  final double raduln;

  DataPoint({required this.flexex, required this.raduln});

  factory DataPoint.fromJson(Map<String, dynamic> json) {
    return DataPoint(
      flexex: json['HFA_crWrFlexEx/values'].toDouble(),
      raduln: json['HFA_crWrRadUln/values'].toDouble(),
    );
  }
}