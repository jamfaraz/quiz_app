// import 'package:flutter/material.dart';
// import 'package:flutter_email_sender/flutter_email_sender.dart';
// import 'package:get/get.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// import 'main_screen.dart';
// import 'profile_screen.dart';

// class ResultScreen extends StatefulWidget {
//   final List<List<int>> scoresPerGroup;
//   final List<List<String>> resultsData;
//   final List<String> groupName;

//   const ResultScreen({
//     super.key,
//     required this.scoresPerGroup,
//     required this.resultsData,
//     required this.groupName,
//   });

//   @override
//   _ResultScreenState createState() => _ResultScreenState();
// }

// class _ResultScreenState extends State<ResultScreen> {
//   String name = '';
//   String userEmail = '';
//   String phone = '';
//   String clas = '';

//   @override
//   void initState() {
//     super.initState();
//     loadUserProfile();
//   }

//   Future<void> loadUserProfile() async {
//     final prefs = await SharedPreferences.getInstance();
//     setState(() {
//       name = prefs.getString('name') ?? 'John Doe';
//       userEmail = prefs.getString('email') ?? 'johndoe@example.com';
//       phone = prefs.getString('phone') ?? '1234567890';
//       clas = prefs.getString('class') ?? '12A1';
//     });
//   }

//   Future<void> sendEmail({
//     required String group,
//     required String result,
//   }) async {
//     final email = Email(
//       body: 'Result Details:\n\n'
//           'Highest Scoring Group: $group\n'
//           'Results: $result\n\n'
//           'User Information:\n'
//           'Name: $name\n'
//           'Email: $userEmail\n'
//           'Phone: $phone\n'
//           'Class: $clas',
//       subject: 'Kết quả bài kiểm tra và thông tin người dùng',
//       recipients: ['123nvhien@gmail.com'],
//       isHTML: false,
//     );

//     try {
//       await FlutterEmailSender.send(email);
//       print('Email sent successfully');
//     } catch (error) {
//       print('Error sending email: $error');
//     }
//   }

//     Future<void> storeResultLocally(
//       {required String groupName, required String result}) async {
//     final prefs = await SharedPreferences.getInstance();
//     await prefs.setString('highestScoreGroup', groupName);
//     await prefs.setString('highestScoreResult', result);
//   }
// double calculatePercentage(List<int> scores) {
//   int totalScore = scores.fold(0, (sum, score) => sum + score);
//   int maxScore = 25; // Update this based on your actual maximum possible score for a group
//   return (totalScore / maxScore) * 100;
// }

//   Widget buildPercentageBar(double percentage, String groupName) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//              Text(
//           groupName,
//           style: GoogleFonts.inter(
//             color: const Color(0xFF001894),
//             fontSize: 16,
//             fontWeight: FontWeight.w600,
//           ),
//         ),
//             Text(
//               '${percentage.toStringAsFixed(0)}%',
//               style: GoogleFonts.inter(
//                 color: const Color(0xFF001894),
//                 fontSize: 14,
//                 fontWeight: FontWeight.w600,
//               ),
//             ),
//           ],
//         ),
//         const SizedBox(height: 8),
//         Stack(
//           children: [
//             Container(
//               height: 8,
//               decoration: BoxDecoration(
//                 color: const Color(0xFFD9D9D9),
//                 borderRadius: BorderRadius.circular(20),
//               ),
//             ),
//             Container(
//               height: 8,
//               width: MediaQuery.of(context).size.width * (percentage / 100),
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(20),
//                 color: const Color(0xFF3091E8),
//               ),
//             ),
//           ],
//         ),
//         const SizedBox(height: 24),
//       ],
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     final List<int> groupTotals = widget.scoresPerGroup
//         .map((scores) => scores.fold(0, (sum, score) => sum + score))
//         .toList();

