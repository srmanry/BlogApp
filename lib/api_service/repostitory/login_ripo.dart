
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
