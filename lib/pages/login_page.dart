import 'package:flutter/material.dart';
import 'package:flutter_application_agila/auth/auth_service.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  //get the auth service
  final authService = AuthService();

  //text controllers
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  //login button pressed
  void login() async {
    //prep the data
    final email = _emailController.text;
    final password = _passwordController;
    //attempt the login
    try{
      await authService.signInWithEmailPassword(email, password);
    }
    //catch the errors if something goes wrong in login page
    catch(e){
      if(mounted){
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Error: $e")));
      }
    }

  }

  //build the UI
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}