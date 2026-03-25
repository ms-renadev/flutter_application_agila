/*
AUTH GATE -  this will continuously listen to all auth state changes.
---------------------------------------------------------------------

unauthenticated -> login page
authenticated -> Profile page
 */
import 'package:flutter/material.dart';

class AuthGate extends StatelessWidget {
  const AuthGate({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      //listen to auth state changes
      stream: stream, builder: builder,
      );
  }
}