import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Image.asset(
            'assets/images/login.png',
            width: 300,
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Welcome",
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            margin: const EdgeInsets.all(35),
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                    label: Text("Usrname"),
                    hintText: 'Enter Your Username',
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    label: Text("Password"),
                    hintText: 'Enter Your Password',
                  ),
                  obscureText: true,
                ),
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text("Login"),
          )
        ],
      ),
    );
  }
}
