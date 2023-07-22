import 'dart:convert';

class Product {
  final String productName;
  final double price;
  final String date;
  final String location;
  final String category;
  final String autherId;
  Product({
    required this.productName,
    required this.price,
    required this.date,
    required this.location,
    required this.category,
    required this.autherId,
  });

  Product copyWith({
    String? productName,
    double? price,
    String? date,
    String? location,
    String? category,
    String? autherId,
  }) {
    return Product(
      productName: productName ?? this.productName,
      price: price ?? this.price,
      date: date ?? this.date,
      location: location ?? this.location,
      category: category ?? this.category,
      autherId: autherId ?? this.autherId,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};
  
    result.addAll({'productName': productName});
    result.addAll({'price': price});
    result.addAll({'date': date});
    result.addAll({'location': location});
    result.addAll({'category': category});
    result.addAll({'autherId': autherId});
  
    return result;
  }

  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      productName: map['productName'] ?? '',
      price: map['price']?.toDouble() ?? 0.0,
      date: map['date'] ?? '',
      location: map['location'] ?? '',
      category: map['category'] ?? '',
      autherId: map['autherId'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Product.fromJson(String source) => Product.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Product(productName: $productName, price: $price, date: $date, location: $location, category: $category, autherId: $autherId)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is Product &&
      other.productName == productName &&
      other.price == price &&
      other.date == date &&
      other.location == location &&
      other.category == category &&
      other.autherId == autherId;
  }

  @override
  int get hashCode {
    return productName.hashCode ^
      price.hashCode ^
      date.hashCode ^
      location.hashCode ^
      category.hashCode ^
      autherId.hashCode;
  }
}
