class recmodal {
  String? status;
  String? notificationCount;
  List<Data>? data;

  recmodal({this.status, this.notificationCount, this.data});

  recmodal.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    notificationCount = json['notification_count'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['notification_count'] = this.notificationCount;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  String? id;
  String? name;
  String? minDescription;
  String? description;
  String? ingredients;
  String? image;
  String? time;
  String? cals;
  String? dateAdded;

  Data(
      {this.id,
      this.name,
      this.minDescription,
      this.description,
      this.ingredients,
      this.image,
      this.time,
      this.cals,
      this.dateAdded});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    minDescription = json['min_description'];
    description = json['description'];
    ingredients = json['ingredients'];
    image = json['image'];
    time = json['time'];
    cals = json['cals'];
    dateAdded = json['date_added'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['min_description'] = this.minDescription;
    data['description'] = this.description;
    data['ingredients'] = this.ingredients;
    data['image'] = this.image;
    data['time'] = this.time;
    data['cals'] = this.cals;
    data['date_added'] = this.dateAdded;
    return data;
  }
}