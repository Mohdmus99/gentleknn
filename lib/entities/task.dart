class Task {
  Task(
    this._taskId,
    this._taskTitle,
    this._taskDescription,
    this._committeeId,
  );

  int _taskId;
  String _taskTitle;
  String _taskDescription;
  int _committeeId;

  int get committeeId => _committeeId;

  String get taskDescription => _taskDescription;

  String get taskTitle => _taskTitle;

  int get taskId => _taskId;
}
