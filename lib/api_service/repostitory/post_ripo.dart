import 'dart:io';

import 'package:blockbd/api_service/url.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class PostRipo extends GetConnect {
  //String url = "https://suman.thakbe.xyz/api/posts";
  Future<Response?> postData(
      {required XFile? image, required String text}) async {
    try {
      if (image == null) {
        return null;
      }
      var headers = {
        'Authorization': 'Bearer 113|n8cXqS8EnOklywgULPFH2Nz3u5SAGuUftNQ1D6a9'
      };
      var body = FormData({
        "body": text,
        "image": MultipartFile(File(image.path),
            filename: image.path.split("/").last)
      });

      final res = await post(getallpost, body, headers: headers);
      return res;
    } on Exception catch (error) {
      print("post data  error  =========>$error");
    }
  }
}
