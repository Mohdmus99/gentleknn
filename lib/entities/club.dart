import 'package:flutter/foundation.dart';

class Club {
  String _clubName;
  String _clubID;
  String _clubLeaderId;
  String _imageUrl;
  String _clubDescription;
  int _memberCount;

  Club(
    this._clubName,
    this._imageUrl,
    this._clubID,
    this._clubLeaderId,
    this._clubDescription,
    this._memberCount,
  );

  String get clubLeaderId => _clubLeaderId;

  String get clubName => _clubName; // TODO: complete getMembers method.

  String get clubID => _clubID;

  String get imageUrl => _imageUrl;

  String get description => _clubDescription;

  int get memberCount => _memberCount;
}
