import 'package:flutter/material.dart';

import 'screens/create_resume_screen.dart';
import 'screens/education_screen.dart';
import 'screens/experience_screen.dart';
import 'screens/home_screen.dart';
import 'screens/login_screen.dart';
import 'screens/onboarding_screen.dart';
import 'screens/personal_info_screen.dart';
import 'screens/resume_preview_screen.dart';
import 'screens/settings_screen.dart';
import 'screens/signup_screen.dart';
import 'screens/skills_screen.dart';
import 'screens/splash_screen.dart';
import 'screens/template_selection_screen.dart';
import 'utils/constants.dart';

void main() {
  runApp(const ResumeBuilderApp());
}

class ResumeBuilderApp extends StatelessWidget {
  const ResumeBuilderApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppConstants.appName,
      theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.indigo),
      initialRoute: '/splash',
      routes: {
        '/splash': (_) => const SplashScreen(),
        '/onboarding': (_) => const OnboardingScreen(),
        '/login': (_) => const LoginScreen(),
        '/signup': (_) => SignupScreen(),
        '/home': (_) => const HomeScreen(),
        '/create-resume': (_) => const CreateResumeScreen(),
        '/personal-info': (_) => PersonalInfoScreen(),
        '/education': (_) => EducationScreen(),
        '/skills': (_) => SkillsScreen(),
        '/experience': (_) => ExperienceScreen(),
        '/templates': (_) => const TemplateSelectionScreen(),
        '/preview': (_) => const ResumePreviewScreen(),
        '/settings': (_) => const SettingsScreen(),
      },
    );
  }
}
