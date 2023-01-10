import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:repo/core/routes/api_routes.dart';
import 'package:repo/core/routes/routes.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../models/course/course_model.dart';

class CourseService {
  Future<List<CourseResponse>> getAllCourse() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    var accesToken = sharedPreferences.getString('access-token');
    print(accesToken);
    Uri url = Uri.parse(ApiRoutesRepo.baseUrl + ApiRoutesRepo.course);
    final response = await http.get(
      url,
      headers: {
        'Content-Type': 'application/json; charset=UTF-8',
        'Authorization': 'Bearer $accesToken',
      },
    );
    if (response.statusCode == 200) {
      List data = json.decode(response.body)['data'];
      return data.map((e) => CourseResponse.fromJson(e)).toList();
    } else {
      throw Exception('Failed to load course');
    }
  }
}
