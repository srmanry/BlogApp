import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:get/get.dart' as dio;

class PostController extends GetxController {
  //TextEditingController postbody = TextEditingController();
  // TextEditingController postbody = TextEditingController();
  // var selectedImage = Rxn<XFile>();

  // Future<void> pickImage() async {
  //   final picker = ImagePicker();
  //   final pickedImage = await picker.pickImage(source: ImageSource.gallery);

  //   if (pickedImage != null) {
  //     selectedImage.value = pickedImage;
  //     print(Path);
  //   }
  //}

  //**************  stap -2 */

  RxString imagePahth = "".obs;
  Future getImage(ImageSource imageSource) async {
    final ImagePicker _picker = ImagePicker();
    final image = await _picker.pickImage(source: imageSource);
    if (image != null) {
      imagePahth.value = image.path.toString();
    }
  }
}
