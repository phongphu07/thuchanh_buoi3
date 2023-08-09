import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../size_config.dart';

class FormErrorWidget extends StatelessWidget {
  const FormErrorWidget({
    Key? key,
    required this.errors,
  }) : super(key: key);

  final List<String?> errors;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
          errors.length, (index) => formErrorText(error: errors[index]!)),
    );
  }

  Row formErrorText({required String error}) {
    return Row(
      children: [
        SvgPicture.asset(
          "assets/icons/Error.svg",
          height: getProportionateScreenWidth(14),
          width: getProportionateScreenWidth(14),
        ),
        SizedBox(
          width: getProportionateScreenWidth(10),
        ),
        Text(error),
      ],
    );
  }
}
class NoAccountText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Định nghĩa giao diện cho widget NoAccountText ở đây
    // Ví dụ:
    return GestureDetector(
      onTap: () {
        // Xử lý khi người dùng bấm vào văn bản "Don't have an account? Sign Up"
      },
      child: Text(
        "Don't have an account? Sign Up",
        style: TextStyle(decoration: TextDecoration.underline),
      ),
    );
  }
}