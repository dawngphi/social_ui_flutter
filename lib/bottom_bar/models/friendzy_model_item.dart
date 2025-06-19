// lib/models/story_item.dart
class StoryDataItem {
  final String name;
  final String imagePath;

  StoryDataItem({
    required this.name,
    required this.imagePath,
  });
}


class FriendzyModelItemNews {
  final String title;
  final String imagePath;
  final String name;
  final String location;

  FriendzyModelItemNews({required this.title, required this.imagePath, required this.name, required this.location});
}