//     final int highestGroupIndex = groupTotals.indexWhere(
//         (score) => score == groupTotals.reduce((a, b) => a > b ? a : b));
//     final String result = widget.resultsData[highestGroupIndex]
//         [groupTotals[highestGroupIndex] >= 20
//             ? 0
//             : groupTotals[highestGroupIndex] >= 12
//                 ? 1
//                 : 2];
//     final String highestScoringGroupName = widget.groupName[highestGroupIndex];

//     return Scaffold(
//       body: Stack(
//         children: [
//           Container(
//             decoration: const BoxDecoration(
//               image: DecorationImage(
//                 image: AssetImage('assets/back.jpg'),
//                 fit: BoxFit.cover,
//               ),
//             ),
//           ),
//           SingleChildScrollView(
//             child: Column(
//               children: [
//                 const SizedBox(height: 33),
//                 Padding(
//                   padding: const EdgeInsets.all(16.0),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       IconButton(
//                         icon: const Icon(Icons.arrow_back_ios,
//                             color: Colors.white),
//                         onPressed: () {
//                           Navigator.pop(context);
//                         },
//                       ),
//                       Image.asset(
//                         'assets/q.png',
//                         height: MediaQuery.of(context).size.height * .12,
//                       ),
//                       InkWell(
//                         onTap: () {
//                           Get.to(() => const ProfileScreen());
//                         },
//                         child: CircleAvatar(
//                           radius: 27,
//                           child: ClipRRect(
//                             borderRadius: BorderRadius.circular(44),
//                             child: Image.asset(
//                               'assets/profile.jpg',
//                               fit: BoxFit.cover,
//                             ),
//                           ),
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//                 Padding(
//                   padding:
//                       const EdgeInsets.symmetric(horizontal: 18, vertical: 16),
//                   child: Column(
//                     children: [
// Image.asset(
//   'assets/complete.png',
//   height: Get.height * .28,
//   // height: 164,
// ),
//                       const SizedBox(height: 6),
//                       // Text(
//                       //   'Highest Scoring Group: $highestScoringGroupName',
//                       //   textAlign: TextAlign.center,
//                       //   style: GoogleFonts.inter(
//                       //       fontSize: 19, fontWeight: FontWeight.w600),
//                       // ),
//                       // const SizedBox(height: 12),
//                       // Text(
//                       //   result,
//                       //   textAlign: TextAlign.center,
//                       //   style: GoogleFonts.inter(
//                       //     color: const Color(0xFF001894),
//                       //     fontSize: 18,
//                       //     fontWeight: FontWeight.w500,
//                       //   ),
//                       // ),
//                       const SizedBox(height: 20),
//                       ...widget.scoresPerGroup.asMap().entries.map((entry) {
//                         int index = entry.key;
//                         List<int> scores = entry.value;
//                         double percentage = calculatePercentage(scores);
//                         return buildPercentageBar(
//                             percentage, widget.groupName[index]);
//                       }).toList(),
//                       SizedBox(height: Get.height * .033),
//                       InkWell(
//                         onTap: () async {
//                            await storeResultLocally(
//                               groupName: highestScoringGroupName,
//                               result: result);
//                           await sendEmail(
//                               group: highestScoringGroupName, result: result);
//                           Get.offAll(() => const MainScreen());
//                         },
//                         child: Container(
//                           padding: const EdgeInsets.all(8),
//                           decoration: ShapeDecoration(
//                             shape: RoundedRectangleBorder(
//                               side: const BorderSide(
//                                   width: 1, color: Color(0xFF2E9CE9)),
//                               borderRadius: BorderRadius.circular(55),
//                             ),
//                           ),
//                           child: Container(
//                             width: Get.width * .6,
//                             padding: const EdgeInsets.all(12),
//                             decoration: ShapeDecoration(
//                               gradient: const LinearGradient(
//                                 begin: Alignment(-0.00, -1.00),
//                                 end: Alignment(0, 1),
//                                 colors: [Color(0xFF2CB2ED), Color(0xFF3550DC)],
//                               ),
//                               shape: RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.circular(50),
//                               ),
//                             ),
//                             child: Row(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               children: [
//                                 Text(
//                                   'Về trang chủ',
//                                   style: GoogleFonts.inter(
//                                     color: Colors.white,
//                                     fontSize: 22,
//                                     fontWeight: FontWeight.w500,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'main_screen.dart';
import 'profile_screen.dart';
import 'total_result_page.dart';

