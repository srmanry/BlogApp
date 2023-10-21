import 'package:blockbd/api_service/repostitory/post_ripo.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:get/get.dart' as dio;

class PostController extends GetxController {
  TextEditingController postbody = TextEditingController();
  // TextEditingController postbody = TextEditingController();
  var selectedImage = Rxn<XFile>();
  PostRipo postRipo = Get.put(PostRipo());

  Future<void> pickImage() async {
    final picker = ImagePicker();
    final pickedImage = await picker.pickImage(source: ImageSource.gallery);

    if (pickedImage != null) {
      selectedImage.value = pickedImage;
      print(Path);
    }
  }

  Future<void> uplodeFile() async {
    Response? res = await postRipo.postData(
        image: selectedImage.value, text: postbody.text);
    if (res?.statusCode == 200) {
      Get.snackbar("Sucess", "File Uplode");
      print(res?.body);
    } else {
      Get.snackbar("Eroor${res?.statusCode}", "");
    }
  }

  //**************  stap -2 */

  // RxString imagePahth = "".obs;
  // Future getImage(ImageSource imageSource) async {
  //   final ImagePicker _picker = ImagePicker();
  //   final image = await _picker.pickImage(source: imageSource);
  //   if (image != null) {
  //     imagePahth.value = image.path.toString();
  //   }
  // }
}
