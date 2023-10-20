import 'dart:io';

import 'package:blockbd/controller/post_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class Createpost extends StatelessWidget {
  Createpost({super.key});
  PostController controller = Get.put(PostController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => Column(
            children: [
              CircleAvatar(
                radius: 40,
                backgroundImage: controller.imagePahth.isNotEmpty
                    ? FileImage(File(controller.imagePahth.toString()))
                    : null,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                      onPressed: () {
                        controller.getImage(ImageSource.camera);
                      },
                      child: Text("camera")),
                  const SizedBox(
                    width: 20,
                  ),
                  TextButton(
                      onPressed: () {
                        controller.getImage(ImageSource.gallery);
                      },
                      child: Text("Gallery")),
                ],
              ),
            ],
          )),
    );
  }
}
