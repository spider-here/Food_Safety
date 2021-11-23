import 'package:firebase_database/firebase_database.dart';

class quizModel{
  String id, question, option_one, option_two, option_three, option_four, correct_option;

  quizModel(this.id, this.question, this.option_one, this.option_two,
      this.option_three, this.option_four, this.correct_option);

  quizModel.fromSnapshot(DataSnapshot snapshot) : id = snapshot.key.toString(),
  question = snapshot.value["question"].toString(),
  option_one = snapshot.value["option_one"].toString(),
  option_two = snapshot.value["option_two"].toString(),
  option_three = snapshot.value["option_three"].toString(),
  option_four = snapshot.value["option_four"].toString(),
  correct_option = snapshot.value["correct_option"].toString();
}