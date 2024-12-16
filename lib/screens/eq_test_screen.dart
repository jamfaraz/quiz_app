import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qna_app/screens/main_screen.dart';

class EqTestScreen extends StatefulWidget {
  const EqTestScreen({super.key});

  @override
  State<EqTestScreen> createState() => _EqTestScreenState();
}

class _EqTestScreenState extends State<EqTestScreen> {
  List<String> articleName = [
    'Bài tập tư duy tích cực',
    'Bài tập đặt mục tiêu',
    'Bài tập mô phỏng tình huống',
    'Bài tập viết nhật ký cảm xúc',
    'Bài tập kịch bản tương lai',
    'Tư duy phản biện',
    'Bài tập viết nhật ký thử thách',
    'Bài tập Bản đồ tác động',
    'Bài tập Kế hoạch hành động cá nhân',
    'Bài tập Thử thách bền bỉ',
    'Bài tập: "Chuyển hóa nghịch cảnh thành cơ hội"',
    'Bài tập: "Kể chuyện cảm xúc"',
    'Bài tập "Suy nghĩ đa chiều"',
    'Bài tập "Hộp công cụ cảm xúc"',
    'Bài tập: "Công cụ đối phó với thất bại"',
    'Bài tập: Hành trình vượt chướng ngại vật',
    'Bài tập "Bản cam kết hành động"',
    'Bài tập: "Học cách chấp nhận thất bại"',
    'Bài tập: "Thiết kế kế hoạch học tập bền vững"',
    'Bài tập: Quyết định thay đổi bản thân'
  ];

