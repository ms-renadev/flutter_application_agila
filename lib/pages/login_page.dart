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
    final password = _passwordController.text;
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
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 50),
        children: [
          //email
          TextField(
            controller: _emailController,
            decoration: const InputDecoration(labelText: "Email"),
          ),

          //password
          TextField(
              controller: _passwordController,
              decoration: const InputDecoration(labelText: "Password"),
          ),

          const SizedBox(height: 12),
          //button
          ElevatedButton(
            onPressed: login, 
            child: const Text("Login")
          ),
          
          const SizedBox(height: 12),
          //go to regeister to sign up
          GestureDetector(
            onTap: () => Navigator.push(
              context, 
              MaterialPageRoute(
                builder: (context) => const RegisterPage(),
            )),
            child: Center(child: Text("Don't have an account? Sign Up"))),

        ],
      ),//list view
    );
  }
}