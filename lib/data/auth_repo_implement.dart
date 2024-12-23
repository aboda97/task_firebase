import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:riverpod/riverpod.dart';

class AuthViewModel extends StateNotifier<void> {
  AuthViewModel() : super(null);

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  Future<bool> login() async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );
      return true;
    } catch (e) {
      return false;
    }
  }

  Future<bool> register() async {
    try {
      if (passwordController.text == confirmPasswordController.text) {
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: emailController.text,
          password: passwordController.text,
        );
        return true;
      } else {
        return false;
      }
    } catch (e) {
      return false;
    }
  }
}

final authViewModelProvider = StateNotifierProvider<AuthViewModel, void>((ref) => AuthViewModel());
