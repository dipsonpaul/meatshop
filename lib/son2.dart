class reg {
  String? status;
  String? message;
  String? userId;
  String? firstname;
  String? lastname;
  String? email;
  String? telephone;
  String? promoCode;

  reg(
      {this.status,
      this.message,
      this.userId,
      this.firstname,
      this.lastname,
      this.email,
      this.telephone,
      this.promoCode});

  reg.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    userId = json['user_id'];
    firstname = json['firstname'];
    lastname = json['lastname'];
    email = json['email'];
    telephone = json['telephone'];
    promoCode = json['promo_code'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    data['user_id'] = this.userId;
    data['firstname'] = this.firstname;
    data['lastname'] = this.lastname;
    data['email'] = this.email;
    data['telephone'] = this.telephone;
    data['promo_code'] = this.promoCode;
    return data;
  }
}