import 'package:blockbd/screen/login/registerscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../controller/logincontroller.dart';

class Loginscreen extends StatelessWidget {
  Loginscreen({super.key});
  Logincontroller controller = Get.put(Logincontroller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: Color(0xFFFF79182),
        body: Padding(
      padding: const EdgeInsets.all(15.0),
      child: Form(
          child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 50.h,
            ),
            // Text("Sign Up",),

            SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                boxShadow: [BoxShadow(color: Colors.white, blurRadius: 10)],
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: TextFormField(
                controller: controller.emailcontroller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      // borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(20)),
                  hintText: "Email",
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Container(
              decoration: BoxDecoration(
                boxShadow: [BoxShadow(color: Colors.white, blurRadius: 10)],
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: TextFormField(
                controller: controller.passwordcontroller,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.visibility_off_outlined)),
                  border: OutlineInputBorder(
                      //borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(20)),
                  hintText: "password",
                ),
              ),
            ),

            SizedBox(
              height: 10.h,
            ),

            SizedBox(
              height: 15.h,
            ),
            InkWell(
              onTap: () {
                controller.loginapi();
                print("inkwell");
              },
              child: Container(
                width: 120.w,
                height: 40.h,
                decoration: BoxDecoration(
                  color: Colors.teal[300],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                    child: Text("Login",
                        style:
                            TextStyle(color: Colors.white, fontSize: 24.sp))),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                    onPressed: () {},
                    child: Text("Forget password ?",
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 18.sp,
                        ))),
                TextButton(
                  onPressed: () {
                    Get.to(Registerscreen());
                  },
                  child: Text("SignUp",
                      style: TextStyle(
                        color: Colors.teal[400],
                        fontSize: 18.sp,
                      )),
                ),
              ],
            )
          ],
        ),
      )),
    ));
  }
}
