import 'package:flutter/material.dart';

class SavatScreen extends StatefulWidget {
  const SavatScreen({super.key});

  @override
  State<SavatScreen> createState() => _SavatScreenState();
}

class _SavatScreenState extends State<SavatScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Progressing..."),
      ),
    );
  }
}

