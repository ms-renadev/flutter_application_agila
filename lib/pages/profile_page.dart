import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  void logout() async{
    
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Profile: Welcome Back \nUser"),
      actions: [
        //logout button
        IconButton(
          onPressed: logout, 
          icon: icon,)
      ],
      ),
    );
  }
}
