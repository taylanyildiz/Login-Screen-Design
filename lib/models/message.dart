class Message {
  Message({
    this.id,
    this.senderId,
    this.roomId,
    this.isDeleted,
    this.createdAt,
    this.updatedAt,
  });

  int? id;
  int? senderId;
  int? roomId;
  bool? isDeleted;
  DateTime? updatedAt;
  DateTime? createdAt;

  factory Message.fromJson(Map<String, dynamic> json) {
    return Message(
      id: json['id'],
      senderId: json['senderId'],
      roomId: json['roomId'],
      isDeleted: json['isDeleted'],
      updatedAt: json['updatedAt'],
      createdAt: json['createdAt'],
    );
  }

  Map<String, dynamic> toJson() => {};
}
