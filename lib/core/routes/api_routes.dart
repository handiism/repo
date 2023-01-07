abstract class ApiRoutesRepo {
  static const String baseUrl = 'http://34.101.216.127:3000';
  static const String login = '/user/login';
  static const String forgot = '/password-reset';
  static const String register = '/user/register';
  static const String division = '/division';
  static String user(int id) {
    return '$baseUrl/user/$id';
  }
}
