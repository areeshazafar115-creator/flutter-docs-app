class ChatMessage {
  final String text;
  final bool isUser;
  final List<String> sources;

  ChatMessage({
    required this.text,
    required this.isUser,
    this.sources = const [],
  });
}
