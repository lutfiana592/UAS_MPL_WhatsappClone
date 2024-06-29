class ChatModel {
  String name;
  String backgroundImageperson;
  String backgroundImagegroup;
  bool isGroup;
  String time;
  String currentMessage;
  String status;

  ChatModel({
    required this.name,
    required this.isGroup,
    required this.time,
    required this.currentMessage,
    required this.backgroundImageperson,
    required this.backgroundImagegroup,
    required this.status,
  });
}
