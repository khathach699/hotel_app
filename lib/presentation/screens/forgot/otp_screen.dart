import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:hotel_app/core/constants/app_strings.dart';
import 'package:hotel_app/presentation/widgets/button_custom.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../../core/utils/responsive.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen({super.key});

  @override
  _OTPScreenState createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  String _otp = '';
  bool _isButtonEnabled = false;
  final TextEditingController _otpController = TextEditingController();

  @override
  void dispose() {
    _otpController.dispose(); // Đảm bảo giải phóng controller
    super.dispose();
  }

  void _validateOTP(String value) {
    setState(() {
      _otp = value;
      _isButtonEnabled = value.length == 6 && RegExp(r'^\d{6}$').hasMatch(value); // Cập nhật cho 6 số
    });
  }

  void _submitOTP() {
    if (_isButtonEnabled) {
      print('Xác nhận OTP: $_otp'); // TODO: Thay bằng API call
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('OTP đã được gửi: $_otp')),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Vui lòng nhập đủ 6 số OTP')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive.of(context);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => context.pop(),
          icon: const Icon(Icons.arrow_back_outlined),
        ),
      ),
      body: Padding(
        padding: responsive.padding(all: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppStrings.titleOtp,
              style: TextStyle(fontSize: responsive.fontSize(30)),
            ),
            SizedBox(height: responsive.heightPercentage(2)),
            Text(
              AppStrings.subTitleOtp,
              style: TextStyle(fontSize: responsive.fontSize(14)),
            ),
            SizedBox(height: responsive.heightPercentage(6)),
            Center(
              child: PinCodeTextField(
                appContext: context,
                length: 6, // OTP 6 số
                controller: _otpController, // Kích hoạt controller
                onChanged: _validateOTP,
                onCompleted: (value) {
                  _submitOTP();
                },
                pinTheme: PinTheme(
                  shape: PinCodeFieldShape.circle,
                  fieldHeight: 45, // Giảm chiều cao để gọn hơn
                  fieldWidth: 35, // Giảm chiều rộng để các ô nhỏ hơn
                  fieldOuterPadding: EdgeInsets.symmetric(horizontal: 2), // Khoảng cách nhỏ giữa các ô
                  activeFillColor: Colors.white,
                  inactiveFillColor: Colors.grey[200],
                  selectedFillColor: Colors.blue[50], // Màu khi chọn ô
                  activeColor: Colors.blue,
                  inactiveColor: Colors.grey,
                  selectedColor: Colors.blueAccent,
                  borderWidth: 2, // Viền nổi bật hơn
                ),
                keyboardType: TextInputType.number,
                enableActiveFill: true,
                autoFocus: true,
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                ],
              ),
            ),
            SizedBox(height: responsive.heightPercentage(2)),
            ButtonCustom(
              text: AppStrings.continueOtp,
              onPressed: (){
                context.push("/new-password");
              },
            ),
            SizedBox(height: responsive.heightPercentage(4)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(AppStrings.didNotReceiveOtp),
                TextButton(onPressed: (){

                }, child: Text(AppStrings.resendOtp))
              ],
            )
          ],
        ),
      ),
    );
  }
}