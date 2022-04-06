class Request {
  final int _requestId;
  final String _title;
  final String _description;

  Request(
    this._requestId,
    this._title,
    this._description,
  );

  String get description => _description;

  String get title => _title;

  int get requestId => _requestId;
}
