import 'package:app/src/app/presentation/components/custom_app_bar.dart';
import 'package:app/src/app/presentation/theme/color_theme.dart';
import 'package:app/src/app/presentation/utils/consts.dart';
import 'package:flutter/material.dart';

class PolicyTermsScreen extends StatefulWidget {
  const PolicyTermsScreen({super.key});

  @override
  State<PolicyTermsScreen> createState() => _PolicyTermsScreenState();
}

class _PolicyTermsScreenState extends State<PolicyTermsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: customAppBar(
        context,
        title: "Policy terms",
        isDetail: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kPadding * 2.5),
            child: Column(
              children: [
                const SizedBox(height: kPadding * 3),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(kPadding * 2),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(kRadius),
                      border: Border.all(color: kTBorderColor)),
                  child: const Text(
                    """
Điều khoản và Chính sách sử dụng ứng dụng T3order

Chào mừng bạn đến với ứng dụng T3order. Ứng dụng được cung cấp bởi T3order và chịu ràng buộc bởi các điều khoản và chính sách sử dụng này.
Bằng cách sử dụng Ứng dụng, bạn đồng ý tuân thủ các Điều khoản này. Nếu bạn không đồng ý với bất kỳ điều khoản nào trong số này, vui lòng ngừng sử dụng Ứng dụng.
1. Quyền sở hữu trí tuệ
Tất cả nội dung trong Ứng dụng, bao gồm nhưng không giới hạn ở văn bản, hình ảnh, video, âm thanh và mã, đều là tài sản trí tuệ của Công ty hoặc bên cấp phép của Công ty. Bạn không được phép sử dụng bất kỳ nội dung nào trong Ứng dụng cho mục đích thương mại mà không có sự đồng ý bằng văn bản trước của Công ty.
2. Tài khoản người dùng
Để sử dụng một số tính năng nhất định của Ứng dụng, bạn có thể cần tạo tài khoản người dùng. Khi tạo tài khoản người dùng, bạn phải cung cấp thông tin chính xác và đầy đủ. Bạn phải chịu trách nhiệm giữ mật khẩu tài khoản của mình an toàn và bạn phải báo cáo cho chúng tôi ngay lập tức về bất kỳ hoạt động trái phép nào trên tài khoản của bạn.
3. Quyền truy cập vào Ứng dụng
Chúng tôi có quyền hạn chế hoặc chấm dứt quyền truy cập của bạn vào Ứng dụng bất cứ lúc nào, với hoặc không có lý do.
4. Hành vi của người dùng
Bạn đồng ý không sử dụng Ứng dụng cho bất kỳ mục đích nào bất hợp pháp hoặc trái đạo đức. Bạn cũng đồng ý không sử dụng Ứng dụng để truyền bá nội dung có hại hoặc xúc phạm, bao gồm nhưng không giới hạn ở lời nói căm thù, nội dung bạo lực và nội dung khiêu dâm.
5. Tuyên bố miễn trừ trách nhiệm
Ứng dụng được cung cấp "nguyên trạng" và "theo khả năng". Chúng tôi không đảm bảo rằng Ứng dụng sẽ không bị gián đoạn hoặc không có lỗi. Chúng tôi cũng không chịu trách nhiệm về bất kỳ thiệt hại nào phát sinh do việc sử dụng Ứng dụng của bạn.
6. Hạn chế trách nhiệm
Trong phạm vi tối đa được luật pháp cho phép, chúng tôi sẽ không chịu trách nhiệm cho bất kỳ thiệt hại trực tiếp, gián tiếp, ngẫu nhiên, đặc biệt hoặc do hậu quả nào phát sinh từ việc sử dụng Ứng dụng của bạn, ngay cả khi chúng tôi đã được thông báo về khả năng xảy ra thiệt hại đó.
7. Bồi thường
Bạn đồng ý bồi thường, bảo vệ và giữ chúng tôi vô hại khỏi mọi khiếu nại, yêu cầu bồi thường, thiệt hại, tổn thất, chi phí và phí tổn (bao gồm phí luật sư) phát sinh do hoặc liên quan đến việc sử dụng Ứng dụng của bạn, vi phạm các Điều khoản này hoặc vi phạm bất kỳ luật pháp hoặc quy định nào áp dụng.
8. Thay đổi
Chúng tôi có thể thay đổi các Điều khoản này bất cứ lúc nào. Bằng cách tiếp tục sử dụng Ứng dụng sau khi có bất kỳ thay đổi nào đối với các Điều khoản này, bạn đồng ý với các thay đổi đó.
9. Luật pháp chi phối
Các Điều khoản này được chi phối và giải thích theo luật pháp của Việt Nam. Bất kỳ tranh chấp nào phát sinh từ hoặc liên quan đến các Điều khoản này sẽ được giải quyết độc quyền bởi các tòa án có thẩm quyền tại Việt Nam.
10. Khả năng chia cắt
Nếu bất kỳ điều khoản nào của các Điều khoản này bị coi là không hợp lệ hoặc không thể thi hành, điều khoản đó sẽ bị loại bỏ khỏi các Điều khoản này và các điều khoản còn lại sẽ vẫn có hiệu lực đầy đủ.
11. Tuyên bố từ bỏ
Bất kỳ sự thất bại nào trong việc thực thi bất kỳ điều khoản nào của các Điều khoản này sẽ không được coi là sự từ bỏ điều khoản đó hoặc bất kỳ điều khoản nào khác của các Điều khoản này.
""",
                    style: TextStyle(
                        fontSize: 14,
                        color: kBlackColor,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                const SizedBox(height: kPadding * 3),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
