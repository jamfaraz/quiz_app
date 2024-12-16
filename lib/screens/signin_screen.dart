// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:flutter_spinkit/flutter_spinkit.dart';

// import 'main_screen.dart';

// class LoginScreen extends StatefulWidget {
//   const LoginScreen({super.key});

//   @override
//   _LoginScreenState createState() => _LoginScreenState();
// }

// class _LoginScreenState extends State<LoginScreen> {
//   TextEditingController nameController = TextEditingController();
//   TextEditingController emailController = TextEditingController();
//   TextEditingController classController = TextEditingController();
//   TextEditingController phoneController = TextEditingController();
//   bool isLoading = false;
//   String errorMessage = '';

//   Future<void> loginUser() async {
//     if (nameController.text.isEmpty ||
//         emailController.text.isEmpty ||
//         classController.text.isEmpty ||
//         phoneController.text.isEmpty) {
//       Get.snackbar('Oops!', 'Please enter all Fields',
//           colorText: Colors.white, backgroundColor: Colors.green);
//       // setState(() {
//       //   errorMessage = 'All fields are required';
//       // });
//       return;
//     }

//     setState(() {
//       isLoading = true;
//       errorMessage = '';
//     });

//     try {
//       // Simulate network call
//       await Future.delayed(const Duration(seconds: 2));

//       final prefs = await SharedPreferences.getInstance();
//       prefs.setBool('isLoggedIn', true);
//       prefs.setString('name', nameController.text);
//       prefs.setString('email', emailController.text);
//       prefs.setString('phone', phoneController.text);
//       prefs.setString('class', classController.text);
//       Get.snackbar('Success!', 'Account has been created',
//           colorText: Colors.white, backgroundColor: Colors.green);

//       Navigator.pushReplacement(
//         context,
//         MaterialPageRoute(builder: (context) => const MainScreen()),
//       );
//     } catch (error) {
//       setState(() {
//         errorMessage = 'Error occurred. Please try again.';
//       });
//     } finally {
//       setState(() {
//         isLoading = false;
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       resizeToAvoidBottomInset: false,
//       body: Stack(
//         alignment: Alignment.center,
//         children: [
//           // Background Image
//           Container(
//             decoration: const BoxDecoration(
//               image: DecorationImage(
//                 image: AssetImage('assets/back.jpg'), // Add your image path
//                 fit: BoxFit.cover,
//               ),
//             ),
//           ),
//           Positioned(
//             // left: MediaQuery.of(context).size.width * .37,
//             top: 50,

//             child: Image.asset(
//               'assets/q.png',
//               height: MediaQuery.of(context).size.height * .13,
//             ),
//           ),
//           Positioned(
//             top: MediaQuery.of(context).size.height * .162,
//             child: Text(
//               'Đăng nhập',
//               style: GoogleFonts.inter(
//                 color: Colors.white,
//                 fontSize: 34,
//                 fontWeight: FontWeight.w600,
//               ),
//             ),
//           ),

//           // Foreground content
//           Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 SizedBox(
//                   height: Get.height * .144,
//                 ),
//                 if (errorMessage.isNotEmpty)
//                   Text(
//                     errorMessage,
//                     style: TextStyle(color: Colors.red),
//                   ),
//                 PrimaryTextField(
//                   controller: nameController,
//                   iconPath: 'assets/name.png',
//                   lable: 'Họ và tên',
//                 ),
//                 const SizedBox(height: 8),
//                 PrimaryTextField(
//                   controller: emailController,
//                   iconPath: 'assets/email.png',
//                   lable: 'Email',
//                 ),
//                 const SizedBox(height: 8),
//                 PrimaryTextField(
//                   controller: phoneController,
//                   iconPath: 'assets/phone.png',
//                   lable: 'Điện thoại',
//                 ),
//                 const SizedBox(height: 8),
//                 PrimaryTextField(
//                   controller: classController,
//                   iconPath: 'assets/class.png',
//                   lable: 'Lớp',
//                 ),

//                 const SizedBox(height: 66),

