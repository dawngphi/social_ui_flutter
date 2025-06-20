class DiscoverModelStoryNew {
  final String distance;
  final String name;
  final int age;
  final String location;
  final String imagePath;
  final String match;

  DiscoverModelStoryNew({
    required this.distance,
    required this.name,
    required this.age,
    required this.location,
    required this.imagePath,
    required this.match,
  });
}

class Interest {
  final String emoji;
  final String label;
  final bool isSelected;

  Interest({required this.emoji, required this.label, this.isSelected = false});

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
    match: "100% Match",
  ),
  DiscoverModelStoryNew(
    distance: "16 km away",
    name: "Eddie",
    age: 23,
    location: "DORTMUND",
    imagePath: "assets/images/eddie.png",
    match: "87% Match",
  ),
  DiscoverModelStoryNew(
    distance: "16 km away",
    name: "Brandon",
    age: 20,
    location: "DORTMUND",
    imagePath: "assets/images/brandon.png",
    match: "90% Match",
  ),
  DiscoverModelStoryNew(
    distance: "4,8 km away",
    name: "Vanessa",
    age: 18,
    location: "MUNICH",
    imagePath: "assets/images/vanessa.png",
    match: "99% Match",
  ),
  DiscoverModelStoryNew(
    distance: "2,2 km away",
    name: "James",
    age: 20,
    location: "HANOVER",
    imagePath: "assets/images/james.png",
    match: "80% Match",
  ),
  DiscoverModelStoryNew(
    distance: "16 km away",
    name: "Halima",
    age: 19,
    location: "BERLIN",
    imagePath: "assets/images/halima.png",
    match: "89% Match",
  ),
  DiscoverModelStoryNew(
    distance: "4,8 km away",
    name: "Vanessa",
    age: 18,
    location: "MUNICH",
    imagePath: "assets/images/vanessa.png",
    match: "98% Match",
  ),
  DiscoverModelStoryNew(
    distance: "16 km away",
    name: "Halima",
    age: 19,
    location: "BERLIN",
    imagePath: "assets/images/halima.png",
    match: "100% Match",
  ),
  DiscoverModelStoryNew(
    distance: "2,2 km away",
    name: "James",
    age: 20,
    location: "HANOVER",
    imagePath: "assets/images/james.png",
    match: "95% Match",
  ),
  DiscoverModelStoryNew(
    distance: "16 km away",
    name: "Halima",
    age: 19,
    location: "BERLIN",
    imagePath: "assets/images/halima.png",
    match: "94% Match",
  ),
  DiscoverModelStoryNew(
    distance: "4,8 km away",
    name: "Vanessa",
    age: 18,
    location: "MUNICH",
    imagePath: "assets/images/vanessa.png",
    match: "93% Match",
  ),
  DiscoverModelStoryNew(
    distance: "16 km away",
    name: "Halima",
    age: 19,
    location: "BERLIN",
    imagePath: "assets/images/halima.png",
    match: "94% Match",
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
