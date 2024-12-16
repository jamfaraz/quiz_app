import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'signin_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  String name = '';
  String email = '';
  String phone = '';
  String clas = '';
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 1), () {
      setState(() {
        isLoading = false;
      });
    });
    loadUserProfile();
    _loadResult();
  }
String highestScoreGroup = '';
  String highestScoreResult = '';


  Future<void> _loadResult() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      highestScoreGroup = prefs.getString('highestScoreGroup') ?? 'No result';
      highestScoreResult = prefs.getString('highestScoreResult')??'';
    });
  }
  Future<void> loadUserProfile() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      name = prefs.getString('name') ?? 'John Doe';
      email = prefs.getString('email') ?? 'johndoe@example.com';
      phone = prefs.getString('phone') ?? '1234567890';
      clas = prefs.getString('dateOfBirth') ?? '12-03-2005';
    });
  }

  Future<void> updateProfile(String key, String value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(key, value);
    loadUserProfile(); // Reload profile to update UI
  }

  Future<void> logout() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isLoggedIn', false);
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const LoginScreen()),
    );
  }
Future<void> showEditDialog(String title, String key, String currentValue) async {
  final controller = TextEditingController(text: currentValue);

  await showDialog(
    context: context,
    builder: (BuildContext context) {
      return StatefulBuilder(
        builder: (context, setState) {
          return Dialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    blurRadius: 10,
                    offset: const Offset(0, 5),
                  ),
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Edit $title",
                    style: GoogleFonts.montserrat(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextField(
                    controller: controller,
                    decoration: InputDecoration(
                      hintText: "Enter $title",
                      filled: true,
                      fillColor: Colors.grey[200],
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide.none,
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 14, horizontal: 16),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.redAccent.shade200,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        onPressed: () => Navigator.pop(context),
                        child: Text(
                          'Cancel',
                          style: GoogleFonts.montserrat(
                            color: Colors.white,
                            fontWeight: FontWeight.w500

                          ),
                        ),
                      ),

                      SizedBox(
                        width: 14,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF3550DC),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        onPressed: () {
                          updateProfile(key, controller.text);
                          Navigator.pop(context);
                        },
                        child: Text(
                          'Save',
                          style: GoogleFonts.montserrat(
                            color: Colors.white,
                            fontWeight: FontWeight.w500
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      );
    },
  );
}

  Future<void> showLogoutDialog() async {
    await showCupertinoDialog(
      context: context,
      builder: (context) => CupertinoAlertDialog(
        title: Text(
          "Logout",
          style: GoogleFonts.inter(),
        ),
        content: Text(
          "Are you sure you want to logout?",
          style: GoogleFonts.inter(),
        ),
        actions: [
          CupertinoDialogAction(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
          CupertinoDialogAction(
            isDestructiveAction: true,
            onPressed: () {
              Navigator.pop(context);
              logout();
            },
            child: const Text('Logout'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/back.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: Get.height * .06,
            right: 18,
            left: 12,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                Image.asset(
                  'assets/q.png',
                  height: MediaQuery.of(context).size.height * .12,
                ),
                InkWell(
                  onTap: () {
                    showLogoutDialog();
                  },
                  child: const CircleAvatar(
                    radius: 22,
                    child: Icon(
                      Icons.logout,
                      size: 24,
                    ),
                  ),
                )
              ],
            ),
          ),
          isLoading
              ? const Center(
                  child:  SpinKitCircle(
                    color: Colors.blue,
                    size: 70.0,
                  ),
                )
              : Positioned(
                top: Get.height*.14,
                left: 18,right: 18,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: Get.height * .2,
                    ),
                    ProfileTextField(
                      iconPath: 'assets/edit_icon.png',
                      controller: TextEditingController(text: name),
                      onSuffixTap: () =>
                          showEditDialog('Full Name', 'name', name),
                      readOnly: true,
                    ),
                    const SizedBox(height: 16),
                    ProfileTextField(
                      iconPath: 'assets/edit_icon.png',
                      controller: TextEditingController(text: email),
                      onSuffixTap: () =>
                          showEditDialog('Email', 'email', email),
                      readOnly: true,
                    ),
                    const SizedBox(height: 16),
                    ProfileTextField(
                      iconPath: 'assets/edit_icon.png',
                      controller: TextEditingController(text: phone),
                      onSuffixTap: () =>
                          showEditDialog('Phone', 'phone', phone),
                      readOnly: true,
                    ),
                    const SizedBox(height: 16),
                    ProfileTextField(
                      iconPath: 'assets/edit_icon.png',
                      controller: TextEditingController(text: clas),
                      onSuffixTap: () =>
                          showEditDialog('Class', 'dateOfBirth', clas),
                      readOnly: true,
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Text(
                      // 'Nhóm tính cách C',
                      highestScoreGroup,
                      style: GoogleFonts.inter(
                        color: const Color(0xFF001894),
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Text(
                      highestScoreResult,
                      // 'Bạn gặp phải khó khăn khi cảm thấy áp lực từ kỳ vọng của gia đình hoặc thầy cô. Bạn có thể thay đổi hoặc điều chỉnh tình huống này được đến mức nào?',
                     
                      style: GoogleFonts.inter(
                        color: const Color(0xFF2F94E8),
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
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

class ProfileTextField extends StatelessWidget {
  final String? iconPath;
  final TextEditingController controller;
  final VoidCallback onSuffixTap;
  final bool readOnly;

  const ProfileTextField({
    super.key,
    this.iconPath,
    required this.controller,
    required this.onSuffixTap,
    required this.readOnly,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      readOnly: readOnly,
      style: GoogleFonts.inter(
        fontSize: 16,
        fontWeight: FontWeight.w400,
      ),
      decoration: InputDecoration(
        suffixIcon: GestureDetector(
          onTap: onSuffixTap,
          child: Image.asset(iconPath!),
        ),
        filled: true,
        fillColor: Colors.white.withOpacity(0.8),
      ),
    );
  }
}
