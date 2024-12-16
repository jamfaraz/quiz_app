import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qna_app/screens/eq_test_screen.dart';

import 'profile_screen.dart';
import 'qa_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
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
            top: 50,
            child: Image.asset(
              'assets/q.png',
              height: MediaQuery.of(context).size.height * .13,
            ),
          ),
          Positioned(
              top: 70,
              right: 16,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ProfileScreen()),
                  );
                },
                child: CircleAvatar(
                  radius: 27,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(44),
                    child: Image.asset(
                      'assets/profile.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              )),
          Positioned(
            top: Get.height * .2,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  InkWell(
                    onTap: () {
                      Get.to(() => QuestionScreen());
                    },
                    child: Container(
                      width: Get.width * .86,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 18, vertical: 18),
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          begin: Alignment(0.97, -0.26),
                          end: Alignment(-0.97, 0.26),
                          colors: [Color(0xFF3550DC), Color(0xFF2CB2ED)],
                        ),
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: const [
                          BoxShadow(
                            color: Color(0x3F000000),
                            blurRadius: 4,
                            offset: Offset(-4, -4),
                            spreadRadius: 0,
                          ),
                          BoxShadow(
                            color: Color(0x3F000000),
                            blurRadius: 4,
                            offset: Offset(4, 4),
                            spreadRadius: 0,
                          )
                        ],
                      ),
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/aq.png',
                            height: Get.height * .11,
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Bộ công cụ AQ',
                                style: GoogleFonts.inter(
                                  color: Color(0xFF001894),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                '20 câu hỏi',
                                style: GoogleFonts.inter(
                                  color: Color(0xFF001894),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      // Get.to(() => QuestionScreen());
                    },
                    child: Container(
                      width: Get.size.width * .84,
                      margin: EdgeInsets.symmetric(vertical: 20),
                      height: 3,
                      decoration: BoxDecoration(color: Color(0xFFE2E2E2)),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(() => EqTestScreen());
                    },
                    child: Container(
                      width: Get.width * .86,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 18, vertical: 18),
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          begin: Alignment(0.97, -0.26),
                          end: Alignment(-0.97, 0.26),
                          colors: [Color(0xFF3550DC), Color(0xFF2CB2ED)],
                        ),
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: const [
                          BoxShadow(
                            color: Color(0x3F000000),
                            blurRadius: 4,
                            offset: Offset(-4, -4),
                            spreadRadius: 0,
                          ),
                          BoxShadow(
                            color: Color(0x3F000000),
                            blurRadius: 4,
                            offset: Offset(4, 4),
                            spreadRadius: 0,
                          )
                        ],
                      ),
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/eq.png',
                            height: Get.height * .11,
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Bài tập phát triển AQ',
                                style: GoogleFonts.inter(
                                  color: Color(0xFF001894),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                '20 Bài tập',
                                style: GoogleFonts.inter(
                                  color: Color(0xFF001894),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: Get.size.width * .84,
                    margin: EdgeInsets.symmetric(vertical: 22),
                    height: 3,
                    decoration: BoxDecoration(color: Color(0xFFE2E2E2)),
                  ),
                  SizedBox(
                    height: Get.height * .138,
                  ),
                  InkWell(
                    onTap: () {
                      // Get.to(() => QuizPage());
                    },
                    child: Container(
                      padding: EdgeInsets.all(8),
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 1, color: Color(0xFF2E9CE9)),
                          borderRadius: BorderRadius.circular(55),
                        ),
                      ),
                      child: Container(
                        width: Get.width * .7,
                        padding: const EdgeInsets.all(14),
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
                              'Trắc nghiệm',
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
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
