class ActivityModel {
  final String name;
  final String action;
  final String imageUrl;
  final String timestamp;

  const ActivityModel({
    required this.name,
    required this.action,
    required this.imageUrl,
    required this.timestamp,
  });

  // Factory para traer datos de Firebase o API
  factory ActivityModel.fromJson(Map<String, dynamic> json) {
    return ActivityModel(
      name: json['name'],
      action: json['action'],
      imageUrl: json['imageUrl'],
      timestamp: json['timestamp'],
    );
  }
}
