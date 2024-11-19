import 'package:bastion_manager/src/login.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: 'https://llkmvvxhkdjnbearszmk.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imxsa212dnhoa2RqbmJlYXJzem1rIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzE3MDU3NjksImV4cCI6MjA0NzI4MTc2OX0.ZuqFXRfIia_O43_5TuXkTgLPBiVpO1-Ct84Z8l8Zg3U',
  );

  runApp(const MyApp());
}

final supabase = Supabase.instance.client;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Based Bastion',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Login(title: 'Idk what I\'m doing', supabase: supabase),
    );
  }
}
