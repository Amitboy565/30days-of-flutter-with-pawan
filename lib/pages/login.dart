import 'package:e_commerce/utils/routes.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String name = "";
  bool changebutton = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          Image.asset('assets/images/login.png', fit: BoxFit.cover),
          const SizedBox(
            height: 20,
          ),
          Text(
            "Welcome $name",
            style: const TextStyle(
              fontSize: 22,
            ),
          ),
          Container(
            margin: const EdgeInsets.all(35),
            child: Column(
              children: [
                TextFormField(
                    decoration: const InputDecoration(
                      label: Text('Username'),
                      hintText: 'Enter your Username',
                    ),
                    onChanged: (value) {
                      name = value;
                      setState(() {});
                    }),
                TextFormField(
                  decoration: const InputDecoration(
                    label: Text('Password'),
                    hintText: 'Enter your Password',
                  ),
                  obscureText: true,
                )
              ],
            ),
          ),
          Material(
            color: Colors.purple,
            borderRadius: BorderRadius.circular(changebutton ? 50 : 9),
            child: InkWell(
              onTap: () async {
                setState(() {
                  changebutton = true;
                });
                await Future.delayed(
                  const Duration(seconds: 1),
                );
                Navigator.pushNamed(context, MyRoutes.homeroute);
              },
              child: AnimatedContainer(
                duration: const Duration(seconds: 1),
                alignment: Alignment.center,
                height: 50,
                width: changebutton ? 50 : 150,
                child: changebutton
                    ? const Icon(Icons.done)
                    : const Text(
                        "Login",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                        ),
                      ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
