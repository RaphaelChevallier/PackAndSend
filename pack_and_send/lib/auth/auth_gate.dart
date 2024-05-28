import 'package:flutter/material.dart';
import 'package:pack_and_send/auth/login_or_register.dart';
import 'package:pack_and_send/main.dart';
import 'package:pack_and_send/pages/home.dart';

class AuthGate extends StatelessWidget {
  const AuthGate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
          stream: supabase.auth.onAuthStateChange,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            } else if (snapshot.hasData) {
              switch (snapshot.data!.event.toString()) {
                case 'AuthChangeEvent.signedIn':
                  return const HomePage();
                case 'AuthChangeEvent.signedOut':
                  return const LoginOrRegister();
                case 'AuthChangeEvent.initialSession':
                  return const LoginOrRegister();
                default:
                  throw UnimplementedError(
                      '${snapshot.data!.event} event has not been handled.');
              }
            } else {
              return const LoginOrRegister();
            }
          }),
    );
  }
}
