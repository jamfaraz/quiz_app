import 'package:flutter/material.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qna_app/screens/main_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TotalScoreScreen extends StatefulWidget {
  final int totalScore;
  final String resultText;
  final String detailedResult;

  const TotalScoreScreen({
    super.key,
    required this.totalScore,
    required this.resultText,
    required this.detailedResult,
  });

  @override
  State<TotalScoreScreen> createState() => _TotalScoreScreenState();
}

class _TotalScoreScreenState extends State<TotalScoreScreen> {
  String name = '';
  String userEmail = '';
  String phone = '';
  String clas = '';
  // int _currentPage = 0;
  // final PageController _pageController = PageController();

  @override
  void initState() {
    super.initState();
    loadUserProfile();
  }

  Future<void> loadUserProfile() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      name = prefs.getString('name') ?? 'John Doe';
      userEmail = prefs.getString('email') ?? 'johndoe@example.com';
      phone = prefs.getString('phone') ?? '1234567890';
      clas = prefs.getString('class') ?? '12A1';
    });
  }

  Future<void> sendEmail({
    required String detailedResults,
  }) async {
    final email = Email(
      body: 'Result Details:\n\n'
          '$detailedResults\n\n'
          'User Information:\n'
          'Name: $name\n'
          'Email: $userEmail\n'
          'Phone: $phone\n'
          'Class: $clas',
      subject: 'Kết quả bài kiểm tra và thông tin người dùng',
      recipients: ['123nvhien@gmail.com'], // Change to your recipient
      isHTML: false,
    );

    try {
      await FlutterEmailSender.send(email);
      print('Email sent successfully');
    } catch (error) {
      print('Error sending email: $error');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
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
                CircleAvatar(
                  radius: 27,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(44),
                    child: Image.asset(
                      'assets/profile.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.46,
            width: Get.width * .89,
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                begin: Alignment(0.67, -0.75),
                end: Alignment(-0.67, 0.75),
                colors: [Color(0xFF3550DC), Color(0xFF2CB2ED)],
              ),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Stack(
              children: [
                Image.asset('assets/top.png'),
                Positioned(
                  top: 18,
                  left: Get.width * .29,
                  child: Text(
                    'Tổng điểm: ${widget.totalScore}',
                    style: GoogleFonts.inter(
                      color: const Color(0xFF001894),
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Positioned(
                  top: Get.height * .15,
                  right: 14,
                  left: 14,
                  child: Text(
                    widget.resultText,
                    // textAlign: TextAlign.center,
                    style: GoogleFonts.inter(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 66,
            child: InkWell(
              onTap: () async {
                await sendEmail(detailedResults: widget.detailedResult);
                Get.offAll(() => const MainScreen());
              },
              child: Container(
                padding: const EdgeInsets.all(8),
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 1, color: Color(0xFF2E9CE9)),
                    borderRadius: BorderRadius.circular(55),
                  ),
                ),
                child: Container(
                  width: Get.width * .6,
                  padding: const EdgeInsets.all(10),
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
                        'Về trang chủ',
                        style: GoogleFonts.inter(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
