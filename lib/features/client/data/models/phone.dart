class Phone {
  final String title;
  final String description;
  final String price;
  final String condition; // "Occasion" ou "Neuf"
  final String sellerType; // "Personne Lamda" ou "Boutique"
  final String sellerName;
  final List<String> images;
  final bool isLiked;
  final int totalLikes;

  Phone({
    required this.title,
    required this.description,
    required this.price,
    required this.condition,
    required this.sellerType,
    required this.sellerName,
    required this.images,
    this.isLiked = false,
    this.totalLikes = 0,
  });
}
