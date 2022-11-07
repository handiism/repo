class BaseResponse<T> {
  BaseResponse({
    required this.status,
    this.message,
    required this.data,
  });

  String status;
  String? message;
  T data;

  factory BaseResponse.fromJson(
      Map<String, dynamic> json, Function(Map<String, dynamic>) build) {
    return BaseResponse<T>(
        status: json['status'],
        data: build(json['data']),
        message: json['message']);
  }
}

class BaseListResponse<T> {
  BaseListResponse({
    required this.status,
    this.message,
    required this.data,
  });

  String status;
  String? message;
  List<T> data;

  factory BaseListResponse.fromJson(
      Map<String, dynamic> json, Function(List<dynamic>) build) {
    return BaseListResponse<T>(
        status: json['status'],
        data: build(json['data']),
        message: json['message']);
  }
}
