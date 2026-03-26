import 'package:flutter/material.dart';
import 'package:flutter_application_agila/auth/auth_gate.dart';
import 'package:supabase_flutter/supabase_flutter.dart';


void main() async{
  //supabase setup
  await Supabase.initialize(
    anonKey: 
        "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im9remRqdWd3ZmtweGlnaXhtZWVuIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NzQzNDc0MjQsImV4cCI6MjA4OTkyMzQyNH0.NkNSbDCMqdJ2gQQlNIQEiq5LRyI7S957GNO1T_8VP3U",
    url: "https://okzdjugwfkpxigixmeen.supabase.co",
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: AuthGate(),
    );// Material App
  }
}

