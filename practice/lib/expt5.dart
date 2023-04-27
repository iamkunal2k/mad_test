import 'package:flutter/material.dart';

class expt5 extends StatefulWidget {
  const expt5({super.key});

  @override
  State<expt5> createState() => _expt5State();
}

class _expt5State extends State<expt5> {
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        SizedBox(height: 20),
        Form(
            key: _formkey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                      icon: Icon(Icons.person),
                      hintText: "Enter your name : ",
                      labelText: "name"),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter some text";
                    }
                    return null;
                  },
                ),
                TextFormField(
                  decoration: const InputDecoration(
                      icon: Icon(Icons.person),
                      hintText: "Enter Phone Number : ",
                      labelText: "Contact"),
                  validator: (value) {
                    if (value == null || value.isEmpty || value.length < 10) {
                      return "Please enter number";
                    }
                    return null;
                  },
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    icon: Icon(Icons.calendar_today),
                    hintText: "Enter your date of birth: ",
                    labelText: "DOB",
                  ),
                ),
                ElevatedButton(
                    onPressed: () {
                      if (_formkey.currentState!.validate()) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Processing Data')),
                        );
                      }
                    },
                    child: const Text('Submit')),
              ],
            ))
      ]),
    );
  }
}
