// To parse this JSON data, do
//
//     final florynShop = florynShopFromJson(jsonString);

import 'dart:convert';

List<FlorynShop> florynShopFromJson(String str) => List<FlorynShop>.from(json.decode(str).map((x) => FlorynShop.fromJson(x)));

String florynShopToJson(List<FlorynShop> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class FlorynShop {
    String model;
    String pk;
    Fields fields;

    FlorynShop({
        required this.model,
        required this.pk,
        required this.fields,
    });

    factory FlorynShop.fromJson(Map<String, dynamic> json) => FlorynShop(
        model: json["model"],
        pk: json["pk"],
        fields: Fields.fromJson(json["fields"]),
    );

    Map<String, dynamic> toJson() => {
        "model": model,
        "pk": pk,
        "fields": fields.toJson(),
    };
}

class Fields {
    int user;
    String name;
    String description;
    String category;
    int amount;
    int price;
    int rating;

    Fields({
        required this.user,
        required this.name,
        required this.description,
        required this.category,
        required this.amount,
        required this.price,
        required this.rating,
    });

    factory Fields.fromJson(Map<String, dynamic> json) => Fields(
        user: json["user"],
        name: json["name"],
        description: json["description"],
        category: json["category"],
        amount: json["amount"],
        price: json["price"],
        rating: json["rating"],
    );

    Map<String, dynamic> toJson() => {
        "user": user,
        "name": name,
        "description": description,
        "category": category,
        "amount": amount,
        "price": price,
        "rating": rating,
    };
}