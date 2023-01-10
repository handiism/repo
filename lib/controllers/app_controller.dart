import 'package:get/get.dart';
import 'package:repo/models/course/course_model.dart';
import 'package:repo/services/course_service.dart';

class AppController extends GetxController {
  CourseService courseService = CourseService();
  final allCourseList = <CourseResponse>[].obs;

  Future<List<CourseResponse>> fetchAllCourse() async {
    try {
      final allCourse = await courseService.getAllCourse();
      if (allCourse.isNotEmpty) {
        allCourseList.assignAll(allCourse);
      }
      return allCourseList;
    } catch (e) {
      throw Exception(e);
    }
  }
}