//                 isLoading
//                     ? const SpinKitCircle(color: Colors.blue, size: 50)
//                     : InkWell(
//                         onTap: () {
//                           loginUser();
//                         },
//                         child: Container(
//                           width: Get.width * .74,
//                           padding: const EdgeInsets.all(12),
//                           decoration: ShapeDecoration(
//                             gradient: const LinearGradient(
//                               begin: Alignment(-0.00, -1.00),
//                               end: Alignment(0, 1),
//                               colors: [Color(0xFF2CB2ED), Color(0xFF3550DC)],
//                             ),
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(50),
//                             ),
//                           ),
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               Text(
//                                 'Đăng ký',
//                                 style: GoogleFonts.inter(
//                                   color: Colors.white,
//                                   fontSize: 22,
//                                   fontWeight: FontWeight.w500,
//                                 ),
//                               )
//                             ],
//                           ),
//                         ),
//                       ),

//                 //  ElevatedButton(
//                 //     onPressed: loginUser,
//                 //     child: Text('Login'),
//                 //   ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class PrimaryTextField extends StatelessWidget {
//   final String? iconPath;
//   final String lable;
//   final TextEditingController controller;
//   const PrimaryTextField({
//     super.key,
//     this.iconPath,
//     required this.lable,
//     required this.controller,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return TextField(
//       controller: controller,
//       style: GoogleFonts.inter(
//         fontSize: 16,
//         // color: Colors.black54,
//         fontWeight: FontWeight.w400,
//       ),
//       decoration: InputDecoration(
//         prefixIcon: Image.asset(iconPath!),
//         labelText: lable,
//         labelStyle: GoogleFonts.inter(
//           color: const Color(0xFFA3A3A3),
//           fontSize: 16,
//           fontWeight: FontWeight.w500,
//         ),
//         filled: true,
//         fillColor: Colors.white.withOpacity(0.8),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'main_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController dateOfBirthController = TextEditingController();
  bool isLoading = false;
  String errorMessage = '';

  Future<void> loginUser() async {
    if (nameController.text.isEmpty ||
        emailController.text.isEmpty ||
        phoneController.text.isEmpty ||
        dateOfBirthController.text.isEmpty) {
      Get.snackbar('Oops!', 'Please enter all Fields',
          colorText: Colors.white, backgroundColor: Colors.green);
      return;
    }

    setState(() {
      isLoading = true;
      errorMessage = '';
    });

    try {
      // Simulate network call
      await Future.delayed(const Duration(seconds: 2));

      final prefs = await SharedPreferences.getInstance();
      prefs.setBool('isLoggedIn', true);
      prefs.setString('name', nameController.text);
      prefs.setString('email', emailController.text);
      prefs.setString('phone', phoneController.text);
      prefs.setString('dateOfBirth', dateOfBirthController.text);
      Get.snackbar('Success!', 'Account has been created',
          colorText: Colors.white, backgroundColor: Colors.green);

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const MainScreen()),
      );
    } catch (error) {
      setState(() {
        errorMessage = 'Error occurred. Please try again.';
      });
    } finally {
      setState(() {
        isLoading = false;
      });
    }
  }

  Future<void> selectDateOfBirth(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );
    if (picked != null && picked != DateTime.now()) {
      setState(() {
        dateOfBirthController.text = '${picked.toLocal()}'.split(' ')[0];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        alignment: Alignment.center,
        children: [
          // Background Image
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/back.jpg'), // Add your image path
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: 50,
            child: Image.asset(
              'assets/q.png',
              height: MediaQuery.of(context).size.height * .13,
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * .162,
            child: Text(
              'Đăng nhập',
              style: GoogleFonts.inter(
                color: Colors.white,
                fontSize: 34,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),

          // Foreground content
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: Get.height * .144,
                ),
                if (errorMessage.isNotEmpty)
                  Text(
                    errorMessage,
                    style: TextStyle(color: Colors.red),
                  ),
                PrimaryTextField(
                  controller: nameController,
                  iconPath: 'assets/name.png',
                  lable: 'Họ và tên',
                ),
                const SizedBox(height: 8),
                PrimaryTextField(
                  controller: emailController,
                  iconPath: 'assets/email.png',
                  lable: 'Email',
                ),
                const SizedBox(height: 8),
                PrimaryTextField(
                  controller: phoneController,
                  iconPath: 'assets/phone.png',
                  lable: 'Điện thoại',
                ),
                const SizedBox(height: 8),
                InkWell(
                  onTap: () => selectDateOfBirth(context),
                  child: AbsorbPointer(
                    child:
                    
                    TextField(
      controller: dateOfBirthController,
      style: GoogleFonts.inter(
        fontSize: 16,
        fontWeight: FontWeight.w400,
      ),
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.calendar_today_rounded,color: Colors.grey.shade400,),
        labelText:'Năm sinh',
        labelStyle: GoogleFonts.inter(
          color: const Color(0xFFA3A3A3),
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
        filled: true,
        fillColor: Colors.white.withOpacity(0.8),
      ),
    )
    //  PrimaryTextField(
                    //   controller: dateOfBirthController,
                    //   iconPath: 'assets/class.png',
                    //   lable: 'Năm sinh',
                    // ),
                  ),
                ),

                const SizedBox(height: 66),

                isLoading
                    ? const SpinKitCircle(color: Colors.blue, size: 50)
                    : InkWell(
                        onTap: () {
                          loginUser();
                        },
                        child: Container(
                          width: Get.width * .74,
                          padding: const EdgeInsets.all(12),
                          decoration: ShapeDecoration(
                            gradient: const LinearGradient(
                              begin: Alignment(-0.00, -1.00),
                              end: Alignment(0, 1),
                              colors: [Color(0xFF2CB2ED), Color(0xFF3550DC)],
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Đăng ký',
                                style: GoogleFonts.inter(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontWeight: FontWeight.w500,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class PrimaryTextField extends StatelessWidget {
  final String? iconPath;
  final String lable;
  final TextEditingController controller;
  const PrimaryTextField({
    super.key,
    this.iconPath,
    required this.lable,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      style: GoogleFonts.inter(
        fontSize: 16,
        fontWeight: FontWeight.w400,
      ),
      decoration: InputDecoration(
        prefixIcon: iconPath != null ? Image.asset(iconPath!) : null,
        labelText: lable,
        labelStyle: GoogleFonts.inter(
          color: const Color(0xFFA3A3A3),
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
        filled: true,
        fillColor: Colors.white.withOpacity(0.8),
      ),
    );
  }
}
