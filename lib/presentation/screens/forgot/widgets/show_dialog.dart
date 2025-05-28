import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hotel_app/core/constants/app_strings.dart';
import 'package:hotel_app/core/utils/responsive.dart';

class SuccessDialog extends StatelessWidget {
  const SuccessDialog({super.key});

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive.of(context);
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(responsive.widthPercentage(4)),
      ),
      elevation: 8,
      backgroundColor: Colors.white,
      child: Padding(
        padding: EdgeInsets.all(responsive.widthPercentage(4)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.check_circle,
              color: Colors.green,
              size: responsive.widthPercentage(12),
            ),
            SizedBox(height: responsive.heightPercentage(2)),
            Text(
              AppStrings.success,
              style: TextStyle(
                fontSize: responsive.fontSize(20),
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: responsive.heightPercentage(1)),
            Text(
              AppStrings.subTitleSuccess,
              style: TextStyle(
                fontSize: responsive.fontSize(14),
                color: Colors.black54,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: responsive.heightPercentage(3)),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close dialog
                context.replace('/sign-in'); // Redirect
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).primaryColor,
                foregroundColor: Colors.white,
                minimumSize: Size(
                  responsive.widthPercentage(40),
                  responsive.heightPercentage(5),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(responsive.widthPercentage(2)),
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: responsive.widthPercentage(4),
                  vertical: responsive.heightPercentage(1.5),
                ),
              ),
              child: Text(
                'Close',
                style: TextStyle(
                  fontSize: responsive.fontSize(16),
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
