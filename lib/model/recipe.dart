import 'dart:convert';

class Recipe {
  int? id;
  String? title;
  String? description;
  int? calories;

  Recipe({this.id, this.title, this.description, this.calories});

  Recipe.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    description = json['description'];
    calories = json['calories'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['description'] = this.description;
    data['calories'] = this.calories;
    return data;
  }
}

