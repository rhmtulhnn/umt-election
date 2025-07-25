import 'package:flutter/material.dart';
import 'package:umt_election/app/shared/textfield.dart';

class TestPage extends StatefulWidget {
  const TestPage({super.key});

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  @override
  Widget build(BuildContext context) {
     final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }
    return Scaffold(
      body: Center(
        child: TextFieldWidget(label: 'Email', controller: emailController),
      ),
    );
  }
}