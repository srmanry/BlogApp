import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../controller/post_controller.dart';

class Postscreen extends StatelessWidget {
  final ImagePickerController _imagePickerController =
      Get.put(ImagePickerController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Create Post"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                SizedBox(
                  height: 0.h,
                ),
                Obx(() {
                  final selectedImage =
                      _imagePickerController.selectedImage.value;
                  return selectedImage != null
                      ? Container(
                          height: 200.h,
                          width: double.infinity,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            //clipBehavior: Clip.none,
                            child: Image.file(
                              File(selectedImage.path) as File,
                              fit: BoxFit.cover,
                            ),
                          ),
                        )
                      : Center(
                          child: TextButton(
                              onPressed: _imagePickerController.pickImage,
                              child: Text(" Pleas selected image ")));
                }),
                SizedBox(
                  height: 20.h,
                ),
                TextField(
                  maxLines: 10,
                  decoration: InputDecoration(
                      hintText: "Post Discription",
                      hintStyle: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontSize: 18.sp,
                        color: Colors.teal,
                      )),
                ),
                SizedBox(
                  height: 20.h,
                ),
                InkWell(
                  onTap: () {
                    print("Create Post");
                    Get.snackbar('Create the post ', "Sucess ");
                  },
                  child: Container(
                    height: 40.h,
                    width: 100.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.amber,
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Post",
                          style: TextStyle(
                            fontSize: 24.sp,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

















// import 'package:blockbd/controller/post_controller.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:get/get.dart';

// class PostScreen extends StatelessWidget {
//   Postcontroller controller = Get.put(Postcontroller());
//   @override
//   Widget build(BuildContext context) {
//     //    File? imageFile; // File
//     // final _picker = ImagePicker();
//     // Future getImage() async {
//     //   final pickedFile = await _picker.getImage(source: ImageSource.gallery);
//     //   if(){}
//     // }

//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Create a post"),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(10.0),
//         child: ListView(
//           children: [
//             // CircleAvatar(
//             //   backgroundColor: controller.imagePath.isNotEmpty?

//             // ),
//             Obx(
//               () => Container(
//                   height: 200.h,
//                   width: double.infinity,
//                   decoration: BoxDecoration(
//                     border: Border.all(width: 1.h, color: Colors.black),
//                     borderRadius: BorderRadius.circular(10.r),

//                     // FileImage(File(controller, imagePath))
//                   ),
//                   // image: imagePath == null? null: DecorationImage(image:
//                   // Image(image: FileImage(_imageFile ?? File(FileList, fileName)))
// //image:  controller.Image.value.path==""?const Icon(Icons.person):Image.file(controller.Image.value);
//                   child: controller.Image.value.path == ""
//                       ? const Icon(Icons.person)
//                       : Image.file(controller.Image.value)),
//             ),
//             SizedBox(
//               height: 5.h,
//             ),
//             IconButton(
//               onPressed: () {
//                 controller.imagePicker();
//               },
//               icon: Icon(
//                 Icons.image,
//                 size: 50.h,
//                 weight: 60.w,
//               ),
//             ),
//             TextField(
//               maxLines: 6,
//               decoration: InputDecoration(hintText: "Post Body"),
//             ),
//             SizedBox(
//               height: 20.h,
//             ),
//             ElevatedButton(onPressed: () {}, child: Text("Post")),
//           ],
//         ),
//       ),
//     );
//   }
// }
