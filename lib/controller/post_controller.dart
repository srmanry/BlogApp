import 'dart:io';

import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class Postcontroller extends GetxController {
  Rx<File> Image = File("").obs;
  Future imagePicker() async {
    try {
      final imagePick =
          await ImagePicker().pickImage(source: ImageSource.gallery);
      if (imagePick == null) {
        return;
      }
      final imageTemp = File(imagePick.path);
      Image.value == imageTemp;
    } catch (e) {
      return 0;
    }
  }
}



/*
RxString imagePath = "".obs;
  Future getImage() async {
    final ImagePicker _picker = ImagePicker();
    final image = await _picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      imagePath.value = image.path.toString();
      update();
    }
  }

*/