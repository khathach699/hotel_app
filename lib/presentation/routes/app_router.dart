import 'package:go_router/go_router.dart';
import 'package:hotel_app/presentation/screens/sginup/sign_up_screen.dart';
import '../screens/forgot/forgot_screen.dart';
import '../screens/forgot/new_password_screen.dart';
import '../screens/forgot/otp_screen.dart';
import '../screens/signin/sign_in_screen.dart';


class AppRouter {
  late final GoRouter router = GoRouter(
    // Không cần redirect logic nữa
    routes: [
      // Root route chuyển thẳng đến Home
      GoRoute(path: '/', redirect: (context, state) => '/sign-in'),
      // Home screen route
      GoRoute(path: '/sign-in', builder: (context, state) => const SignInScreen()),
      // SignUp screen route
      GoRoute(path: "/sign-up", builder: (context, state) => const SignUpScreen()),
      // Forgot screen route
      GoRoute(path: "/forgot", builder: (context, state) => const ForgotScreen()),
      // OTPScreen route
      GoRoute(path: "/otp", builder: (context, state) => const OTPScreen()),
      // NewPasswordScreen route
      GoRoute(path: "/new-password", builder: (context, state) => const NewPasswordScreen()),
    ],
  );
}
