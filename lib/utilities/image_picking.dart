import 'dart:io';

import 'package:image_picker/image_picker.dart';

//This method will return an image from the gallery.

Future imagePicking() async {
  final picker = ImagePicker();
  final pickedFile = await picker.getImage(source: ImageSource.gallery);
  return File(pickedFile!.path);
}
