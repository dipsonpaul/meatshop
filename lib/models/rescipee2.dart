class rec2modal {
  String? status;
  Data? data;

  rec2modal({this.status, this.data});

  rec2modal.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  Recipie? recipie;

  Data({this.recipie});

  Data.fromJson(Map<String, dynamic> json) {
    recipie =
        json['recipie'] != null ? new Recipie.fromJson(json['recipie']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.recipie != null) {
      data['recipie'] = this.recipie!.toJson();
    }
    return data;
  }
}

class Recipie {
  String? id;
  String? name;
  String? minDescription;
  String? description;
  String? ingredients;
  String? image;
  String? time;
  String? cals;
  String? dateAdded;

  Recipie(
      {this.id,
      this.name,
      this.minDescription,
      this.description,
      this.ingredients,
      this.image,
      this.time,
      this.cals,
      this.dateAdded});

  Recipie.fromJson(Map<String, dynamic> json) {
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
