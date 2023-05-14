import '../enums/types.dart';

class Question{
  String question;
  Types type;
  List<String>? options;

  Question({
    required this.question,
    required this.type,
    this.options
  });
}