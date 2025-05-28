import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hotel_app/core/constants/app_strings.dart';
import 'package:hotel_app/presentation/widgets/button_custom.dart';
import 'package:hotel_app/presentation/widgets/text_field_custom.dart';

import '../../../core/utils/responsive.dart';

class ForgotScreen extends StatelessWidget {
  const ForgotScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive.of(context);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          context.pop();
        }, icon: Icon(Icons.arrow_back_outlined)),
      ),
      body: Padding(
        padding: responsive.padding(all: 10),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

          Text(AppStrings.fotgotPassword, style: TextStyle(fontSize: responsive.fontSize(30), fontWeight: FontWeight.bold),),
          SizedBox(height: responsive.heightPercentage(0.2),),
          Text(AppStrings.subTitleForgotPassword, style: TextStyle(fontSize: responsive.fontSize(14)),),
          SizedBox(height: responsive.heightPercentage(5),),
          Text(AppStrings.email),
          SizedBox(height: responsive.heightPercentage(0.5),),
          TextFieldCustom(hintText: AppStrings.email,),
              SizedBox(height: responsive.heightPercentage(4),),
          ButtonCustom(text: AppStrings.next, onPressed: (){
            context.push("/otp");
          },)
        ]),
      ),
    );
  }
}
