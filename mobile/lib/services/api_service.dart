// lib/services/api_service.dart
import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/transaction.dart';

class ApiService {
  static const String baseUrl = 'http://localhost:3000';

  Future<List<Transaction>> fetchTransactions() async {
    final response = await http.get(Uri.parse('$baseUrl/transaction'));
    if (response.statusCode == 200) {
      List data = json.decode(response.body);
      return data.map((json) => Transaction.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load transactions');
    }
  }
}
