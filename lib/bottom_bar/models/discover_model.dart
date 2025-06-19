class DiscoverModelStoryNew {
  final String distance;
  final String name;
  final int age;
  final String location;
  final String imagePath;

  DiscoverModelStoryNew({
    required this.distance,
    required this.name,
    required this.age,
    required this.location,
    required this.imagePath,
  });
}

class Interest {
  final String emoji;
  final String label;
  final bool isSelected;

  Interest({
    required this.emoji,
    required this.label,
    this.isSelected = false,
  });

  Interest copyWith({bool? isSelected}) {
    return Interest(
      emoji: emoji,
      label: label,
      isSelected: isSelected ?? this.isSelected,
    );
  }
}


final List<DiscoverModelStoryNew> discoverStoryData = [
  DiscoverModelStoryNew(
    distance: "16 km away",
    name: "Halima",
    age: 19,
    location: "BERLIN",
    imagePath: "assets/images/halima.png",
  ),
  DiscoverModelStoryNew(
    distance: "4,8 km away",
    name: "Vanessa",
    age: 18,
    location: "MUNICH",
    imagePath: "assets/images/vanessa.png",
  ),
  DiscoverModelStoryNew(
    distance: "2,2 km away",
    name: "James",
    age: 20,
    location: "HANOVER",
    imagePath: "assets/images/james.png",
  ),
  DiscoverModelStoryNew(
    distance: "16 km away",
    name: "Halima",
    age: 19,
    location: "BERLIN",
    imagePath: "assets/images/halima.png",
  ),
  DiscoverModelStoryNew(
    distance: "4,8 km away",
    name: "Vanessa",
    age: 18,
    location: "MUNICH",
    imagePath: "assets/images/vanessa.png",
  ),
  DiscoverModelStoryNew(
    distance: "16 km away",
    name: "Halima",
    age: 19,
    location: "BERLIN",
    imagePath: "assets/images/halima.png",
  ),
  DiscoverModelStoryNew(
    distance: "2,2 km away",
    name: "James",
    age: 20,
    location: "HANOVER",
    imagePath: "assets/images/james.png",
  ),
  DiscoverModelStoryNew(
    distance: "16 km away",
    name: "Halima",
    age: 19,
    location: "BERLIN",
    imagePath: "assets/images/halima.png",
  ),
  DiscoverModelStoryNew(
    distance: "4,8 km away",
    name: "Vanessa",
    age: 18,
    location: "MUNICH",
    imagePath: "assets/images/vanessa.png",
  ),
  DiscoverModelStoryNew(
    distance: "16 km away",
    name: "Halima",
    age: 19,
    location: "BERLIN",
    imagePath: "assets/images/halima.png",
  ),
];

List<Interest> interests = [
  Interest(emoji: "⚽", label: "Football"),
  Interest(emoji: "🌿", label: "Nature"),
  Interest(emoji: "🗣️", label: "Language"),
  Interest(emoji: "📸", label: "Photography"),
  Interest(emoji: "🎵", label: "Music", isSelected: true),
  Interest(emoji: "✍️", label: "Writing"),
];

