import 'package:flutter/material.dart';
import 'package:flutter_application_wa/features/auth/pages/login_page.dart';
import 'package:flutter_application_wa/features/auth/pages/user_info_page.dart';
import 'package:flutter_application_wa/features/auth/pages/verifycation_page.dart';
import 'package:flutter_application_wa/features/home/pages/chatt_home_page.dart';
import 'package:flutter_application_wa/features/home/pages/home_pages.dart';
import 'package:flutter_application_wa/features/welcome/pages/welcome_pages.dart';

class Routes {
  static const String welcome = 'welcome';
  static const String login = 'login';
  static const String verification = 'verification';
  static const String userinfo = 'userinfo';
  static const String home = 'home';
  static const String contact = 'contact';
  static const String chat = 'chat';

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case welcome:
        return MaterialPageRoute(
          builder: (context) => const WelcomePage(),
        );
      case login:
        return MaterialPageRoute(
          builder: (context) => const LoginPage(),
        );

      case verification:
        final Map args = settings.arguments as Map;
        return MaterialPageRoute(
          builder: (context) => VerifycationPage(
            smsCodeId: args['smsCodeId'],
            phoneNumber: args['phoneNumber'],
          ),
        );

      case userinfo:
        final String? profileImageUrl = settings.arguments as String?;
        return MaterialPageRoute(
          builder: (context) => UserInfoPage(
            profileImageUrl: profileImageUrl,
          ),
        );

      case home:
        return MaterialPageRoute(
          builder: (context) => const HomePage(),
        );
      case chat:
        return MaterialPageRoute(
          builder: (context) => const ChattPage(),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => const Scaffold(
            body: Center(
              child: Text('No Page Route Provided'),
            ),
          ),
        );
    }
  }
}
