class UserModel {
  String? email;
  String? allergies;
  String? preferredFoods;
  String? dislikedFoods;
  bool? isVegan;
  bool? isVegetarian;
  bool? isSpicyLover;
  String? diet;

  UserModel({
    this.email,
    this.allergies,
    this.preferredFoods,
    this.dislikedFoods,
    this.isVegan,
    this.isVegetarian,
    this.isSpicyLover,
    this.diet,
  });

  // تبدیل اطلاعات به Map برای ذخیره در دیتابیس
  Map<String, dynamic> toMap() {
    return {
      'email': email,
      'allergies': allergies,
      'preferredFoods': preferredFoods,
      'dislikedFoods': dislikedFoods,
      'isVegan': isVegan,
      'isVegetarian': isVegetarian,
      'isSpicyLover': isSpicyLover,
      'diet': diet,
    };
  }

  // تبدیل Map به UserModel
  UserModel.fromMap(Map<String, dynamic> map) {
    email = map['email'];
    allergies = map['allergies'];
    preferredFoods = map['preferredFoods'];
    dislikedFoods = map['dislikedFoods'];
    isVegan = map['isVegan'];
    isVegetarian = map['isVegetarian'];
    isSpicyLover = map['isSpicyLover'];
    diet = map['diet'];
  }
}
