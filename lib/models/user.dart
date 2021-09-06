import 'message.dart';

class User {
  User({
    this.id,
    this.name,
    this.phone,
    this.isDeleted,
    this.smsCode,
    this.messages,
    this.updatedAt,
    this.createdAt,
  });

  int? id;
  String? name;
  String? phone;
  bool? isDeleted;
  String? smsCode;
  List<Message>? messages;
  DateTime? updatedAt;
  DateTime? createdAt;

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      name: json['name'],
      phone: json['phone'],
      isDeleted: json['isDeleted'],
      smsCode: json['smsCode'],
      updatedAt: DateTime.parse(json['updatedAt'] ?? DateTime.now().toString()),
      createdAt: DateTime.parse(json['createdAt'] ?? DateTime.now().toString()),
    );
  }

  Map<String, dynamic> toJsonDb() => {
        'name': name,
        'phone': phone,
      };
}
