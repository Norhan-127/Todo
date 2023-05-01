class Task {
  String id;
  String title;
  String description;
  int date;
  bool isDone;

  Task(
      {this.id = '',
      required this.title,
      required this.description,
      required this.date,
      this.isDone = false});
}
