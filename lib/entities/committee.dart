class Committee {
  Committee(
    this._committeeId,
    this._clubId,
    this._committeeName,
    this._committeeDescription,
    this._memberCount,
  );

  int _committeeId;
  int _clubId;
  int _memberCount;
  String _committeeName;
  String _committeeDescription;

  int get memberCount => _memberCount;

  set memberCount(int value) {
    _memberCount = value;
  }

  set committeeDescription(String value) {
    _committeeDescription = value;
  }

  set committeeName(String value) {
    _committeeName = value;
  }

  set clubId(int value) {
    _clubId = value;
  }

  set committeeId(int value) {
    _committeeId = value;
  }

  String get committeeDescription => _committeeDescription;

  String get committeeName => _committeeName;

  int get clubId => _clubId;

  int get committeeId => _committeeId;
}
