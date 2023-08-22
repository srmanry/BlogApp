import 'package:blockbd/controller/post_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class PostScreen extends StatelessWidget {
  Postcontroller controller = Get.put(Postcontroller());
  @override
  Widget build(BuildContext context) {
    //    File? imageFile; // File
    // final _picker = ImagePicker();
    // Future getImage() async {
    //   final pickedFile = await _picker.getImage(source: ImageSource.gallery);
    //   if(){}
    // }

    return Scaffold(
      appBar: AppBar(
        title: Text("Create a post"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            // CircleAvatar(
            //   backgroundColor: controller.imagePath.isNotEmpty?

            // ),
            Obx(
              () => Container(
                  height: 200.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1.h, color: Colors.black),
                    borderRadius: BorderRadius.circular(10.r),

                    // FileImage(File(controller, imagePath))
                  ),
                  // image: imagePath == null? null: DecorationImage(image:
                  // Image(image: FileImage(_imageFile ?? File(FileList, fileName)))
//image:  controller.Image.value.path==""?const Icon(Icons.person):Image.file(controller.Image.value);
                  child: controller.Image.value.path == ""
                      ? const Icon(Icons.person)
                      : Image.file(controller.Image.value)),
            ),
            SizedBox(
              height: 5.h,
            ),
            IconButton(
              onPressed: () {
                controller.imagePicker();
              },
              icon: Icon(
                Icons.image,
                size: 50.h,
                weight: 60.w,
              ),
            ),
            TextField(
              maxLines: 6,
              decoration: InputDecoration(hintText: "Post Body"),
            ),
            SizedBox(
              height: 20.h,
            ),
            ElevatedButton(onPressed: () {}, child: Text("Post")),
          ],
        ),
      ),
    );
  }
}