class ResultScreen extends StatefulWidget {
  final List<List<int>> scoresPerGroup;
  final List<List<String>> resultsData;
  final List<String> groupName;

  const ResultScreen({
    super.key,
    required this.scoresPerGroup,
    required this.resultsData,
    required this.groupName,
  });

  @override
  _ResultScreenState createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  String name = '';
  String userEmail = '';
  String phone = '';
  String clas = '';
  int _currentPage = 0;
  final PageController _pageController = PageController();

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

  Future<void> storeResultLocally({
    required String groupName,
    required String result,
  }) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('highestScoreGroup', groupName);
    await prefs.setString('highestScoreResult', result);
  }

  Widget buildScoreBar(
    String groupName,
    int totalScore,
    int maxScore,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '$groupName :',
              style: GoogleFonts.inter(
                color: const Color(0xFF001894),
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              '$totalScore/$maxScore',
              style: GoogleFonts.inter(
                color: const Color(0xFF001894),
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),
        Stack(
          children: [
            Container(
              height: 7,
              decoration: BoxDecoration(
                color: const Color(0xFFD9D9D9),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            Container(
              height: 7,
              width:
                  MediaQuery.of(context).size.width * (totalScore / maxScore),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color(0xFF3091E8),
              ),
            ),
          ],
        ),
        const SizedBox(height: 36),
      ],
    );
  }

  List<String> scoreResult = [
    'AQ Thấp (20-40 điểm)\nĐặc điểm: Khó khăn dễ khiến họ cảm thấy choáng ngợp và bất lực. Họ có xu hướng từ bỏ hoặc không biết cách vượt qua thử thách.Khuyến nghị: Cần cải thiện khả năng kiểm soát cảm xúc, phát triển kỹ năng đối phó và nhận thức rằng thử thách là cơ hội học hỏi.',
    'AQ Trung Bình (41-60 điểm)\nĐặc điểm: Có thể đối mặt với khó khăn nhưng thiếu chiến lược mạnh mẽ để vượt qua. Thường cảm thấy bế tắc trong thời gian dài trước khi tìm giải pháp.Khuyến nghị: Phát triển khả năng phục hồi nhanh hơn và duy trì thái độ tích cực khi gặp thử thách.',
    'AQ Cao (61-80 điểm)\nĐặc điểm: Khả năng phục hồi tốt, chủ động tìm giải pháp và duy trì sự bình tĩnh khi đối mặt với khó khăn. Họ coi thử thách là cơ hội phát triển.Khuyến nghị: Tiếp tục phát triển sự kiên cường và đối mặt với các thử thách mới để nâng cao khả năng vượt khó.',
    'AQ Xuất Sắc (81-100 điểm)\nĐặc điểm: Vượt qua khó khăn một cách mạnh mẽ và kiên cường. Mỗi thất bại là cơ hội để học hỏi và phát triển.Khuyến nghị: Tiếp tục phát huy khả năng vượt qua thử thách và truyền cảm hứng cho người khác.'
  ];

  int getTotalScore() {
    return widget.scoresPerGroup
        .map((group) => group.reduce((a, b) => a + b))
        .reduce((a, b) => a + b);
  }

  String getResultText(int totalScore) {
    if (totalScore >= 81) return scoreResult[3];
    if (totalScore >= 61) return scoreResult[2];
    if (totalScore >= 41) return scoreResult[1];
    return scoreResult[0];
  }

  @override
  Widget build(BuildContext context) {
    const int maxScore = 25;
    final List<int> groupTotals = widget.scoresPerGroup
        .map((scores) => scores.fold(0, (sum, score) => sum + score))
        .toList();

    final int highestScoreIndex = groupTotals.indexWhere(
        (score) => score == groupTotals.reduce((a, b) => a > b ? a : b));
    final String highestScoringGroupName = widget.groupName[highestScoreIndex];
    final String result = widget.resultsData[highestScoreIndex]
        [groupTotals[highestScoreIndex] >= 20
            ? 0
            : groupTotals[highestScoreIndex] >= 12
                ? 1
                : 2];

    final String detailedResults =
        widget.groupName.asMap().entries.map((entry) {
      int index = entry.key;
      String groupName = entry.value;
      int totalScore = groupTotals[index];
      String result = widget.resultsData[index][totalScore >= 20
          ? 0
          : totalScore >= 12
              ? 1
              : 2];
      return '$groupName: $result ($totalScore/$maxScore)';
    }).join('\n');
    final int totalScor = getTotalScore();
    final String resultText = getResultText(totalScor);
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/back.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            children: [
              const SizedBox(height: 33),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon:
                          const Icon(Icons.arrow_back_ios, color: Colors.white),
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
                        Get.to(() => const ProfileScreen());
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
                    )
                  ],
                ),
              ),
              Expanded(
                child: PageView(
                  controller: _pageController,
                  onPageChanged: (index) {
                    setState(() {
                      _currentPage = index;
                    });
                  },
                  children: [
                    SingleChildScrollView(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 18, vertical: 16),
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/complete.png',
                            height: Get.height * .28,
                          ),
                          ...widget.scoresPerGroup.asMap().entries.map(
                            (entry) {
                              int index = entry.key;
                              List<int> scores = entry.value;
                              int totalScore =
                                  scores.fold(0, (sum, score) => sum + score);
                              return buildScoreBar(
                                widget.groupName[index],
                                totalScore,
                                maxScore,
                              );
                            },
                          ).toList(),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 18, vertical: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: Get.height * .13,
                          ),
                          ...widget.groupName.asMap().entries.map(
                            (entry) {
                              int index = entry.key;
                              String group = entry.value;
                              String result = widget.resultsData[index]
                                  [groupTotals[index] >= 20
                                      ? 0
                                      : groupTotals[index] >= 12
                                          ? 1
                                          : 2];
                              return Padding(
                                padding: const EdgeInsets.only(bottom: 14),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '$group:',
                                      style: GoogleFonts.inter(
                                        color: const Color(0xFF001894),
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    Text(
                                      '$result',
                                      style: GoogleFonts.inter(
                                        color: const Color(0xFF001894),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          ).toList(),
                          Center(
                            child: InkWell(
                              onTap: () async {
                                await storeResultLocally(
                                    groupName: highestScoringGroupName,
                                    result: result);
                                // await sendEmail(
                                //     detailedResults: detailedResults);
                                // Get.offAll(() => const MainScreen());
                                Get.to(() => TotalScoreScreen(
                                      totalScore: totalScor,
                                      resultText: resultText,
                                      detailedResult: detailedResults,
                                    ));
                              },
                              child: Container(
                                padding: const EdgeInsets.all(8),
                                decoration: ShapeDecoration(
                                  shape: RoundedRectangleBorder(
                                    side: const BorderSide(
                                        width: 1, color: Color(0xFF2E9CE9)),
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
                                      colors: [
                                        Color(0xFF2CB2ED),
                                        Color(0xFF3550DC)
                                      ],
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
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 6,
              ),
              Padding(
                padding: EdgeInsets.only(bottom: Get.height * .03),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    2,
                    (index) => AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      margin: const EdgeInsets.symmetric(horizontal: 4.0),
                      width: _currentPage == index ? 12.0 : 10.0,
                      height: _currentPage == index ? 12.0 : 10.0,
                      decoration: BoxDecoration(
                        color: _currentPage == index
                            ? const Color(0xFF3091E8)
                            : const Color(0xFFD9D9D9),
                        borderRadius: BorderRadius.circular(22.0),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
