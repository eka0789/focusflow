import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/focus_score.dart';

class FocusScoreService {
  static const String baseUrl = 'http://localhost:8000'; // ganti dengan IP lokal atau public URL

  static Future<FocusScore?> fetchFocusScore() async {
    final response = await http.get(Uri.parse('$baseUrl/focus-score'));

    if (response.statusCode == 200) {
      return FocusScore.fromJson(jsonDecode(response.body));
    } else {
      print('Failed to load FocusScore');
      return null;
    }
  }
}
