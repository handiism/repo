class CourseResponse {
  int? id;
  String? title;
  String? description;
  String? imageThumbnail;
  String? cloudinaryId;
  String? createdAt;
  String? updatedAt;
  int? idDivision;
  int? idUser;

  CourseResponse({
    this.id,
    this.title,
    this.description,
    this.imageThumbnail,
    this.cloudinaryId,
    this.createdAt,
    this.updatedAt,
    this.idDivision,
    this.idUser,
  });

  CourseResponse.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    description = json['description'];
    imageThumbnail = json['image_thumbnail'];
    cloudinaryId = json['cloudinary_id'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    idDivision = json['id_division'];
    idUser = json['id_user'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['title'] = title;
    data['description'] = description;
    data['image_thumbnail'] = imageThumbnail;
    data['cloudinary_id'] = cloudinaryId;
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    data['id_division'] = idDivision;
    data['id_user'] = idUser;
    return data;
  }
}
