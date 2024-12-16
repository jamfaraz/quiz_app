// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:scrumlab_flutter_tindercard/scrumlab_flutter_tindercard.dart';

// import 'result_screen.dart';

// class QuestionScreen extends StatefulWidget {
//   const QuestionScreen({super.key});

//   @override
//   _QuestionScreenState createState() => _QuestionScreenState();
// }

// class _QuestionScreenState extends State<QuestionScreen>
//     with TickerProviderStateMixin {
//   final List<String> controlCardData = [
//     'Bạn gặp phải khó khăn khi cảm thấy áp lực từ kỳ vọng của gia đình hoặc thầy cô. Bạn có thể thay đổi hoặc điều chỉnh tình huống này được đến mức nào?',
//     'Bạn gặp phải sự phản đối hoặc thiếu ủng hộ khi chia sẻ các ý tưởng mới trong nhóm học tập. Bạn có thể thay đổi hoặc điều chỉnh tình huống này được đến mức nào?',
//     'Khi có sự thay đổi bất ngờ như việc thay đổi lịch kiểm tra hoặc bài tập được giao gấp, bạn có thể thay đổi hoặc điều chỉnh với tình huống này đến mức nào?',
//     'Việc học tập và các hoạt động cá nhân của bạn đôi khi không cân đối. Bạn có thể thay đổi hoặc điều chỉnh sự cân bằng này như nào?',
//     'Bạn cảm thấy khó khăn trong việc duy trì thói quen rèn luyện sức khỏe hàng ngày dù biết điều đó quan trọng. Bạn có thể thay đổi hoặc điều chỉnh thói quen này như nào?'
//   ];

//   final List<String> controllResultData = [
//     'Điểm cao (20-25 điểm): Ý thức kiểm soát cao đối với hầu hết các sự kiện bất lợi. Điểm cao ở mức này cho thấy bạn có khả năng kiên trì vượt qua khó khăn, giữ vững quyết tâm và linh hoạt trong việc tìm kiếm giải pháp, giúp tăng hiệu quả làm việc, năng suất, và sức khỏe dài hạn.',
//     'Điểm trung bình (12-19 điểm): Kiểm soát được phần nào các sự kiện bất lợi, tùy thuộc vào mức độ khó khăn. Tuy nhiên, bạn có thể gặp khó khăn trong việc duy trì ý thức kiểm soát khi phải đối mặt với thất bại hoặc khó khăn lớn hơn.',
//     'Điểm thấp (5-11 điểm): Nhận thức rằng các sự kiện bất lợi nằm ngoài tầm kiểm soát của mình, khó có thể ngăn chặn hoặc giảm thiểu thiệt hại từ chúng. Thường dễ bị tê liệt khi đối mặt với nghịch cảnh, có nguy cơ ảnh hưởng tiêu cực đến sự phát triển cá nhân, dẫn đến lối sống cam chịu, dễ tổn thương trước những thăng trầm của cuộc sống.'
//   ];

//   final List<String> origonCardData = [
//     'Bạn bị bỏ qua khi ứng cử ban cán sự lớp. Bạn cảm thấy mình cần chủ động cải thiện tình hình này đến đâu?',
//     'Một thầy cô bạn rất kính trọng không chú ý đến phần thuyết trình mà bạn đã chuẩn bị kỹ lưỡng. Bạn cảm thấy mình cần chủ động cải thiện tình hình này đến đâu? ',
//     'Bài kiểm tra giữa kỳ của bạn không đạt điểm như kỳ vọng. Bạn cảm thấy mình cần chủ động cải thiện tình hình này đến đâu? ',
//     'Một buổi thảo luận nhóm lớp kéo dài mà không đạt được kết quả cụ thể. Bạn cảm thấy mình cần chủ động cải thiện tình hình này đến đâu?',
//     'Bạn mất rất nhiều thời gian mỗi ngày vì sử dụng điện thoại quá mức. Bạn cảm thấy mình cần chủ động cải thiện tình hình này đến đâu? '
//   ];

