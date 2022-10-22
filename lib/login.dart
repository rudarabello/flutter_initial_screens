import 'package:flutter/material.dart';

class MyLoginPage extends StatefulWidget {
  const MyLoginPage(BuildContext context, {super.key});

  @override
  State<MyLoginPage> createState() => _MyLoginPageState();
}

class _MyLoginPageState extends State<MyLoginPage> {
  bool _isVisible = false;
  void updateStatus() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'You favorite App! Roads',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Form(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                decoration: const InputDecoration(label: Text('User')),
              ),
              const SizedBox(height: 16),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Enter password",
                  suffixIcon: IconButton(
                    onPressed: () => updateStatus(),
                    icon: Icon(
                        _isVisible ? Icons.visibility : Icons.visibility_off),
                  ),
                ),
                obscureText: _isVisible ? false : true,
                obscuringCharacter: '*',
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () =>
                    Navigator.of(context).pushReplacementNamed('home'),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Center(child: Text('LOGIN')),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
