class MatchesItemLike {
  final String titleLike;
  final int quantity;
  final String imagesIcon;
  final String imagePath;

  MatchesItemLike({
    required this.titleLike,
    required this.quantity,
    required this.imagesIcon,
    required this.imagePath,
  });
}

final List<MatchesItemLike> matchesItemLikeData = [
  MatchesItemLike(titleLike: "Likes", quantity: 32, imagesIcon: "assets/images/like_icon.png", imagePath: "assets/images/vanessa.png"),
  MatchesItemLike(titleLike: "Connect", quantity: 15, imagesIcon: "assets/images/connect_icon.png", imagePath: "assets/images/halima.png"),
];