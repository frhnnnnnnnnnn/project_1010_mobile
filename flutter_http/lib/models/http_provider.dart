import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HttpProvider with ChangeNotifier {
  Map<String, dynamic> _data = {};

  Map<String, dynamic> get data => _data;

  int get jumlahData => _data.length;

  Future<void> connectAPI(String name, String job) async {
    try {
      Uri url = Uri.parse("https://reqres.in/api/users");

      final response = await http.post(
        url,
        body: {
          "name": name,
          "job": job,
        },
      );

      if (response.statusCode == 201 || response.statusCode == 200) {
        _data = json.decode(response.body);
        notifyListeners();
      } else {
        throw Exception('Gagal mengirim data');
      }
    } catch (e) {
      print("Error: $e");
      // Handle error sesuai kebutuhan
    }
  }
} 