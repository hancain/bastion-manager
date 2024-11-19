import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class Login extends StatefulWidget {
  final String title;
  SupabaseClient supabase;

  Login({
    super.key,
    required this.title,
    required this.supabase,
  });

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String worldTitle = '';

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
        ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));

    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Padding(
            padding: const EdgeInsets.all(32),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(32),
                  child: TextField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Enter World Name',
                    ),
                    onChanged: (value) => setState(() {
                      worldTitle = value;
                    }),
                  ),
                ),
                ElevatedButton(
                  style: style,
                  onPressed: () async {
                    final worldData =
                        await widget.supabase.from('bastion').select('*');
                  },
                  child: const Text('Sign In'),
                )
              ],
            )));
  }
}
