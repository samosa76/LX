class RestaurantModel {
  List<Restaurant>? restaurants;

  RestaurantModel({this.restaurants});

  RestaurantModel.fromJson(Map<String, dynamic> json) {
    if (json['categories'] != null) {
      restaurants = <Restaurant>[];
      json['categories'].forEach((v) {
        restaurants!.add(Restaurant.fromJson(v));
      });
    }
  }
}

class Restaurant {
  String? id;
  String? name;
  String? description;
  String? pictureId;

  Restaurant({
    this.id,
    this.name,
    this.description,
    this.pictureId,
  });

  Restaurant.fromJson(Map<String, dynamic> json) {
    id = json['idCategory'];
    name = json['strCategory'];
    description = json['strCategoryDescription'];
    pictureId = json['strCategoryThumb'];
  }
}
