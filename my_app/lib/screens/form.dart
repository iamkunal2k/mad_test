import 'package:flutter/material.dart';

class form extends StatelessWidget {
  const form({super.key});

  @override
  Widget build(BuildContext context) {
    const appTitle = "Form validation";

    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appTitle),
        ),
        body: const MyCustomForm(),
      ),
    );
  }
}

class MyCustomForm extends StatefulWidget {
  const MyCustomForm({super.key});

  @override
  State<MyCustomForm> createState() => _MyCustomFormState();
}

class _MyCustomFormState extends State<MyCustomForm> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
      )
    );
  }
}
