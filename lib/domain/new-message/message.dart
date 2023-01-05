class Message {
  String? message;
  String? senderUsername;
  int? sentAt;

  Message({this.message, this.senderUsername, this.sentAt});

  Message.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    senderUsername = json['senderUsername'];
    sentAt = json['sentAt'];
  }

  factory Message.formJson(Map<String, dynamic> message) {
    return Message(
      message: message['message'],
      senderUsername: message['senderUsername'],
      sentAt: message['sentAt'] * 1000,
    );
  }
}