//   final List<String> originResultData = [
//     'Điểm cao (20-25 điểm): Bạn có xu hướng coi thành công là kết quả từ nỗ lực của mình, còn nghịch cảnh là do yếu tố bên ngoài. Khả năng này giúp bạn tránh tự đổ lỗi không cần thiết, đồng thời xác định rõ trách nhiệm của bản thân trong từng tình huống.',
//     'Điểm trung bình (12-19 điểm): Phản ứng với các sự kiện bất lợi một cách linh hoạt: đôi lúc tự trách bản thân, đôi lúc cho rằng do ngoại cảnh. Có tinh thần trách nhiệm ở mức độ nhất định, tuy nhiên chỉ sẵn sàng nhận trách nhiệm đối với những gì mà bạn là nguyên nhân trực tiếp.',
//     'Điểm thấp (5-11 điểm): Có xu hướng cho rằng nghịch cảnh là do lỗi của bản thân, ngay cả khi không phải vậy, và coi các sự kiện tích cực là do may mắn. Bạn có thể dễ dàng đùn đẩy trách nhiệm hoặc né tránh giải quyết vấn đề, dẫn đến sự thiếu tự tin và hạn chế trong việc đối mặt với thử thách lớn.'
//   ];

//     final List<String> reachCardData = [
//     'Bạn nhận được phản hồi không tốt từ giáo viên về bài thuyết trình mà bạn đã rất cố gắng chuẩn bị. Mức độ ảnh hưởng của tình huống này đến các hoạt động khác trong cuộc sống của bạn sẽ: ',
//     'Dự án học tập quan trọng mà bạn đang thực hiện bị hủy bỏ đột ngột. Mức độ ảnh hưởng của tình huống này đến các hoạt động khác trong cuộc sống của bạn sẽ:',
//     'Bạn đến trường muộn do tắc nghẽn giao thông nghiêm trọng. Mức độ ảnh hưởng của tình huống này đến các hoạt động khác trong cuộc sống của bạn sẽ:',
//     'Bạn bỏ lỡ một buổi họp nhóm quan trọng để chuẩn bị cho bài kiểm tra thuyết trình của nhóm vào ngày mai. Mức độ ảnh hưởng của tình huống này đến các hoạt động khác trong cuộc sống của bạn sẽ:',
//     'Giáo viên nhất quyết không đồng ý với ý kiến hay quan điểm của bạn. Mức độ ảnh hưởng của tình huống này đến các hoạt động khác trong cuộc sống của bạn sẽ:'
//   ];

//   final List<String> reachResultData = [
//     'Điểm cao (20-25 điểm): Bạn có khả năng giới hạn phạm vi ảnh hưởng của nghịch cảnh, coi đó là vấn đề tạm thời và cá biệt. Điều này giúp bạn dễ dàng xử lý những khó khăn và không bị áp chế bởi các sự kiện tiêu cực.',
//     'Điểm trung bình (12-19 điểm): Có xu hướng cho rằng nghịch cảnh có ảnh hưởng rộng hơn, đôi khi phóng đại vấn đề trở nên nghiêm trọng. Thường dựa vào người khác để vượt qua những khủng hoảng.',
//     'Điểm thấp (5-11 điểm): Dễ cho rằng nghịch cảnh ảnh hưởng lớn đến nhiều khía cạnh cuộc sống. Bạn phóng đại vấn đề lên mức rất nghiêm trọng, khó có thể thoát khỏi trạng thái bất lực và mất khả năng hành động cần thiết.'
//   ];
//    final List<String> enduranceCardData = [
//     'Bạn vô tình xóa mất một tin nhắn quan trọng liên quan đến thông báo học tập hoặc hoạt động ngoại khóa. Hậu quả của tình huống này đối với bạn sẽ:',
//     'Bạn cảm thấy mình không bao giờ có đủ thời gian để chuẩn bị kỹ lưỡng cho các bài kiểm tra và bài tập về nhà. Hậu quả của tình huống này đối với bạn sẽ:',
//     'Bạn đã làm mất một vật dụng quan trọng đối với việc học tập hoặc sở thích cá nhân. Hậu quả của tình huống này đối với bạn sẽ:',
//     'Bạn bị mất cơ hội tham gia một hoạt động ngoại khóa mà bạn rất mong chờ. Hậu quả của tình huống này đối với bạn sẽ:',
//     'Dù đã tìm khắp nơi, bạn vẫn không thể tìm thấy vở ghi chép quan trọng cho bài kiểm tra sắp tới. Hậu quả của tình huống này đối với bạn sẽ:'
//    ];

