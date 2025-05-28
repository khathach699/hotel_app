import 'package:go_router/go_router.dart';
import '../screens/signin/sign_in_screen.dart';


class AppRouter {
  late final GoRouter router = GoRouter(
    // Không cần redirect logic nữa
    routes: [
      // Root route chuyển thẳng đến Home
      GoRoute(path: '/', redirect: (context, state) => '/home'),
      // Home screen route
      GoRoute(path: '/home', builder: (context, state) => const SignInScreen()),
    ],
  );
}
