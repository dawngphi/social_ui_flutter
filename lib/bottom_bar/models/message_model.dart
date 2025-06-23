class MessageModel {
  final String imagePath;
  final String name;
  final String time;
  final String message;
  final bool readMessage;

  MessageModel({
    required this.imagePath,
    required this.name,
    required this.time,
    required this.message,
    required this.readMessage,
  });
}
final List<MessageModel> messageData = [
  MessageModel(imagePath: "assets/images/alfredo.png", name: "Alfredo Calzoni", time: "9:18", message: "What about that new jacket if I ...", readMessage: false),
  MessageModel(imagePath: "assets/images/clara.png", name: "Clara Hazel", time: "12:44", message: "I know right 😉", readMessage: false),
  MessageModel(imagePath: "assets/images/fabian.png", name: "Brandon Aminoff", time: "08:06", message: "I’ve already registered, can’t wai...", readMessage: false),
  MessageModel(imagePath: "assets/images/selena.png", name: "Amina Mina", time: "09:32", message: "It will have two lines of heading ...", readMessage: true),
  MessageModel(imagePath: "assets/images/alfredo.png", name: "Alfredo Calzoni", time: "9:18", message: "What about that new jacket if I ...", readMessage: true),
  MessageModel(imagePath: "assets/images/clara.png", name: "Clara Hazel", time: "12:44", message: "I know right 😉", readMessage: true),
  MessageModel(imagePath: "assets/images/fabian.png", name: "Brandon Aminoff", time: "08:06", message: "I’ve already registered, can’t wai...", readMessage: true),
  MessageModel(imagePath: "assets/images/selena.png", name: "Amina Mina", time: "09:32", message: "It will have two lines of heading ...", readMessage: false),
  MessageModel(imagePath: "assets/images/alfredo.png", name: "Alfredo Calzoni", time: "9:18", message: "What about that new jacket if I ...", readMessage: false),
  MessageModel(imagePath: "assets/images/clara.png", name: "Clara Hazel", time: "12:44", message: "I know right 😉", readMessage: true),
  MessageModel(imagePath: "assets/images/fabian.png", name: "Brandon Aminoff", time: "08:06", message: "I’ve already registered, can’t wai...", readMessage: false),
  MessageModel(imagePath: "assets/images/selena.png", name: "Amina Mina", time: "09:32", message: "It will have two lines of heading ...", readMessage: true),
];