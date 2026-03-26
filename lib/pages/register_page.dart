import 'package:flutter/material.dart';

import '../auth/auth_service.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  
  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  //get the auth service
  final authService = AuthService();

  //text controllers
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
 //when sign up button is pressed, this will happen
 void signUp() async{
  //prepare data
  final email = _emailController.text;
  final password = _passwordController.text;
  final confirmPassword = _confirmPasswordController.text;
  //check if the password match
  
  if(password != confirmPassword){
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
      content: Text("Password is incorrect!")));
    return;
  }

  //attempting sign up
  try {
    await authService.signUpWithEmailPassword(email, password);

    //pop register this page after successfully signing up
    Navigator.pop(context);
  } catch (e) {
    //catch any errors
    if(mounted){
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("Eroor: $e")));
    }
  }
 }
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}