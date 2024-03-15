class DetailModel {
  List<Results>? results;
  String? next;

  DetailModel({this.results, this.next});

  DetailModel.fromJson(Map<String, dynamic> json) {
    if (json['results'] != null) {
      results = <Results>[];
      json['results'].forEach((v) {
        results!.add(new Results.fromJson(v));
      });
    }
    next = json['next'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.results != null) {
      data['results'] = this.results!.map((v) => v.toJson()).toList();
    }
    data['next'] = this.next;
    return data;
  }
}

class Results {
  String? id;
  String? title;
  MediaFormats? mediaFormats;
  double? created;
  String? contentDescription;
  String? itemurl;
  String? url;
  List<String>? tags;
  List<String>? flags;
  bool? hasaudio;

  Results(
      {this.id,
      this.title,
      this.mediaFormats,
      this.created,
      this.contentDescription,
      this.itemurl,
      this.url,
      this.tags,
      this.flags,
      this.hasaudio});

  Results.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    mediaFormats = json['media_formats'] != null
        ? new MediaFormats.fromJson(json['media_formats'])
        : null;
    created = json['created'];
    contentDescription = json['content_description'];
    itemurl = json['itemurl'];
    url = json['url'];
    tags = json['tags'].cast<String>();
    flags = json['flags'].cast<String>();
    hasaudio = json['hasaudio'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    if (this.mediaFormats != null) {
      data['media_formats'] = this.mediaFormats!.toJson();
    }
    data['created'] = this.created;
    data['content_description'] = this.contentDescription;
    data['itemurl'] = this.itemurl;
    data['url'] = this.url;
    data['tags'] = this.tags;
    data['flags'] = this.flags;
    data['hasaudio'] = this.hasaudio;
    return data;
  }
}

class MediaFormats {
  Nanogif? nanogif;
  Nanogif? gif;
  Nanogif? mediumgif;
  Nanogif? nanowebm;
  Nanogif? webm;
  Nanogif? mp4;
  Nanogif? tinywebm;
  Nanogif? loopedmp4;
  Nanogif? gifpreview;
  Nanogif? nanomp4;
  Nanogif? nanogifpreview;
  Nanogif? tinymp4;
  Nanogif? tinygif;
  Nanogif? tinygifpreview;

  MediaFormats(
      {this.nanogif,
      this.gif,
      this.mediumgif,
      this.nanowebm,
      this.webm,
      this.mp4,
      this.tinywebm,
      this.loopedmp4,
      this.gifpreview,
      this.nanomp4,
      this.nanogifpreview,
      this.tinymp4,
      this.tinygif,
      this.tinygifpreview});

  MediaFormats.fromJson(Map<String, dynamic> json) {
    nanogif =
        json['nanogif'] != null ? new Nanogif.fromJson(json['nanogif']) : null;
    gif = json['gif'] != null ? new Nanogif.fromJson(json['gif']) : null;
    mediumgif = json['mediumgif'] != null
        ? new Nanogif.fromJson(json['mediumgif'])
        : null;
    nanowebm = json['nanowebm'] != null
        ? new Nanogif.fromJson(json['nanowebm'])
        : null;
    webm = json['webm'] != null ? new Nanogif.fromJson(json['webm']) : null;
    mp4 = json['mp4'] != null ? new Nanogif.fromJson(json['mp4']) : null;
    tinywebm = json['tinywebm'] != null
        ? new Nanogif.fromJson(json['tinywebm'])
        : null;
    loopedmp4 = json['loopedmp4'] != null
        ? new Nanogif.fromJson(json['loopedmp4'])
        : null;
    gifpreview = json['gifpreview'] != null
        ? new Nanogif.fromJson(json['gifpreview'])
        : null;
    nanomp4 =
        json['nanomp4'] != null ? new Nanogif.fromJson(json['nanomp4']) : null;
    nanogifpreview = json['nanogifpreview'] != null
        ? new Nanogif.fromJson(json['nanogifpreview'])
        : null;
    tinymp4 =
        json['tinymp4'] != null ? new Nanogif.fromJson(json['tinymp4']) : null;
    tinygif =
        json['tinygif'] != null ? new Nanogif.fromJson(json['tinygif']) : null;
    tinygifpreview = json['tinygifpreview'] != null
        ? new Nanogif.fromJson(json['tinygifpreview'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.nanogif != null) {
      data['nanogif'] = this.nanogif!.toJson();
    }
    if (this.gif != null) {
      data['gif'] = this.gif!.toJson();
    }
    if (this.mediumgif != null) {
      data['mediumgif'] = this.mediumgif!.toJson();
    }
    if (this.nanowebm != null) {
      data['nanowebm'] = this.nanowebm!.toJson();
    }
    if (this.webm != null) {
      data['webm'] = this.webm!.toJson();
    }
    if (this.mp4 != null) {
      data['mp4'] = this.mp4!.toJson();
    }
    if (this.tinywebm != null) {
      data['tinywebm'] = this.tinywebm!.toJson();
    }
    if (this.loopedmp4 != null) {
      data['loopedmp4'] = this.loopedmp4!.toJson();
    }
    if (this.gifpreview != null) {
      data['gifpreview'] = this.gifpreview!.toJson();
    }
    if (this.nanomp4 != null) {
      data['nanomp4'] = this.nanomp4!.toJson();
    }
    if (this.nanogifpreview != null) {
      data['nanogifpreview'] = this.nanogifpreview!.toJson();
    }
    if (this.tinymp4 != null) {
      data['tinymp4'] = this.tinymp4!.toJson();
    }
    if (this.tinygif != null) {
      data['tinygif'] = this.tinygif!.toJson();
    }
    if (this.tinygifpreview != null) {
      data['tinygifpreview'] = this.tinygifpreview!.toJson();
    }
    return data;
  }
}

class Nanogif {
  String? url;
  double? duration;
  String? preview;
  List<int>? dims;
  int? size;

  Nanogif({this.url, this.duration, this.preview, this.dims, this.size});

  Nanogif.fromJson(Map<String, dynamic> json) {
    url = json['url'];
    duration = double.parse(json['duration'].toString());
    preview = json['preview'];
    dims = json['dims'].cast<int>();
    size = json['size'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['url'] = this.url;
    data['duration'] = this.duration;
    data['preview'] = this.preview;
    data['dims'] = this.dims;
    data['size'] = this.size;
    return data;
  }
}
