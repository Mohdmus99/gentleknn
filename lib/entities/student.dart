class Student {
  Student(
    this._id,
    this._kfupmId,
    this._lastName,
    this._firstName,
    this._birthDay,
    this._phone,
    this._userName,
    this._clubs,
  );

  String _id;
  String _kfupmId;
  String _lastName;
  String _firstName;
  String _birthDay;
  String _phone;
  String _userName;
  List<String> _clubs;

  List<String> get clubs => _clubs;

  String get userName => _userName;

  String get phone => _phone;

  String get birthDay => _birthDay;

  String get firstName => _firstName;

  String get lastName => _lastName;

  String get kfupmId => _kfupmId;

  String get id => _id;
}
