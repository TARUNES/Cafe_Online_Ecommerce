class Product {
  // final int id;
  final String name;
  final String imageUrl;
  final String category;
  final double price;
  final double rating;
  final bool discount;
  final int discount_percentage;
  final bool sugarfree;

  Product({
    required this.sugarfree,
    // required this.id,
    required this.name,
    required this.imageUrl,
    required this.category,
    required this.price,
    required this.rating,
    required this.discount_percentage,
    required this.discount,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      // id: json['id'] as int,
      category: json['category'] as String? ?? '',
      discount: json['discount'] as bool,
      discount_percentage: json['discount_percentage'] as int,

      imageUrl: json['imageUrl'] as String? ?? '',
      name: json['name'] as String? ?? '',
      price: (json['price'] as num?)?.toDouble() ?? 0.0,
      rating: (json['rating'] as num?)?.toDouble() ?? 0.0,

      sugarfree: json['sugarfree'] as bool,
    );
  }
}
