// lib/models/budget.dart
class Budget {
  final int id;
  final double limit;
  final String category;

  Budget({
    required this.id,
    required this.limit,
    required this.category,
  });

  factory Budget.fromJson(Map<String, dynamic> json) {
    return Budget(
      id: json['id'],
      limit: json['limit'],
      category: json['category'],
    );
  }
}
