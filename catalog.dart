import 'dart:convert';


class CatalogModels {
  static List<dynamic> Item = [
    item(
      id: 1,
      name: "iphon 12 pro",
      desc: "Apple iphon 12th pro max",
      price: 999,
      color: "#33505a",
      image: "assets/images/b.jpg",
    )
  ];
}

class item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  item({
    required this.id,
    required this.name,
    required this.desc,
    required this.price,
    required this.color,
    required this.image,
  });

  item copyWith({
    int? id,
    String? name,
    String? desc,
    num? price,
    String? color,
    String? image,
  }) {
    return item(
      id: id ?? this.id,
      name: name ?? this.name,
      desc: desc ?? this.desc,
      price: price ?? this.price,
      color: color ?? this.color,
      image: image ?? this.image,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};
  
    result.addAll({'id': id});
    result.addAll({'name': name});
    result.addAll({'desc': desc});
    result.addAll({'price': price});
    result.addAll({'color': color});
    result.addAll({'image': image});
  
    return result;
  }

  factory item.fromMap(Map<String, dynamic> map) {
    return item(
      id: map['id']?.toInt() ?? 0,
      name: map['name'] ?? '',
      desc: map['desc'] ?? '',
      price: map['price'] ?? 0,
      color: map['color'] ?? '',
      image: map['image'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory item.fromJson(String source) => item.fromMap(json.decode(source));

  @override
  String toString() {
    return 'item(id: $id, name: $name, desc: $desc, price: $price, color: $color, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is item &&
        other.id == id &&
        other.name == name &&
        other.desc == desc &&
        other.price == price &&
        other.color == color &&
        other.image == image;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        desc.hashCode ^
        price.hashCode ^
        color.hashCode ^
        image.hashCode;
  }
}