//   final List<String> enduranceResultData = [
//     'Điểm cao (20-25 điểm): Bạn coi nghịch cảnh là tạm thời và thành công là bền vững. Điều này giúp bạn duy trì năng lượng tích cực, lạc quan và có khả năng hành động để vượt qua khó khăn.',
//     'Điểm trung bình (12-19 điểm): Có xu hướng coi các sự kiện bất lợi và nguyên nhân của chúng là lâu dài, điều này đôi khi cản trở khả năng hành động tích cực. Dù vẫn có khả năng giữ vững niềm tin và tiến lên trước thách thức vừa hoặc nhỏ, bạn dễ mất hy vọng khi gặp phải khó khăn lớn hơn.',
//     'Điểm cao (20-25 điểm): Bạn coi nghịch cảnh là tạm thời và thành công là bền vững. Điều này giúp bạn duy trì năng lượng tích cực, lạc quan và có khả năng hành động để vượt qua khó khăn.'
//   ];

//   final List<int> selectedAnswers = [];
//   int currentQuestionIndex = 0;
//   int selectedContainerIndex = -1;
//   late CardController controller;

//   @override
//   Widget build(BuildContext context) {
//     final bool hasQuestions = controlCardData.isNotEmpty;
//     final bool isCompleted = currentQuestionIndex >= controlCardData.length;

