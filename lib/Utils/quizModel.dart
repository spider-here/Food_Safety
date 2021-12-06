import 'package:firebase_database/firebase_database.dart';

class quizModel{
  String id, question, option_one, option_two, option_three, correct_answer, feedback;

  quizModel(this.id, this.question, this.option_one, this.option_two,
      this.option_three, this.correct_answer, this.feedback);

  quizModel.fromSnapshot(DataSnapshot snapshot) : id = snapshot.key.toString(),
  question = snapshot.value["question"].toString(),
  option_one = snapshot.value["option_one"].toString(),
  option_two = snapshot.value["option_two"].toString(),
  option_three = snapshot.value["option_three"].toString(),
  correct_answer = snapshot.value["correct_answer"].toString(),
  feedback = snapshot.value["feedback"].toString();
}