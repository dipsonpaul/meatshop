// class Welcome {
//     String status;
//     String message;
//     String userId;
//     String firstname;
//     String lastname;
//     String email;
//     String telephone;
//     String promoCode;

//     Welcome({
//         required this.status,
//         required this.message,
//         required this.userId,
//         required this.firstname,
//         required this.lastname,
//         required this.email,
//         required this.telephone,
//         required this.promoCode,
//     });

// }


/////////////////////////////////////////////////////////
               /// home///
               
class homies {
  String? status;
  String? notificationCount;
  Data? data;

  homies({this.status, this.notificationCount, this.data});

  homies.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    notificationCount = json['notification_count'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['notification_count'] = this.notificationCount;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  String? cartCount;
  List<Banners>? banners;
  List<Categories>? categories;
  List<NewArraivals>? newArraivals;

  Data({this.cartCount, this.banners, this.categories, this.newArraivals});

  Data.fromJson(Map<String, dynamic> json) {
    cartCount = json['cart_count'];
    if (json['banners'] != null) {
      banners = <Banners>[];
      json['banners'].forEach((v) {
        banners!.add(new Banners.fromJson(v));
      });
    }
    if (json['categories'] != null) {
      categories = <Categories>[];
      json['categories'].forEach((v) {
        categories!.add(new Categories.fromJson(v));
      });
    }
    if (json['new_arraivals'] != null) {
      newArraivals = <NewArraivals>[];
      json['new_arraivals'].forEach((v) {
        newArraivals!.add(new NewArraivals.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['cart_count'] = this.cartCount;
    if (this.banners != null) {
      data['banners'] = this.banners!.map((v) => v.toJson()).toList();
    }
    if (this.categories != null) {
      data['categories'] = this.categories!.map((v) => v.toJson()).toList();
    }
    if (this.newArraivals != null) {
      data['new_arraivals'] =
          this.newArraivals!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Banners {
  String? bannerImageId;
  String? bannerId;
  String? languageId;
  String? title;
  String? link;
  String? image;
  String? sortOrder;
  String? status;
  String? bannerType;

  Banners(
      {this.bannerImageId,
      this.bannerId,
      this.languageId,
      this.title,
      this.link,
      this.image,
      this.sortOrder,
      this.status,
      this.bannerType});

  Banners.fromJson(Map<String, dynamic> json) {
    bannerImageId = json['banner_image_id'];
    bannerId = json['banner_id'];
    languageId = json['language_id'];
    title = json['title'];
    link = json['link'];
    image = json['image'];
    sortOrder = json['sort_order'];
    status = json['status'];
    bannerType = json['banner_type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['banner_image_id'] = this.bannerImageId;
    data['banner_id'] = this.bannerId;
    data['language_id'] = this.languageId;
    data['title'] = this.title;
    data['link'] = this.link;
    data['image'] = this.image;
    data['sort_order'] = this.sortOrder;
    data['status'] = this.status;
    data['banner_type'] = this.bannerType;
    return data;
  }
}

class Categories {
  String? categoryId;
  String? image;
  String? parentId;
  String? top;
  String? column;
  String? sortOrder;
  String? status;
  String? dateAdded;
  String? dateModified;
  String? languageId;
  String? name;
  String? description;
  String? metaTitle;
  String? metaDescription;
  String? metaKeyword;
  String? storeId;

  Categories(
      {this.categoryId,
      this.image,
      this.parentId,
      this.top,
      this.column,
      this.sortOrder,
      this.status,
      this.dateAdded,
      this.dateModified,
      this.languageId,
      this.name,
      this.description,
      this.metaTitle,
      this.metaDescription,
      this.metaKeyword,
      this.storeId});

  Categories.fromJson(Map<String, dynamic> json) {
    categoryId = json['category_id'];
    image = json['image'];
    parentId = json['parent_id'];
    top = json['top'];
    column = json['column'];
    sortOrder = json['sort_order'];
    status = json['status'];
    dateAdded = json['date_added'];
    dateModified = json['date_modified'];
    languageId = json['language_id'];
    name = json['name'];
    description = json['description'];
    metaTitle = json['meta_title'];
    metaDescription = json['meta_description'];
    metaKeyword = json['meta_keyword'];
    storeId = json['store_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['category_id'] = this.categoryId;
    data['image'] = this.image;
    data['parent_id'] = this.parentId;
    data['top'] = this.top;
    data['column'] = this.column;
    data['sort_order'] = this.sortOrder;
    data['status'] = this.status;
    data['date_added'] = this.dateAdded;
    data['date_modified'] = this.dateModified;
    data['language_id'] = this.languageId;
    data['name'] = this.name;
    data['description'] = this.description;
    data['meta_title'] = this.metaTitle;
    data['meta_description'] = this.metaDescription;
    data['meta_keyword'] = this.metaKeyword;
    data['store_id'] = this.storeId;
    return data;
  }
}

class NewArraivals {
  String? productId;
  String? image;
  String? weightClass;
  String? sizeText;
  String? name;
  String? discountPrice;
  String? combo;
  String? description;
  String? price;
  String? stockStatusId;
  String? stockStatus;
  String? minimum;
  int? rating;

  NewArraivals(
      {this.productId,
      this.image,
      this.weightClass,
      this.sizeText,
      this.name,
      this.discountPrice,
      this.combo,
      this.description,
      this.price,
      this.stockStatusId,
      this.stockStatus,
      this.minimum,
      this.rating});

  NewArraivals.fromJson(Map<String, dynamic> json) {
    productId = json['product_id'];
    image = json['image'];
    weightClass = json['weight_class'];
    sizeText = json['size_text'];
    name = json['name'];
    discountPrice = json['discount_price'];
    combo = json['combo'];
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
    data['image'] = this.image;
    data['weight_class'] = this.weightClass;
    data['size_text'] = this.sizeText;
    data['name'] = this.name;
    data['discount_price'] = this.discountPrice;
    data['combo'] = this.combo;
    data['description'] = this.description;
    data['price'] = this.price;
    data['stock_status_id'] = this.stockStatusId;
    data['stock_status'] = this.stockStatus;
    data['minimum'] = this.minimum;
    data['rating'] = this.rating;
    return data;
  }
}