//     return Scaffold(
//       body: Stack(
//         alignment: Alignment.center,
//         children: [
//           Container(
//             decoration: const BoxDecoration(
//               image: DecorationImage(
//                 image: AssetImage('assets/back.jpg'),
//                 fit: BoxFit.cover,
//               ),
//             ),
//           ),
//           Positioned(
//             top: Get.height * .06,
//             right: 18,
//             left: 12,
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 IconButton(
//                   icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
//                   onPressed: () {
//                     Navigator.pop(context);
//                   },
//                 ),
//                 Image.asset(
//                   'assets/q.png',
//                   height: MediaQuery.of(context).size.height * .12,
//                 ),
//                 CircleAvatar(
//                   radius: 27,
//                   child: ClipRRect(
//                     borderRadius: BorderRadius.circular(44),
//                     child: Image.asset(
//                       'assets/profile.jpg',
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                 )
//               ],
//             ),
//           ),
//           Positioned(
//             top: Get.height * .17,
//             child: Text(
//               'Chọn đáp án phù hợp với bạn',
//               style: GoogleFonts.inter(
//                 color: Colors.white,
//                 fontSize: 20,
//                 fontWeight: FontWeight.w600,
//               ),
//             ),
//           ),
//           if (hasQuestions && !isCompleted)
//             Center(
//               child: Container(
//                 height: MediaQuery.of(context).size.height * 0.6,
//                 child: TinderSwapCard(
//                   swipeUp: true,
//                   swipeDown: true,
//                   orientation: AmassOrientation.top,
//                   totalNum: controlCardData.length,
//                   stackNum: 3,
//                   swipeEdge: 4.0,
//                   maxWidth: MediaQuery.of(context).size.width * 0.9,
//                   maxHeight: MediaQuery.of(context).size.width * 0.9,
//                   minWidth: MediaQuery.of(context).size.width * 0.8,
//                   minHeight: MediaQuery.of(context).size.width * 0.8,
//                   cardBuilder: (context, index) => Card(
//                     child: Container(
//                       decoration: BoxDecoration(
//                         gradient: const LinearGradient(
//                           begin: Alignment(0.67, -0.75),
//                           end: Alignment(-0.67, 0.75),
//                           colors: [Color(0xFF3550DC), Color(0xFF2CB2ED)],
//                         ),
//                         borderRadius: BorderRadius.circular(10),
//                         border: Border.all(
//                           strokeAlign: BorderSide.strokeAlignOutside,
//                           color: const Color(0x7F001894),
//                         ),
//                       ),
//                       child: Stack(
//                         children: [
//                           Image.asset('assets/top.png'),
//                           Positioned(
//                             top: 18,
//                             left: Get.width * .24,
//                             child: Text(
//                               'Question: ${currentQuestionIndex + 1}/${controlCardData.length}',
//                               style: GoogleFonts.inter(
//                                 color: const Color(0xFF001894),
//                                 fontSize: 18,
//                                 fontWeight: FontWeight.w500,
//                               ),
//                             ),
//                           ),
//                           Positioned(
//                             top: Get.height * .15,
//                             right: 10,
//                             left: 10,
//                             child: Text(
//                               controlCardData[index],
//                               textAlign: TextAlign.center,
//                               style: GoogleFonts.inter(
//                                 color: Colors.white,
//                                 fontSize: 18,
//                                 fontWeight: FontWeight.w500,
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                   cardController: controller = CardController(),
//                   swipeCompleteCallback:
//                       (CardSwipeOrientation orientation, int index) {
//                     setState(() {
//                       if (index < controlCardData.length - 1) {
//                         currentQuestionIndex++;
//                         selectedContainerIndex = -1;
//                       }
//                     });
//                   },
//                 ),
//               ),
//             ),
//           if (hasQuestions && !isCompleted)
//             Positioned(
//               bottom: Get.height * .15,
//               left: 16,
//               right: 16,
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: List.generate(
//                   5,
//                   (index) => CustomContainer(
//                     index: index,
//                     isSelected: selectedContainerIndex == index,
//                     onTap: () {
//                       setState(() {
//                         selectedContainerIndex = index;
//                         selectedAnswers.add(index + 1);
//                         controller.triggerRight();
//                       });
//                     },
//                   ),
//                 ),
//               ),
//             ),
//           Positioned(
//             bottom: 28,
//             right: 18,
//             child: InkWell(
//               onTap: () {
//                 int totalPoints = selectedAnswers.fold(0, (a, b) => a + b);
//                 String resultText;
//                 if (totalPoints <= 11) {
//                   resultText = controllResultData[2];
//                 } else if (totalPoints <= 19) {
//                   resultText = controllResultData[1];
//                 } else {
//                   resultText = controllResultData[0];
//                 }
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => ResultScreen(
//                       // totalPoints: totalPoints,
//                       resultText: resultText,
//                     ),
//                   ),
//                 );
//               },
//               child: Container(
//                 padding: const EdgeInsets.all(6),
//                 decoration: ShapeDecoration(
//                   shape: RoundedRectangleBorder(
//                     side: const BorderSide(width: 1, color: Color(0xFF2E9CE9)),
//                     borderRadius: BorderRadius.circular(55),
//                   ),
//                 ),
//                 child: Container(
//                   padding:
//                       const EdgeInsets.symmetric(horizontal: 29, vertical: 7),
//                   decoration: ShapeDecoration(
//                     gradient: const LinearGradient(
//                       begin: Alignment(-0.00, -1.00),
//                       end: Alignment(0, 1),
//                       colors: [Color(0xFF2CB2ED), Color(0xFF3550DC)],
//                     ),
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(50),
//                     ),
//                   ),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text(
//                         'Tiếp',
//                         style: GoogleFonts.inter(
//                           color: Colors.white,
//                           fontSize: 20,
//                           fontWeight: FontWeight.w500,
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }

// class CustomContainer extends StatelessWidget {
//   final int index;
//   final bool isSelected;
//   final VoidCallback onTap;

//   const CustomContainer({
//     Key? key,
//     required this.index,
//     required this.isSelected,
//     required this.onTap,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     double screenWidth = MediaQuery.of(context).size.width;
//     double screenHeight = MediaQuery.of(context).size.height;

//     return GestureDetector(
//       onTap: onTap,
//       child: Container(
//         padding: EdgeInsets.symmetric(
//           horizontal: screenWidth * 0.057,
//           vertical: screenHeight * 0.009,
//         ),
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(screenWidth * 0.026),
//           gradient: LinearGradient(
//             begin: const Alignment(0.21, -0.98),
//             end: const Alignment(-0.21, 0.98),
//             colors: isSelected
//                 ? [const Color(0xFFF3C444), const Color(0xFFF5CC4A)]
//                 : [const Color(0xFF3550DC), const Color(0xFF2CB2ED)],
//           ),
//         ),
//         child: Text(
//           '${index + 1}',
//           style: GoogleFonts.inter(
//             color: const Color(0xFF001894),
//             fontSize:
//                 screenWidth * 0.09, // Adjust font size based on screen width
//             fontWeight: FontWeight.w700,
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scrumlab_flutter_tindercard/scrumlab_flutter_tindercard.dart';

import 'result_screen.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  _QuestionScreenState createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen>
    with TickerProviderStateMixin {
  final List<List<String>> groupsOfQuestions = [
    [
      'Bạn gặp phải khó khăn khi cảm thấy áp lực từ kỳ vọng của gia đình hoặc thầy cô. Bạn có thể thay đổi hoặc điều chỉnh tình huống này được đến mức nào?',
      'Bạn gặp phải sự phản đối hoặc thiếu ủng hộ khi chia sẻ các ý tưởng mới trong nhóm học tập. Bạn có thể thay đổi hoặc điều chỉnh tình huống này được đến mức nào?',
      'Khi có sự thay đổi bất ngờ như việc thay đổi lịch kiểm tra hoặc bài tập được giao gấp, bạn có thể thay đổi hoặc điều chỉnh với tình huống này đến mức nào?',
      'Việc học tập và các hoạt động cá nhân của bạn đôi khi không cân đối. Bạn có thể thay đổi hoặc điều chỉnh sự cân bằng này như nào?',
      'Bạn cảm thấy khó khăn trong việc duy trì thói quen rèn luyện sức khỏe hàng ngày dù biết điều đó quan trọng. Bạn có thể thay đổi hoặc điều chỉnh thói quen này như nào?'
    ],
    [
      'Bạn bị bỏ qua khi ứng cử ban cán sự lớp. Bạn cảm thấy mình cần chủ động cải thiện tình hình này đến đâu?',
      'Một thầy cô bạn rất kính trọng không chú ý đến phần thuyết trình mà bạn đã chuẩn bị kỹ lưỡng. Bạn cảm thấy mình cần chủ động cải thiện tình hình này đến đâu?',
      'Bài kiểm tra giữa kỳ của bạn không đạt điểm như kỳ vọng. Bạn cảm thấy mình cần chủ động cải thiện tình hình này đến đâu?',
      'Một buổi thảo luận nhóm lớp kéo dài mà không đạt được kết quả cụ thể. Bạn cảm thấy mình cần chủ động cải thiện tình hình này đến đâu?',
      'Bạn mất rất nhiều thời gian mỗi ngày vì sử dụng điện thoại quá mức. Bạn cảm thấy mình cần chủ động cải thiện tình hình này đến đâu?'
    ],
    [
      'Bạn nhận được phản hồi không tốt từ giáo viên về bài thuyết trình mà bạn đã rất cố gắng chuẩn bị. Mức độ ảnh hưởng của tình huống này đến các hoạt động khác trong cuộc sống của bạn sẽ:',
      'Dự án học tập quan trọng mà bạn đang thực hiện bị hủy bỏ đột ngột. Mức độ ảnh hưởng của tình huống này đến các hoạt động khác trong cuộc sống của bạn sẽ:',
      'Bạn đến trường muộn do tắc nghẽn giao thông nghiêm trọng. Mức độ ảnh hưởng của tình huống này đến các hoạt động khác trong cuộc sống của bạn sẽ:',
      'Bạn bỏ lỡ một buổi họp nhóm quan trọng để chuẩn bị cho bài kiểm tra thuyết trình của nhóm vào ngày mai. Mức độ ảnh hưởng của tình huống này đến các hoạt động khác trong cuộc sống của bạn sẽ:',
      'Giáo viên nhất quyết không đồng ý với ý kiến hay quan điểm của bạn. Mức độ ảnh hưởng của tình huống này đến các hoạt động khác trong cuộc sống của bạn sẽ:'
    ],
    [
      'Bạn vô tình xóa mất một tin nhắn quan trọng liên quan đến thông báo học tập hoặc hoạt động ngoại khóa. Hậu quả của tình huống này đối với bạn sẽ:',
      'Bạn cảm thấy mình không bao giờ có đủ thời gian để chuẩn bị kỹ lưỡng cho các bài kiểm tra và bài tập về nhà. Hậu quả của tình huống này đối với bạn sẽ:',
      'Bạn đã làm mất một vật dụng quan trọng đối với việc học tập hoặc sở thích cá nhân. Hậu quả của tình huống này đối với bạn sẽ:',
      'Bạn bị mất cơ hội tham gia một hoạt động ngoại khóa mà bạn rất mong chờ. Hậu quả của tình huống này đối với bạn sẽ:',
      'Dù đã tìm khắp nơi, bạn vẫn không thể tìm thấy vở ghi chép quan trọng cho bài kiểm tra sắp tới. Hậu quả của tình huống này đối với bạn sẽ:'
    ]
  ];

  final List<List<String>> resultsData = [
    [
      'Điểm cao (20-25 điểm): Bạn kiểm soát tốt các tình huống và giữ vững tinh thần tích cực.',
      'Điểm trung bình (12-19 điểm): Bạn kiểm soát ở mức trung bình, cần cải thiện trong một số tình huống.',
      'Điểm thấp (5-11 điểm): Bạn dễ cảm thấy bị áp lực và mất kiểm soát trong nhiều tình huống.'
    ],
    [
      'Điểm cao (20-25 điểm): Bạn sẵn sàng chủ động cải thiện những tình huống khó khăn.',
      'Điểm trung bình (12-19 điểm): Bạn có xu hướng cân nhắc nhưng không luôn chủ động.',
      'Điểm thấp (5-11 điểm): Bạn thường tránh trách nhiệm và không chủ động cải thiện tình hình.'
    ],
    [
      'Điểm cao (20-25 điểm): Bạn giới hạn ảnh hưởng của nghịch cảnh, duy trì tinh thần lạc quan.',
      'Điểm trung bình (12-19 điểm): Bạn đôi lúc cảm thấy nghịch cảnh ảnh hưởng lớn, nhưng không nghiêm trọng.',
      'Điểm thấp (5-11 điểm): Bạn dễ cảm thấy nghịch cảnh tác động lớn đến toàn bộ cuộc sống.'
    ],
    [
      'Điểm cao (20-25 điểm): Bạn lạc quan và coi nghịch cảnh là tạm thời.',
      'Điểm trung bình (12-19 điểm): Bạn cảm thấy các khó khăn kéo dài và cần cố gắng để vượt qua.',
      'Điểm thấp (5-11 điểm): Bạn dễ cảm thấy thất vọng và mất năng lượng khi gặp nghịch cảnh.'
    ]
  ];
  final List<String> groupName = [
    'Kiểm soát',
    'Nguồn gốc và Trách nhiệm',
    'Phạm vi ảnh hưởng',
    'Tính lâu dài'
  ];
  List<String> lowScore = [
    'Không hề',
    'Không chủ động',
    'Ảnh hưởng đến\nmọi khía cạnh',
    'Kéo dài mãi mãi '
  ];
  List<String> highScore = [
    'Hoàn toàn',
    'Hoàn toàn chủ động',
    'chỉ liên quan đến\nhoạt động này',
    'Nhanh chóng vượt qua'
  ];

  final List<List<int>> scoresPerGroup = [[], [], [], []];
  int currentGroupIndex = 0;
  int currentQuestionIndex = 0;
  int selectedContainerIndex = -1;

  late CardController controller;
  @override
  void initState() {
    super.initState();
    controller = CardController(); // Initialize controller in initState
  }

  void moveToNextQuestion() {
    if (selectedContainerIndex != -1) {
      setState(() {
        // Store the score for the current question
        scoresPerGroup[currentGroupIndex].add(selectedContainerIndex + 1);

        // Check if the current group has more questions
        if (currentQuestionIndex <
            groupsOfQuestions[currentGroupIndex].length - 1) {
          currentQuestionIndex++;
          selectedContainerIndex = -1; // Reset the selection
        } else {
          // All questions in the current group are completed
          if (currentGroupIndex < groupsOfQuestions.length - 1) {
            currentGroupIndex++;
            currentQuestionIndex = 0; // Reset for the new group
            selectedContainerIndex = -1; // Reset the selection

            // Rebuild the card stack for the next group
            controller =
                CardController(); // Create a new controller for the new group
          } else {
            // All groups are completed
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ResultScreen(
                  scoresPerGroup: scoresPerGroup,
                  resultsData: resultsData,
                  groupName: groupName,
                ),
              ),
            );
          }
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final bool hasQuestions = groupsOfQuestions[currentGroupIndex].isNotEmpty;
    final bool isCompleted =
        currentQuestionIndex >= groupsOfQuestions[currentGroupIndex].length;

    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          // Background and UI
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
          Positioned(
            top: Get.height * .17,
            child: Text(
              'Chọn đáp án phù hợp với bạn',
              style: GoogleFonts.inter(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          if (hasQuestions && !isCompleted)
            Positioned(
              top: Get.height * .22,
              child: Column(
                children: [
                  Container(
                    height: 16,
                    width: Get.width * .75,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment(0.67, -0.75),
                        end: Alignment(-0.67, 0.75),
                        colors: [Color(0xFF3550DC), Color(0xFF2CB2ED)],
                      ),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8),
                          topRight: Radius.circular(8)),
                    ),
                  ),
                  Container(
                    // height: 20,
                    padding: EdgeInsets.symmetric(horizontal: 18, vertical: 4),
                    width: Get.width * .84,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment(0.67, -0.75),
                        end: Alignment(-0.67, 0.75),
                        colors: [Color(0xFF3550DC), Color(0xFF2CB2ED)],
                      ),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8),
                          topRight: Radius.circular(8)),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Group ${currentGroupIndex + 1} :',
                          style: GoogleFonts.inter(
                            color: Colors.white,
                            // color: const Color(0xFF001894),

                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        Expanded(
                          child: Text(
                            '${groupName[currentGroupIndex]}',
                            style: GoogleFonts.inter(
                              color: Colors.white,
                              // color: const Color(0xFF001894),

                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.4,
                    width: Get.width * .89,
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        begin: Alignment(0.67, -0.75),
                        end: Alignment(-0.67, 0.75),
                        colors: [Color(0xFF3550DC), Color(0xFF2CB2ED)],
                      ),
                      borderRadius: BorderRadius.circular(8),
                      // border: Border.all(
                      //   strokeAlign: BorderSide.strokeAlignOutside,
                      //   color: const Color(0x7F001894),
                      // ),
                    ),
                    //               child: TinderSwapCard(
                    // swipeUp: false,
                    // swipeDown: false,
                    // orientation: AmassOrientation.top,
                    // totalNum: groupsOfQuestions[currentGroupIndex].length,
                    // stackNum: 3,
                    // swipeEdge: 4.0,
                    // maxWidth: MediaQuery.of(context).size.width * 0.9,
                    // maxHeight: MediaQuery.of(context).size.width * 0.9,
                    // minWidth: MediaQuery.of(context).size.width * 0.8,
                    // minHeight: MediaQuery.of(context).size.width * 0.8,
                    // cardBuilder: (context, index) => Card(
                    //   child: Container(
                    // decoration: BoxDecoration(
                    //   gradient: const LinearGradient(
                    //     begin: Alignment(0.67, -0.75),
                    //     end: Alignment(-0.67, 0.75),
                    //     colors: [Color(0xFF3550DC), Color(0xFF2CB2ED)],
                    //   ),
                    //   borderRadius: BorderRadius.circular(10),
                    //   border: Border.all(
                    //     strokeAlign: BorderSide.strokeAlignOutside,
                    //     color: const Color(0x7F001894),
                    //   ),
                    // ),
                    child: Stack(
                      children: [
                        Image.asset('assets/top.png'),
                        Positioned(
                          top: 18,
                          left: Get.width * .29,
                          child: Text(
                            'Câu hỏi: ${currentQuestionIndex + 1} / ${groupsOfQuestions[currentGroupIndex].length}',
                            style: GoogleFonts.inter(
                              color: const Color(0xFF001894),
                              fontSize: 17,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Positioned(
                          top: Get.height * .15,
                          right: 10,
                          left: 10,
                          child: Text(
                            groupsOfQuestions[currentGroupIndex]
                                [currentQuestionIndex],
                            textAlign: TextAlign.center,
                            style: GoogleFonts.inter(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        // Positioned(
                        //   top: 10,
                        //   left: Get.width*.1,
                        //   // right: Get.width*.1,
                        //   child: Text(
                        //     'Group: ${currentGroupIndex+1} ${groupName[currentGroupIndex]}',
                        //     style: GoogleFonts.inter(
                        //       color: Colors.white,
                        //       // color: const Color(0xFF001894),

                        //       fontSize: 15,
                        //       fontWeight: FontWeight.w600,
                        //     ),
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

          Positioned(
            bottom: Get.height * .25,
            left: 20,
            right: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  // 'Không hề',
                  lowScore[currentGroupIndex],
                  // textAlign: TextAlign.center,
                  style: GoogleFonts.inter(
                    color: const Color(0xFF001894),
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),

                SizedBox(
                  width: 22,
                ),
                Text(
                  // 'Hoàn toàn',
                  highScore[currentGroupIndex],
                
                  style: GoogleFonts.inter(
                    color: const Color(0xFF001894),
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          if (hasQuestions && !isCompleted)
            Positioned(
              bottom: Get.height * .15,
              left: 16,
              right: 16,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(
                  5,
                  (index) => CustomContainer(
                    index: index,
                    isSelected: selectedContainerIndex == index,
                    onTap: () {
                      setState(() {
                        selectedContainerIndex = index;
                      });
                    },
                  ),
                ),
              ),
            ),
          Positioned(
            bottom: 28,
            right: 18,
            child: InkWell(
              onTap: moveToNextQuestion,
              child: Container(
                padding: const EdgeInsets.all(6),
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 1, color: Color(0xFF2E9CE9)),
                    borderRadius: BorderRadius.circular(55),
                  ),
                ),
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 29, vertical: 7),
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
                        'Tiếp',
                        style: GoogleFonts.inter(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      )
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

class CustomContainer extends StatelessWidget {
  final int index;
  final bool isSelected;
  final VoidCallback onTap;

  const CustomContainer({
    Key? key,
    required this.index,
    required this.isSelected,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: screenWidth * 0.057,
          vertical: screenHeight * 0.0086,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(screenWidth * 0.04),
          gradient: LinearGradient(
            begin: const Alignment(0.21, -0.98),
            end: const Alignment(-0.21, 0.98),
            colors: isSelected
                ? [const Color(0xFFF3C444), const Color(0xFFF5CC4A)]
                : [const Color(0xFF3550DC), const Color(0xFF2CB2ED)],
          ),
        ),
        child: Text(
          '${index + 1}',
          style: GoogleFonts.inter(
            color: const Color(0xFF001894),
            fontSize:
                screenWidth * 0.09, // Adjust font size based on screen width
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
