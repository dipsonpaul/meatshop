class singleproduct {
  String? status;
  String? notificationCount;
  String? cartCount;
  Data? data;

  singleproduct(
      {this.status, this.notificationCount, this.cartCount, this.data});

  singleproduct.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    notificationCount = json['notification_count'];
    cartCount = json['cart_count'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['notification_count'] = this.notificationCount;
    data['cart_count'] = this.cartCount;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  String? name;
  String? productPrice;
  String? combo;
  String? discountPrice;
  String? requiredQuantity;
  String? availableQuantity;
  String? weight;
  String? wishlistStatus;
  String? minimum;
  String? stockStatus;
  List<String>? images;
  String? description;
  List<RelatedProducts>? relatedProducts;
  String? wholePrice;
  FishCuts? fishCuts;

  Data(
      {this.name,
      this.productPrice,
      this.combo,
      this.discountPrice,
      this.requiredQuantity,
      this.availableQuantity,
      this.weight,
      this.wishlistStatus,
      this.minimum,
      this.stockStatus,
      this.images,
      this.description,
      this.relatedProducts,
      this.wholePrice,
      this.fishCuts});

  Data.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    productPrice = json['product_price'];
    combo = json['combo'];
    discountPrice = json['discount_price'];
    requiredQuantity = json['required_quantity'];
    availableQuantity = json['available_quantity'];
    weight = json['weight'];
    wishlistStatus = json['wishlist_status'];
    minimum = json['minimum'];
    stockStatus = json['stock_status'];
    images = json['images'].cast<String>();
    description = json['description'];
    if (json['related_products'] != null) {
      relatedProducts = <RelatedProducts>[];
      json['related_products'].forEach((v) {
        relatedProducts!.add(new RelatedProducts.fromJson(v));
      });
    }
    wholePrice = json['whole_price'];
    fishCuts = json['fish_cuts'] != null
        ? new FishCuts.fromJson(json['fish_cuts'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['product_price'] = this.productPrice;
    data['combo'] = this.combo;
    data['discount_price'] = this.discountPrice;
    data['required_quantity'] = this.requiredQuantity;
    data['available_quantity'] = this.availableQuantity;
    data['weight'] = this.weight;
    data['wishlist_status'] = this.wishlistStatus;
    data['minimum'] = this.minimum;
    data['stock_status'] = this.stockStatus;
    data['images'] = this.images;
    data['description'] = this.description;
    if (this.relatedProducts != null) {
      data['related_products'] =
          this.relatedProducts!.map((v) => v.toJson()).toList();
    }
    data['whole_price'] = this.wholePrice;
    if (this.fishCuts != null) {
      data['fish_cuts'] = this.fishCuts!.toJson();
    }
    return data;
  }
}

class RelatedProducts {
  String? productId;
  String? thumb;
  String? weightClass;
  String? name;
  String? discountPrice;
  String? description;
  String? price;
  String? stockStatusId;
  String? stockStatus;
  String? minimum;
  int? rating;

  RelatedProducts(
      {this.productId,
      this.thumb,
      this.weightClass,
      this.name,
      this.discountPrice,
      this.description,
      this.price,
      this.stockStatusId,
      this.stockStatus,
      this.minimum,
      this.rating});

  RelatedProducts.fromJson(Map<String, dynamic> json) {
    productId = json['product_id'];
    thumb = json['thumb'];
    weightClass = json['weight_class'];
    name = json['name'];
    discountPrice = json['discount_price'];
    description = json['description'];
    price = json['price'];
    stockStatusId = json['stock_status_id'];
    stockStatus = json['stock_status'];
    minimum = json['minimum'];
    rating = json['rating'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['product_id'] = this.productId;
    data['thumb'] = this.thumb;
    data['weight_class'] = this.weightClass;
    data['name'] = this.name;
    data['discount_price'] = this.discountPrice;
    data['description'] = this.description;
    data['price'] = this.price;
    data['stock_status_id'] = this.stockStatusId;
    data['stock_status'] = this.stockStatus;
    data['minimum'] = this.minimum;
    data['rating'] = this.rating;
    return data;
  }
}

class FishCuts {
  List<Meat>? meat;
  List<Null>? whole;

  FishCuts({this.meat, this.whole});

  FishCuts.fromJson(Map<String, dynamic> json) {
    if (json['meat'] != null) {
      meat = <Meat>[];
      json['meat'].forEach((v) {
        meat!.add(new Meat.fromJson(v));
      });
    }
    // if (json['whole'] != null) {
    //   whole = <Null>[];
    //   json['whole'].forEach((v) {
    //     whole!.add(new Null.fromJson(v));
    //   });
    // }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.meat != null) {
      data['meat'] = this.meat!.map((v) => v.toJson()).toList();
    }
    // if (this.whole != null) {
    //   data['whole'] = this.whole!.map((v) => v.toJson()).toList();
    // }
    return data;
  }
}

class Meat {
  String? id;
  String? name;
  String? description;
  String? price;
  String? image;
  String? weight;
  String? category;
  String? type;

  Meat(
      {this.id,
      this.name,
      this.description,
      this.price,
      this.image,
      this.weight,
      this.category,
      this.type});

  Meat.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    description = json['description'];
    price = json['price'];
    image = json['image'];
    weight = json['weight'];
    category = json['category'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['description'] = this.description;
    data['price'] = this.price;
    data['image'] = this.image;
    data['weight'] = this.weight;
    data['category'] = this.category;
    data['type'] = this.type;
    return data;
  }
}