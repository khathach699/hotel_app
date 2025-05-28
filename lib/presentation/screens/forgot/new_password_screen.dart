import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hotel_app/core/constants/app_strings.dart';
import 'package:hotel_app/presentation/screens/forgot/widgets/show_dialog.dart';
import 'package:hotel_app/presentation/widgets/button_custom.dart';
import 'package:hotel_app/presentation/widgets/text_field_custom.dart';
import 'package:hotel_app/core/utils/responsive.dart';

class NewPasswordScreen extends StatelessWidget {
  const NewPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive.of(context);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            context.pop();
          },
          icon: const Icon(Icons.arrow_back_outlined),
        ),
      ),
      body: Padding(
        padding: responsive.padding(all: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppStrings.titleNewPassword,
              style: TextStyle(
                fontSize: responsive.fontSize(30),
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: responsive.heightPercentage(0.2)),
            Text(
              AppStrings.subTitleNewPassword,
              style: TextStyle(fontSize: responsive.fontSize(14)),
            ),
            SizedBox(height: responsive.heightPercentage(5)),
            const Text(AppStrings.newPassword),
            SizedBox(height: responsive.heightPercentage(0.5)),
            TextFieldCustom(
              prefixIcon: Icons.password,
              hintText: AppStrings.hintNewPassword,
              suffixIcon: Icons.remove_red_eye,
              obscureText: true,
            ),
            SizedBox(height: responsive.heightPercentage(2)),
            const Text(AppStrings.confirmNewPassword),
            SizedBox(height: responsive.heightPercentage(0.5)),
            TextFieldCustom(
              prefixIcon: Icons.password,
              suffixIcon: Icons.remove_red_eye,
              obscureText: true,
              hintText: AppStrings.password,
            ),
            SizedBox(height: responsive.heightPercentage(4)),
            ButtonCustom(
              text: AppStrings.next,
              onPressed: () => showDialog(
                context: context,
                barrierDismissible: true,
                builder: (_) => const SuccessDialog(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}