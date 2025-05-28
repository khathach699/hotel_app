import 'package:flutter/material.dart';
import 'package:hotel_app/core/constants/app_colors.dart';
import 'package:hotel_app/core/constants/app_strings.dart';
import 'package:hotel_app/presentation/screens/signin/widgets/button_social_custom.dart';
import 'package:hotel_app/presentation/widgets/button_custom.dart';
import '../../../core/utils/responsive.dart';
import '../../widgets/text_field_custom.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive.of(context);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          child: Padding(
            padding: responsive.padding(all: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: responsive.heightPercentage(7)),
                Text(
                  AppStrings.titleSignIn,
                  style: TextStyle(
                    fontSize: responsive.fontSize(30),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: responsive.heightPercentage(0.2)),
                Text(
                  AppStrings.subTitleSignIn,
                  style: TextStyle(
                    fontSize: responsive.fontSize(14),
                    color: AppColors.textSecondary,
                  ),
                ),

                // email
                SizedBox(height: responsive.heightPercentage(3)),
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

                // remember me
                SizedBox(height: responsive.heightPercentage(0.2),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    Text(AppStrings.rememberMe),
                    Spacer(),
                    TextButton(child: Text(AppStrings.forgotPassword), onPressed: (){},),
                  ],
                ),

                // sign in button
                SizedBox(height: responsive.heightPercentage(4)),

                ButtonCustom(text: AppStrings.signIn, onPressed: (){},),

                // divider
                SizedBox(height: responsive.heightPercentage(4)),
                Row(
                  children: [
                    const Expanded(child: Divider(thickness: 1)),
                    Padding(
                      padding: responsive.padding(right: 10, left: 10),
                      child: Text(
                        AppStrings.or,
                        style:
                        TextStyle(fontSize: responsive.fontSize(14)),
                      ),
                    ),
                    const Expanded(child: Divider(thickness: 1)),
                  ],
                ),
                SizedBox(height: responsive.heightPercentage(5)),

                // login with google
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ButtonSocialCustom(image: "https://img.icons8.com/?size=100&id=V5cGWnc9R4xj&format=png&color=000000", onPressed: (){}),
                    SizedBox(width: responsive.widthPercentage(2)),
                    ButtonSocialCustom(image: "https://img.icons8.com/?size=100&id=uLWV5A9vXIPu&format=png&color=000000", onPressed: (){}),
                    SizedBox(width: responsive.widthPercentage(2)),
                    ButtonSocialCustom(image: "https://img.icons8.com/?size=100&id=30659&format=png&color=000000", onPressed: (){}),
                  ],
                ),
                SizedBox(height: responsive.heightPercentage(5)),

                // don't have account
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      AppStrings.noAccount,
                      style: TextStyle(fontSize: responsive.fontSize(16)),
                    ),
                    SizedBox(width: responsive.widthPercentage(1)),
                    TextButton(
                      onPressed: null,
                      child: Text(
                        AppStrings.signUp,
                        style:
                        TextStyle(fontSize: responsive.fontSize(16),
                        color: AppColors.primaryColor),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
