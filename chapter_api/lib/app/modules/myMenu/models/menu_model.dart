class MenuModel {
  List<Menu>? menu;

  MenuModel({this.menu});

  MenuModel.fromJson(Map<String, dynamic> json) {
    if (json['meals'] != null) {
      menu = <Menu>[];
      json['meals'].forEach((v) {
        menu!.add(Menu.fromJson(v));
      });
    }
  }
}

class Menu {
  String? id;
  String? name;
  String? pictureId;

  Menu({
    this.id,
    this.name,
    this.pictureId,
  });

  Menu.fromJson(Map<String, dynamic> json) {
    id = json['idMeal'];
    name = json['strMeal'];
    pictureId = json['strMealThumb'];
  }
}
