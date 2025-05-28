import 'package:flutter/material.dart';

import '../../../../core/utils/responsive.dart';

class ButtonSocialCustom extends StatelessWidget {
  final String image;
  final VoidCallback onPressed;

  const ButtonSocialCustom({super.key, required this.image, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive.of(context);
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: responsive.widthPercentage(20),
        height: responsive.heightPercentage(10),
        decoration: BoxDecoration(
          color: Colors.white, // Màu nền giống trong ảnh
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 4,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Center(
          child: Image.network(
            image,
            width: responsive.widthPercentage(20),
            height: responsive.heightPercentage(10),
          ),
        ),
      ),
    );
  }
}
