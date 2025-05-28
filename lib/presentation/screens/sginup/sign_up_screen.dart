import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hotel_app/core/constants/app_colors.dart';
import 'package:hotel_app/core/constants/app_strings.dart';
import 'package:hotel_app/presentation/widgets/button_custom.dart';
import '../../../core/utils/responsive.dart';
import '../../widgets/text_field_custom.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive.of(context);

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          context.pop();
        }, icon: Icon(Icons.arrow_back_outlined)),
      ),
      body: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: Padding(
          padding: responsive.padding(all: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                AppStrings.titleSignUp,
                style: TextStyle(
                  fontSize: responsive.fontSize(30),
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: responsive.heightPercentage(0.2)),
              Text(
                AppStrings.subTitleSignUp,
                style: TextStyle(
                  fontSize: responsive.fontSize(14),
                  color: AppColors.textSecondary,
                ),
              ),

              // email
              SizedBox(height: responsive.heightPercentage(3)),
              Text(AppStrings.fullName),
              SizedBox(height: responsive.heightPercentage(0.5)),
              TextFieldCustom(
                hintText: AppStrings.hintName,
                controller: TextEditingController(),
                prefixIcon: Icons.person,
                obscureText: false,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter an email';
                  }
                  return null;
                },
              ),
              SizedBox(height: responsive.heightPercentage(1)),
              Text(AppStrings.email),
              SizedBox(height: responsive.heightPercentage(0.5)),
              TextFieldCustom(
                hintText: AppStrings.hintEmail,
                controller: TextEditingController(),
                prefixIcon: Icons.email,
                obscureText: false,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter an email';
                  }
                  return null;
                },
              ),

              // password
              SizedBox(height: responsive.heightPercentage(1)),
              Text(AppStrings.password),
              SizedBox(height: responsive.heightPercentage(0.5)),
              TextFieldCustom(
                hintText: AppStrings.hintPassword,
                controller: TextEditingController(),
                prefixIcon: Icons.password_rounded,
                suffixIcon: Icons.remove_red_eye,
                obscureText: false,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter an email';
                  }
                  return null;
                },
              ),

              // confirm password
              SizedBox(height: responsive.heightPercentage(1)),

              SizedBox(height: responsive.heightPercentage(1)),
              Text(AppStrings.confirmPassword),
              SizedBox(height: responsive.heightPercentage(0.5)),
              TextFieldCustom(
                hintText: AppStrings.hintConfirmPassword,
                controller: TextEditingController(),
                prefixIcon: Icons.password_rounded,
                suffixIcon: Icons.remove_red_eye,
                obscureText: false,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter an email';
                  }
                  return null;
                },
              ),

              // sign in button
              SizedBox(height: responsive.heightPercentage(4)),

              ButtonCustom(text: AppStrings.signUp, onPressed: () {}),

              // divider
              SizedBox(height: responsive.heightPercentage(4)),

              // don't have account
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    AppStrings.haveAccount,
                    style: TextStyle(fontSize: responsive.fontSize(16)),
                  ),
                  SizedBox(width: responsive.widthPercentage(1)),
                  TextButton(
                    onPressed: () {
                      context.push("/sign-in");
                    },
                    child: Text(
                      AppStrings.signIn,
                      style: TextStyle(
                        fontSize: responsive.fontSize(16),
                        color: AppColors.primaryColor,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
