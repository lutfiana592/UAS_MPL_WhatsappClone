import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_wa/features/auth/controller/auth_controller.dart';
import 'package:flutter_application_wa/features/home/pages/home_pages.dart';
import 'package:flutter_application_wa/features/welcome/pages/welcome_pages.dart';
import 'package:flutter_application_wa/firebase_options.dart';
import 'package:flutter_application_wa/sistem/routes/routes.dart';
import 'package:flutter_application_wa/sistem/theme/dark_theme.dart';
import 'package:flutter_application_wa/sistem/theme/light_theme.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WhatsApp Clone',
      theme: lightTheme(),
      darkTheme: darkTheme(),
      themeMode: ThemeMode.system,
      home: ref.watch(userInfoAuthProvider).when(
            data: (user) {
              if (user == null) return const WelcomePage();
              return const HomePage();
            },
            error: (error, trace) {
              return const Scaffold(
                body: Center(
                  child: Text('Something wrong happened'),
                ),
              );
            },
            loading: () => const SizedBox(),
          ),
      onGenerateRoute: Routes.onGenerateRoute,
    );
  }
}
