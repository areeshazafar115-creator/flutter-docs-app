import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  // While testing locally:
  // - Android emulator: use http://10.0.2.2:8000 (special alias for host machine)
  // - iOS simulator / Chrome: use http://localhost:8000
  // - Real phone on same wifi: use http://<your-computer-local-ip>:8000
  //
  // After deploying the backend (Render, etc.), replace this with the
  // live URL, e.g. https://your-app.onrender.com
  static const String baseUrl = 'https://areesha-06-flutter-docs-api.hf.space';
  static Future<Map<String, dynamic>> askQuestion(String question) async {
    final response = await http.post(
      Uri.parse('$baseUrl/query'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({'question': question}),
    );

    if (response.statusCode != 200) {
      throw Exception('Server error: ${response.statusCode}');
    }

    return jsonDecode(response.body) as Map<String, dynamic>;
  }
}