  List<String> articledetail = [
    // 'Mục tiêu: \nGiúp học sinh rèn luyện tư duy tích cực, tìm kiếm giá trị trong thử thách. \nPhát triển nhân tố kiểm soát (C) nhằm giúp học sinh kiểm soát cách họ nhìn nhận vấn đề và chuyển từ tiêu cực sang tích cực. Đồng thời phát triển nhân tố trách nhiệm (O) ở học sinh để học cách nhận trách nhiệm cá nhân thay vì đổ lỗi cho hoàn cảnh.\nCông cụ,\n đồ dùng cần chuẩn bị: Giấy viết hoặc sổ tay cá nhân, bút, mẫu bài tập gồm các câu hỏi gợi ý: "Điều gì đã xảy ra?", "Ba điều tích cực nào bạn rút ra được từ tình huống này?", "Bạn đã hoặc sẽ làm gì để thay đổi tình huống nếu gặp lại?"\n\nYêu cầu:\nViết ít nhất 200 từ.Chia sẻ bài viết với bạn học để cùng thảo luận và khích lệ lẫn nhau.\n\nHướng dẫn:\nHọc sinh hãy dành 10 phút để viết về một trải nghiệm khó khăn mà các em từng gặp phải (ví dụ: điểm kém trong một bài kiểm tra, xích mích với bạn bè).\nSau khi mô tả chi tiết tình huống, các em liệt kê ít nhất 3 bài học hoặc điều tích cực mà mình có được từ tình huống đó (ví dụ: Nếu bị điểm kém, có thể học được sự quan trọng của việc chuẩn bị trước và phân bổ thời gian hợp lý).',
    """
Mục tiêu: 
Giúp học sinh rèn luyện tư duy tích cực, tìm kiếm giá trị trong thử thách. 
Phát triển nhân tố kiểm soát (C) nhằm giúp học sinh kiểm soát cách họ nhìn nhận vấn đề và chuyển từ tiêu cực sang tích cực. Đồng thời phát triển nhân tố trách nhiệm (O) ở học sinh để học cách nhận trách nhiệm cá nhân thay vì đổ lỗi cho hoàn cảnh.

Công cụ, đồ dùng cần chuẩn bị: 
- Giấy viết hoặc sổ tay cá nhân 
- Bút 
- Mẫu bài tập gồm các câu hỏi gợi ý: 
  * "Điều gì đã xảy ra?" 
  * "Ba điều tích cực nào bạn rút ra được từ tình huống này?" 
  * "Bạn đã hoặc sẽ làm gì để thay đổi tình huống nếu gặp lại?"

Yêu cầu: 
- Viết ít nhất 200 từ. 
- Chia sẻ bài viết với bạn học để cùng thảo luận và khích lệ lẫn nhau.

Hướng dẫn: 
Học sinh hãy dành 10 phút để viết về một trải nghiệm khó khăn mà các em từng gặp phải (ví dụ: điểm kém trong một bài kiểm tra, xích mích với bạn bè). Sau khi mô tả chi tiết tình huống, các em liệt kê ít nhất 3 bài học hoặc điều tích cực mà mình có được từ tình huống đó (ví dụ: Nếu bị điểm kém, có thể học được sự quan trọng của việc chuẩn bị trước và phân bổ thời gian hợp lý).
""",
    """
Mục tiêu:
- Phát triển sự kiên trì và khả năng điều chỉnh kế hoạch khi đối diện thử thách.
- Phát triển nhóm nhân tố Kiểm soát: Rèn luyện khả năng lập kế hoạch và tự kiểm soát các bước hành động.
- Phát triển nhóm nhân tố Tính lâu dài: Giúp học sinh học cách kiên trì với mục tiêu ngay cả khi gặp thất bại.

Công cụ, đồ dùng cần chuẩn bị:
- Bút và sổ tay, bảng đánh giá tiến độ (có thể dùng file Excel hoặc bản in), mẫu kế hoạch hành động gồm các phần:
  1. Mục tiêu cụ thể (SMART).
  2. Các bước hành động.
  3. Thời gian hoàn thành cho từng bước.
  4. Cách khắc phục nếu không hoàn thành bước nào.

Yêu cầu:
- Viết mục tiêu và kế hoạch vào sổ tay.
- Cập nhật tiến độ mỗi tuần và trình bày với giáo viên.

Hướng dẫn:
- Mỗi học sinh đặt ra một mục tiêu cụ thể trong học tập hoặc cuộc sống (ví dụ: đạt điểm cao hơn trong môn Toán hoặc tham gia đội bóng của trường).
- Lập kế hoạch hành động gồm các bước chi tiết. Ví dụ:
  - Tuần 1: Ôn lại các khái niệm Toán học cơ bản.
  - Tuần 2: Làm các bài tập luyện tập mỗi ngày trong 30 phút.
- Nếu gặp khó khăn (ví dụ: không thể hoàn thành bài tập đúng giờ), hãy điều chỉnh kế hoạch và ghi chú lại điều mình đã thay đổi.
""",
    """
Mục tiêu: 
Phát triển nhóm Phạm vi ảnh hưởng: Giúp học sinh nhận thức rõ ảnh hưởng của vấn đề và cách thu hẹp phạm vi tác động của nó.
Phát triển nhóm Tính lâu dài: Xây dựng khả năng phục hồi và vượt qua những trở ngại tưởng chừng không thể giải quyết.

Công cụ, đồ dùng cần chuẩn bị:
- Thẻ tình huống giả định: Mỗi thẻ ghi một tình huống khó khăn (ví dụ: "Bạn bị điểm kém trong bài kiểm tra quan trọng", "Bạn và bạn thân cãi nhau").
- Bảng thảo luận nhóm để ghi lại giải pháp.
- Không gian đủ rộng để học sinh diễn kịch.
- Một chiếc đồng hồ để giới hạn thời gian chuẩn bị và trình bày (20 phút chuẩn bị, 10 phút trình bày mỗi nhóm).

Yêu cầu:
- Thời gian chuẩn bị: 20 phút.
- Mỗi nhóm trình bày và diễn kịch trong 5-10 phút.

Hướng dẫn:
- Chia lớp thành các nhóm 4-5 học sinh.
- Mỗi nhóm sẽ được giao một tình huống khó khăn (ví dụ: trượt kỳ thi đại học, gặp áp lực từ gia đình về chọn ngành học).
- Các nhóm sẽ cùng nhau thảo luận và đưa ra 2-3 cách giải quyết tình huống, đồng thời diễn kịch mô phỏng cách họ vượt qua thử thách.
""",
    """
Mục tiêu: 
Phát triển nhóm Kiểm soát: Giúp học sinh kiểm soát cảm xúc và phản ứng của bản thân.
Phát triển nhóm Trách nhiệm: Khuyến khích học sinh nhận trách nhiệm về cách xử lý cảm xúc của mình.

Công cụ, đồ dùng cần chuẩn bị:
- Nhật ký cảm xúc (có thể phát cho mỗi học sinh một cuốn sổ thiết kế riêng hoặc sử dụng sổ tay cá nhân).
- Mẫu câu hỏi trong nhật ký: "Bạn đã cảm thấy gì hôm nay?", "Điều gì gây ra cảm xúc đó?", "Bạn đã xử lý cảm xúc này như thế nào?"
- Hộp cảm xúc (học sinh có thể nộp nhật ký vào hộp nếu muốn chia sẻ với giáo viên để nhận phản hồi).

Yêu cầu:
- Viết nhật ký ít nhất 3 lần/tuần.
- Tập trung vào các kỹ thuật quản lý cảm xúc (viết ra 3 điều khiến các em cảm thấy bình tĩnh hơn).

Hướng dẫn:
- Học sinh ghi lại cảm xúc mỗi ngày, đặc biệt khi gặp một tình huống khó khăn (ví dụ: lo lắng trước bài kiểm tra, buồn bã vì mâu thuẫn với bạn bè).
- Mô tả chi tiết cảm xúc, nguyên nhân, và cách các em đã hoặc có thể xử lý cảm xúc đó (ví dụ: hít thở sâu, tâm sự với người thân).
""",
    """
Mục tiêu:
- Phát triển nhóm nhân tố kiểm soát: Tăng cường khả năng lên kế hoạch và kiểm soát hành động trong tương lai.
- Phát triển nhóm nhân tố tính lâu dài: Rèn luyện tinh thần đối mặt với thử thách dài hạn.

Công cụ, đồ dùng cần chuẩn bị:
- Bút viết.
- Phiếu bài tập kịch bản tương lai:
  - Tình huống giả định (ví dụ: "Bạn không đạt được mục tiêu học bổng").
  - Câu hỏi hướng dẫn: "Bạn sẽ cảm thấy thế nào?", "Bạn sẽ làm gì để cải thiện tình hình?", "Ai có thể giúp bạn vượt qua khó khăn này?"

Yêu cầu:
- Viết kịch bản trong 300-400 từ.
- Chia sẻ kế hoạch với lớp và nhận phản hồi từ bạn bè.

Hướng dẫn:
- Yêu cầu học sinh tưởng tượng một thách thức lớn trong tương lai (ví dụ: không đạt được ngành học mơ ước, gặp khó khăn tài chính).
- Viết ra kế hoạch chi tiết gồm các bước để vượt qua thách thức này (ví dụ: tìm học bổng, làm thêm kiếm tiền).
""",
    """
Mục tiêu: 
- Phát triển nhân tố phạm vi ảnh hưởng: Giúp học sinh xác định phạm vi ảnh hưởng của vấn đề và tìm cách thu hẹp nó.
- Phát triển nhân tố trách nhiệm: Khuyến khích học sinh đưa ra giải pháp sáng tạo và nhận trách nhiệm với ý tưởng của mình.

Công cụ, đồ dùng cần chuẩn bị:
- Vấn đề thảo luận: (có thể in ra hoặc viết trên bảng):
  - "Áp lực học tập có ảnh hưởng như thế nào đến sức khỏe tinh thần học sinh?"
  - "Làm thế nào để giảm tác động tiêu cực của mạng xã hội đối với thanh thiếu niên?"
- Bảng giấy lớn hoặc bảng trắng để các nhóm ghi giải pháp.
- Bút dạ màu để học sinh vẽ sơ đồ hoặc trình bày ý tưởng.

Yêu cầu:
- Chuẩn bị trong 30 phút.
- Thuyết trình 10 phút và thảo luận 5 phút.

Hướng dẫn:
- Giáo viên đưa ra một vấn đề xã hội (ví dụ: áp lực học tập, tác động của mạng xã hội).
- Học sinh làm việc theo nhóm để tìm giải pháp khả thi, thảo luận về ưu và nhược điểm của mỗi giải pháp.
- Thuyết trình về giải pháp của nhóm và trả lời câu hỏi phản biện từ các bạn khác.
""",
    """
Mục tiêu: 
- Phát triển yếu tố kiểm soát bằng cách giúp học sinh nhận diện và kiểm soát phản ứng của mình trước các thử thách hàng ngày.

Công cụ, đồ dùng cần chuẩn bị: 
- Sổ tay hoặc giấy viết.
- Bút.

Yêu cầu: 
- Học sinh ghi chép hàng ngày về những thử thách đã gặp phải và cách họ phản ứng.
- Phân tích xem phản ứng đó có hiệu quả không và đề xuất cách cải thiện.

Hướng dẫn: 
- Mỗi ngày, học sinh dành 10-15 phút để viết về một tình huống khó khăn đã trải qua.
- Mô tả chi tiết tình huống và cảm xúc của mình.
- Đánh giá cách phản ứng của bản thân: Điều gì đã làm tốt? Điều gì cần cải thiện?
- Đề xuất phương pháp khác để xử lý tình huống tương tự trong tương lai.
""",
    """
Mục tiêu: 
- Tăng cường yếu tố phạm vi ảnh hưởng bằng cách giúp học sinh nhận thức phạm vi ảnh hưởng của một vấn đề và cách giới hạn tác động của nó.

Công cụ, đồ dùng cần chuẩn bị: 
- Giấy A3 hoặc bảng trắng, bút màu.

Yêu cầu: 
- Học sinh vẽ sơ đồ thể hiện một vấn đề và các lĩnh vực trong cuộc sống bị ảnh hưởng.
- Xác định các biện pháp để giới hạn tác động của vấn đề đó.

Hướng dẫn:
- Chọn một vấn đề cụ thể (ví dụ: áp lực thi cử).
- Vẽ một vòng tròn ở giữa giấy, ghi tên vấn đề.
- Vẽ các nhánh ra xung quanh, mỗi nhánh đại diện cho một lĩnh vực bị ảnh hưởng (học tập, sức khỏe, quan hệ xã hội...).
- Ghi chú cách vấn đề ảnh hưởng đến từng lĩnh vực.
- Đối với mỗi lĩnh vực, đề xuất biện pháp cụ thể để giảm thiểu tác động.
""",
    """
Mục tiêu: 
- Phát triển yếu tố trách nhiệm bằng cách khuyến khích học sinh nhận trách nhiệm và chủ động trong việc giải quyết vấn đề.

Công cụ, đồ dùng cần chuẩn bị: 
- Mẫu kế hoạch hành động (có thể in sẵn), bút.

Yêu cầu: 
- Học sinh xác định một vấn đề cá nhân và lập kế hoạch chi tiết để giải quyết.
- Thực hiện kế hoạch và theo dõi tiến độ.

Hướng dẫn:
- Xác định một vấn đề cụ thể mà học sinh đang đối mặt (ví dụ: quản lý thời gian kém).
- Điền vào mẫu kế hoạch hành động với các mục:
    + Mục tiêu cụ thể.
    + Các bước hành động chi tiết.
    + Thời gian hoàn thành cho từng bước.
    + Nguồn lực hỗ trợ (bạn bè, thầy cô, tài liệu...).
- Thực hiện kế hoạch và ghi chú lại tiến độ hàng tuần.
- Đánh giá kết quả sau một tháng và điều chỉnh nếu cần.
""",
    """
Mục tiêu: 
- Tăng cường yếu tố tính lâu dài bằng cách rèn luyện sự kiên trì và khả năng đối mặt với khó khăn trong thời gian dài.
- Phát triển yếu tố Kiểm soát: Giúp học sinh kiểm soát góc nhìn về vấn đề, tập trung vào mặt tích cực thay vì tiêu cực.
- Phát triển yếu tố Trách nhiệm: Tăng khả năng tự chịu trách nhiệm bằng cách tìm cách học hỏi từ nghịch cảnh.

Công cụ, đồ dùng cần chuẩn bị:
- Danh sách các nhiệm vụ hoặc thử thách kéo dài (ví dụ: đọc một cuốn sách dày, tham gia khóa học trực tuyến).
- Bảng theo dõi tiến độ.

Yêu cầu:
- Học sinh chọn một thử thách kéo dài ít nhất 30 ngày.
- Theo dõi và ghi nhận tiến độ hàng ngày.

Hướng dẫn:
- Chọn một thử thách phù hợp với sở thích và mục tiêu cá nhân (ví dụ: chạy bộ mỗi ngày, học một kỹ năng mới).
- Sử dụng bảng theo dõi để ghi lại tiến độ hàng ngày.
- Ghi chú cảm xúc và khó khăn gặp phải trong quá trình thực hiện.
- Sau 30 ngày, đánh giá kết quả và rút ra bài học kinh nghiệm.
""",
    """
Mục tiêu: 
- Phát triển khả năng nhìn nhận khó khăn dưới góc độ tích cực.

Phát triển yếu tố Kiểm soát: 
- Giúp học sinh kiểm soát góc nhìn về vấn đề, tập trung vào mặt tích cực thay vì tiêu cực.

Phát triển yếu tố Trách nhiệm:
- Tăng khả năng tự chịu trách nhiệm bằng cách tìm cách học hỏi từ nghịch cảnh.

Công cụ, đồ dùng: 
- Giấy, bút màu.

Yêu cầu: 
- Một số tình huống khó xử hoặc mâu thuẫn giả định.
- Thảo luận nhóm và viết các cách khác nhau để giải quyết tình huống.
- Mỗi nhóm chọn một cách tiếp cận và thuyết trình.

Cách thực hiện:
- Giáo viên đưa ra một tình huống khó khăn giả định (ví dụ: điểm thi không như mong đợi, mất đi cơ hội tham gia hoạt động yêu thích).
- Học sinh sẽ viết một đoạn văn hoặc thảo luận về cách họ có thể chuyển đổi tình huống này thành cơ hội học hỏi và phát triển.
""",
    """
Mục tiêu: 
- Phát triển khả năng tự nhận thức và quản lý cảm xúc.

Phát triển yếu tố Kiểm soát: 
- Học cách nhận diện cảm xúc và quản lý chúng một cách hợp lý.

Phát triển yếu tố Phạm vi ảnh hưởng: 
- Xác định cảm xúc ảnh hưởng đến bản thân và người xung quanh.

Yêu cầu:
- Trình bày sự kiện khiến bản thân buồn hoặc thất vọng.
- Phân tích cảm xúc và cách xử lý cảm xúc đó.

Công cụ, đồ dùng: 
- Bút, giấy, sổ tay.

Cách thực hiện:
- Học sinh viết hoặc kể lại một câu chuyện ngắn về một sự kiện khiến họ cảm thấy rất buồn và thất vọng.
- Sau đó, học sinh phân tích cảm xúc của mình trong tình huống đó và giải thích cách họ đã xử lý cảm xúc đó.
- Cả lớp cùng thảo luận về những cảm xúc khác nhau trong cùng một tình huống.
""",
    """
Mục tiêu:
- Phát triển khả năng tư duy phản biện và đồng cảm.
- Rèn luyện kỹ năng giao tiếp và hợp tác nhóm.

Phát triển yếu tố Phạm vi ảnh hưởng: 
- Học sinh xác định được mức độ ảnh hưởng của vấn đề đến các bên liên quan.

Phát triển yếu tố Kiểm soát: 
- Khuyến khích học sinh kiểm soát các hành vi và lời nói để giảm thiểu tác động tiêu cực.

Công cụ cần chuẩn bị: 
- Một số tình huống khó xử hoặc mâu thuẫn giả định.

Yêu cầu:
- Thảo luận nhóm và viết ra ít nhất 3 cách tiếp cận khác nhau để giải quyết tình huống.
- Mỗi nhóm chọn một cách tiếp cận và thuyết trình.

Hướng dẫn:
+ Học sinh thảo luận theo nhóm về tình huống (ví dụ: “Một bạn trong nhóm không làm phần việc của mình”). Sau đó, tìm giải pháp dựa trên nhiều góc nhìn: từ góc nhìn của bạn đó, của nhóm trưởng, và của cả nhóm.
""",
    """
Mục tiêu:
- Phát triển khả năng quản lý cảm xúc hiệu quả.
- Tăng cường nhận thức về các chiến lược điều chỉnh cảm xúc.

Phát triển yếu tố Kiểm soát: 
- Giúp học sinh quản lý và kiểm soát cảm xúc của mình trong các tình huống khó khăn.

Phát triển yếu tố Trách nhiệm: 
- Nhận trách nhiệm về cách bản thân xử lý cảm xúc.

Công cụ cần chuẩn bị:
- Một bảng liệt kê các cảm xúc phổ biến và các phương pháp xử lý tương ứng.
- Mẫu bài tập "Chiến lược xử lý cảm xúc."

Yêu cầu:
- Ghi lại ít nhất 5 tình huống trong tuần mà các em gặp cảm xúc mạnh.
- Liệt kê chiến lược đã sử dụng để xử lý cảm xúc đó và đánh giá hiệu quả.

Hướng dẫn:
- Giáo viên giới thiệu các chiến lược như: viết ra suy nghĩ, vận động, tìm người để tâm sự. 
- Học sinh thử áp dụng các chiến lược này và ghi lại kết quả.
""",
    """
Mục tiêu: 
- Giúp học sinh phát triển các chiến lược đối phó với thất bại.

Phát triển yếu tố Kiểm soát:
- Tập trung vào các giải pháp thay vì vấn đề.

Phát triển yếu tố Tính lâu dài:
- Giúp học sinh học cách vượt qua thất bại và kiên trì với mục tiêu.

Công cụ: 
- Giấy A4, bút bi, bút màu.

Yêu cầu:
- Học sinh xác định một vấn đề khó khăn, đã từng thất bại và cách ứng phó với nó.
- Trình bày trước lớp.
- Thực hiện kế hoạch và theo dõi tiến độ.

Cách thực hiện:
- Học sinh sẽ liệt kê các tình huống mà họ cảm thấy thất bại trong học tập hoặc cuộc sống.
- Sau đó, học sinh sẽ nghĩ ra ít nhất ba chiến lược khác nhau để đối phó với thất bại và vượt qua khó khăn (ví dụ: tự động viên, xin lời khuyên, chia sẻ với người thân).
- Học sinh chia sẻ các chiến lược này với lớp và thảo luận về hiệu quả của từng chiến lược.
""",
    """
Mục tiêu:
- Phát triển khả năng tư duy tích cực và linh hoạt.
- Rèn luyện tính sáng tạo trong cách nhìn nhận và giải quyết vấn đề.

Phát triển yếu tố Kiểm soát:
- Giúp học sinh tập trung vào những gì mình có thể làm để thay đổi kết quả.

Phát triển yếu tố Trách nhiệm:
- Khuyến khích học sinh nhận trách nhiệm cho hành động của mình.

Công cụ cần chuẩn bị:
- Bộ câu hỏi gợi mở về các tình huống thực tế.
- Sổ tay và bút để ghi lại hành trình giải quyết vấn đề.

Yêu cầu:
- Học sinh viết về một tình huống khó khăn gần đây, nhưng tập trung vào cách giải quyết thay vì vấn đề.
- Nêu chi tiết từng bước mà họ đã hoặc sẽ thực hiện để vượt qua tình huống đó.

Hướng dẫn:
- Giáo viên cung cấp các ví dụ như: “Khi bạn mất động lực học tập, bạn đã làm gì để lấy lại động lực?” 
- Học sinh liệt kê và phân tích từng hành động nhỏ dẫn đến thành công cuối cùng.
""",
    """
Mục tiêu:
- Phát triển tinh thần trách nhiệm cá nhân.
- Tăng cường kỹ năng lập kế hoạch thực tế và cam kết thực hiện.

Phát triển yếu tố Kiểm soát:
- Học sinh học cách lập kế hoạch và kiểm soát các bước thực hiện.

Phát triển yếu tố Trách nhiệm:
- Tăng cường tinh thần chịu trách nhiệm khi không hoàn thành cam kết.

Công cụ cần chuẩn bị:
- Phiếu cam kết hành động (chia thành 3 phần: Mục tiêu, Cam kết cụ thể, Hậu quả nếu không hoàn thành).

Yêu cầu:
- Điền đầy đủ phiếu cam kết và nộp cho giáo viên.
- Theo dõi và cập nhật tiến độ hàng tuần.

Hướng dẫn:
- Giáo viên yêu cầu học sinh chọn một thói quen muốn cải thiện (ví dụ: làm bài tập đúng hạn, đọc sách mỗi ngày). 
- Sau đó, lập kế hoạch thực hiện cụ thể và mô tả cách họ sẽ chịu trách nhiệm nếu không hoàn thành.
""",
    """
Mục tiêu: 
- Giúp học sinh phát triển khả năng đối mặt với thất bại và học từ các sai lầm.

Phát triển yếu tố Kiểm soát:
- Học sinh tập trung vào những gì có thể thay đổi sau thất bại.

Phát triển yếu tố Tính lâu dài:
- Phát triển khả năng chấp nhận thất bại như một phần của quá trình học hỏi.

Công cụ, đồ dùng:
- Giấy, bút, sổ tay cá nhân.

Yêu cầu: 
- Nêu tình huống gặp khó khăn trong cuộc sống và công việc.
- Thảo luận và trình bày trước lớp.

Cách thực hiện:
- Yêu cầu học sinh chia sẻ một tình huống mà họ đã thất bại hoặc không đạt được kết quả như mong đợi (ví dụ: không đạt điểm cao trong kỳ thi).
- Cả lớp thảo luận về cách học sinh có thể học hỏi từ thất bại đó và làm gì để cải thiện trong tương lai.
""",
    """
Mục tiêu: 
- Giúp học sinh duy trì động lực và kiên trì trong học tập.

Phát triển yếu tố Tính lâu dài:
- Rèn luyện tính kiên trì trong việc theo đuổi các mục tiêu học tập.

Phát triển yếu tố Kiểm soát:
- Tăng cường khả năng lập kế hoạch và thực hiện một cách chủ động.

Cách thực hiện:
- Học sinh xây dựng một kế hoạch học tập dài hạn, bao gồm các mục tiêu cụ thể và các chiến lược để vượt qua các khó khăn học tập (ví dụ: cảm giác mệt mỏi, không hiểu bài).
- Kế hoạch này sẽ bao gồm các bước nhỏ, có thể đo lường được để học sinh thực hiện mỗi tuần.
""",
    """
Mục tiêu:
- Phát triển yếu tố Origin & Ownership (Trách nhiệm) bằng cách khuyến khích học sinh nhận ra vai trò của mình trong việc giải quyết vấn đề và tự chịu trách nhiệm cho sự thay đổi.
- Tăng khả năng lập kế hoạch và thực hiện những thay đổi mang tính cá nhân.

Công cụ, đồ dùng cần chuẩn bị:
- Giấy viết hoặc sổ tay cá nhân.
- Phiếu hướng dẫn bài tập gồm các câu hỏi gợi ý:
  1. Điều gì bạn muốn thay đổi ở bản thân?
  2. Lý do khiến bạn cần thay đổi điều này là gì?
  3. Bạn sẽ làm gì để thực hiện sự thay đổi này?
  4. Bạn mong đợi kết quả gì sau khi thay đổi?
  5. Ai có thể hỗ trợ bạn trong quá trình này?

Yêu cầu:
- Viết bài từ 200-300 từ, trả lời chi tiết các câu hỏi trong phiếu hướng dẫn.
- Thực hiện ít nhất một hành động cụ thể để bắt đầu thay đổi trong vòng 1 tuần và báo cáo lại kết quả.

Hướng dẫn:
1. Xác định vấn đề cá nhân: Chọn một thói quen hoặc khía cạnh bản thân mà bạn muốn cải thiện (ví dụ: quản lý thời gian, kỹ năng giao tiếp, kiểm soát cảm xúc).
2. Lên kế hoạch thay đổi: Trả lời các câu hỏi gợi ý, tập trung vào trách nhiệm và hành động.
3. Thực hiện và ghi nhận kết quả: Thực hiện hành động cụ thể và ghi lại kết quả.
4. Chia sẻ và thảo luận: Báo cáo kết quả và rút ra bài học từ sự thay đổi.
"""
  ];
  int selectedIndex = 0; // First article is shown by default.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/back.jpg', // Replace with your image path
              fit: BoxFit.cover,
            ),
          ),

          // Content over the background
          Padding(
            padding: const EdgeInsets.all(13.0),
            child: Column(
              children: [
                SizedBox(
                  height: Get.height * .04,
                ),
                Row(
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
                      height: MediaQuery.of(context).size.height * .1,
                    ),
                    CircleAvatar(
                      radius: 24,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(44),
                        child: Image.asset(
                          'assets/profile.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 16,
                  width: Get.width * .78,
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
                  padding: EdgeInsets.symmetric(horizontal: 18, vertical: 8),
                  width: Get.width * .87,
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
                Expanded(
                  child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          begin: Alignment(0.67, -0.75),
                          end: Alignment(-0.67, 0.75),
                          colors: [Color(0xFF3550DC), Color(0xFF2CB2ED)],
                        ),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Stack(
                        children: [
                          Align(
                            alignment: Alignment.topCenter,
                            child: Image.asset(
                              'assets/top.png',
                              // height: 88,
                              width: double.infinity,

                              fit: BoxFit
                                  .fitWidth, // Ensures the image fits the width, maintaining aspect ratio
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 12, vertical: 4),
                            child: Column(
                              children: [
                                const SizedBox(
                                  height: 18,
                                ),
                                Text(
                                  articleName[selectedIndex],
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.inter(
                                    color: const Color(0xFF001894),
                                    fontSize: 19,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(
                                  height: Get.height * .09,
                                ),
                                Expanded(
                                  child: SingleChildScrollView(
                                    physics: BouncingScrollPhysics(),
                                    child: Text(
                                      articledetail[selectedIndex],
                                      textAlign: TextAlign.start,
                                      style: GoogleFonts.inter(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )),
                ),
                const SizedBox(
                  height: 6,
                ),
                //     Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: [
                //     Text(
                //       'Không hề',
                //       style: GoogleFonts.inter(
                //         color: const Color(0xFF001894),
                //         fontSize: 16,
                //         fontWeight: FontWeight.w400,
                //       ),
                //     ),
                //     Text(
                //       'Hoàn toàn',
                //       style: GoogleFonts.inter(
                //         color: const Color(0xFF001894),
                //         fontSize: 16,
                //         fontWeight: FontWeight.w400,
                //       ),
                //     ),
                //   ],
                // ),

                Container(
                  // color: Colors.grey.shade200.withOpacity(0.8),
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: List.generate(
                        articleName.length,
                        (index) => Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: CustomContainer(
                            index: index,
                            isSelected: selectedIndex == index,
                            onTap: () {
                              setState(() {
                                selectedIndex = index;
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: InkWell(
                    onTap: () {
                      Get.offAll(() => MainScreen());
                    },
                    child: Container(
                      padding: const EdgeInsets.all(6),
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(
                              width: 1, color: Color(0xFF2E9CE9)),
                          borderRadius: BorderRadius.circular(55),
                        ),
                      ),
                      child: Container(
                        width: Get.width * .26,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 29, vertical: 6),
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
          horizontal: screenWidth * 0.046,
          vertical: screenHeight * 0.007,
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
                screenWidth * 0.088, // Adjust font size based on screen width
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
