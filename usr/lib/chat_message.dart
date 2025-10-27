class ChatMessage {
  final String id;
  final String text;
  final String sender;
  final DateTime createdAt;

  ChatMessage({
    required this.id,
    required this.text,
    required this.sender,
    required this.createdAt,
  });

  factory ChatMessage.fromMap(Map<String, dynamic> map) {
    return ChatMessage(
      id: map['id'].toString(),
      text: map['text'] as String,
      sender: map['sender'] as String,
      createdAt: DateTime.parse(map['created_at'] as String),
    );
  }
}
