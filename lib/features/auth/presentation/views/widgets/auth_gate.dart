import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:pizza_app_admin/features/auth/presentation/views/login_view.dart';
import 'package:pizza_app_admin/features/home/presentation/view/home_view.dart';

class AuthGate extends StatelessWidget {
  const AuthGate({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(), // 🔥 real-time auth state
      builder: (context, snapshot) {
        // While checking (initially)
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }

        // If user is logged in
        if (snapshot.hasData) {
          return const HomeView();
        }

        // If not logged in
        return const LoginView();
      },
    );
  }
}
