class DetailModel {
  List<Results>? results;
  String? next;

  DetailModel({this.results, this.next});

  DetailModel.fromJson(Map<String, dynamic> json) {
    if (json['results'] != null) {
      results = <Results>[];
      json['results'].forEach((v) {
        results!.add(Results.fromJson(v));
      });
    }
    next = json['next'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (results != null) {
      data['results'] = results!.map((v) => v.toJson()).toList();
    }
    data['next'] = next;
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
        ? MediaFormats.fromJson(json['media_formats'])
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
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['title'] = title;
    if (mediaFormats != null) {
      data['media_formats'] = mediaFormats!.toJson();
    }
    data['created'] = created;
    data['content_description'] = contentDescription;
    data['itemurl'] = itemurl;
    data['url'] = url;
    data['tags'] = tags;
    data['flags'] = flags;
    data['hasaudio'] = hasaudio;
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
        json['nanogif'] != null ? Nanogif.fromJson(json['nanogif']) : null;
    gif = json['gif'] != null ? Nanogif.fromJson(json['gif']) : null;
    mediumgif = json['mediumgif'] != null
        ? Nanogif.fromJson(json['mediumgif'])
        : null;
    nanowebm = json['nanowebm'] != null
        ? Nanogif.fromJson(json['nanowebm'])
        : null;
    webm = json['webm'] != null ? Nanogif.fromJson(json['webm']) : null;
    mp4 = json['mp4'] != null ? Nanogif.fromJson(json['mp4']) : null;
    tinywebm = json['tinywebm'] != null
        ? Nanogif.fromJson(json['tinywebm'])
        : null;
    loopedmp4 = json['loopedmp4'] != null
        ? Nanogif.fromJson(json['loopedmp4'])
        : null;
    gifpreview = json['gifpreview'] != null
        ? Nanogif.fromJson(json['gifpreview'])
        : null;
    nanomp4 =
        json['nanomp4'] != null ? Nanogif.fromJson(json['nanomp4']) : null;
    nanogifpreview = json['nanogifpreview'] != null
        ? Nanogif.fromJson(json['nanogifpreview'])
        : null;
    tinymp4 =
        json['tinymp4'] != null ? Nanogif.fromJson(json['tinymp4']) : null;
    tinygif =
        json['tinygif'] != null ? Nanogif.fromJson(json['tinygif']) : null;
    tinygifpreview = json['tinygifpreview'] != null
        ? Nanogif.fromJson(json['tinygifpreview'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (nanogif != null) {
      data['nanogif'] = nanogif!.toJson();
    }
    if (gif != null) {
      data['gif'] = gif!.toJson();
    }
    if (mediumgif != null) {
      data['mediumgif'] = mediumgif!.toJson();
    }
    if (nanowebm != null) {
      data['nanowebm'] = nanowebm!.toJson();
    }
    if (webm != null) {
      data['webm'] = webm!.toJson();
    }
    if (mp4 != null) {
      data['mp4'] = mp4!.toJson();
    }
    if (tinywebm != null) {
      data['tinywebm'] = tinywebm!.toJson();
    }
    if (loopedmp4 != null) {
      data['loopedmp4'] = loopedmp4!.toJson();
    }
    if (gifpreview != null) {
      data['gifpreview'] = gifpreview!.toJson();
    }
    if (nanomp4 != null) {
      data['nanomp4'] = nanomp4!.toJson();
    }
    if (nanogifpreview != null) {
      data['nanogifpreview'] = nanogifpreview!.toJson();
    }
    if (tinymp4 != null) {
      data['tinymp4'] = tinymp4!.toJson();
    }
    if (tinygif != null) {
      data['tinygif'] = tinygif!.toJson();
    }
    if (tinygifpreview != null) {
      data['tinygifpreview'] = tinygifpreview!.toJson();
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
    final Map<String, dynamic> data = <String, dynamic>{};
    data['url'] = url;
    data['duration'] = duration;
    data['preview'] = preview;
    data['dims'] = dims;
    data['size'] = size;
    return data;
  }
}
