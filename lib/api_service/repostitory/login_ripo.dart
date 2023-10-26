import 'package:blockbd/api_service/repostitory/constant.dart';
import 'package:get/get.dart';

class LoginRipo extends GetConnect {
  Future<Response?> logipostData(
      {required String email, required String password}) async {
    try {
      if (email == null) {
        return null;
      }
      var loginheaders = {
        'Authorization': 'Bearer 113|n8cXqS8EnOklywgULPFH2Nz3u5SAGuUftNQ1D6a9'
      };
      var body = FormData({
        "email": password,
        "password": password,
        //filename: image.path.split("/").last)
      });

      final res = await post(loginurl, body, headers: loginheaders);
      return res;
    } on Exception catch (error) {
      print("post data  error  =========>$error");
    }
    return null;
  }
}



// import 'package:blockbd/controller/logincontroller.dart';
// import 'package:blockbd/models/login_model.dart';
// import 'package:get/get.dart' as dio;
// import 'package:get/get.dart';
// import 'package:http/http.dart';

// class LoginRepo {
//   static Future<LoginModel> loginWithEmail(
//       {required String email, required String passwoerd}) async {
//     var data = {
//       "email": email,
//       "password": passwoerd,
//     };
//     try {
//       dio.Response response =
//           await BaseClient.;
//       if (response.statusCode == 200) {
//         LoginModel loginModel = LoginModel.fromJson(response.data);
//         return loginModel;
//       } else {
//         Get.find<Logincontroller>().isLoading.value == false;
//         Get.snackbar("Error", "${response.statusMessage}");
//       }
//       throw "${response.statusCode}:${response.statusMassage}";
//     } catch (e) {
//       rethrow;
//     }
//   }
// }
