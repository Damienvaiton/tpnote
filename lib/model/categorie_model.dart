class CategorieModel {
  String? locale;
  List<Tags>? tags;

  CategorieModel({this.locale, this.tags});

  CategorieModel.fromJson(Map<String, dynamic> json) {
    locale = json['locale'];
    if (json['tags'] != null) {
      tags = <Tags>[];
      json['tags'].forEach((v) {
        tags!.add(Tags.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['locale'] = locale;
    if (tags != null) {
      data['tags'] = tags!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Tags {
  String? searchterm;
  String? path;
  String? image;
  String? name;

  Tags({this.searchterm, this.path, this.image, this.name});

  Tags.fromJson(Map<String, dynamic> json) {
    searchterm = json['searchterm'];
    path = json['path'];
    image = json['image'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['searchterm'] = searchterm;
    data['path'] = path;
    data['image'] = image;
    data['name'] = name;
    return data;
  }
}
