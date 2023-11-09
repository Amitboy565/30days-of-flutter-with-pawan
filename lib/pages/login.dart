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
  final _formkey = GlobalKey<FormState>();

  movetohome(BuildContext context) async {
    if (_formkey.currentState!.validate()) {
      setState(() {
        changebutton = true;
      });
      await Future.delayed(
        const Duration(seconds: 1),
      );
      await Navigator.pushNamed(context, MyRoutes.homeroute);
      setState(() {
        changebutton = false;
      });
    }
  }

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
            child: Form(
              key: _formkey,
              child: Column(
                children: [
                  TextFormField(
                    onChanged: (value) {
                      name = value;
                      setState(() {});
                    },
                    decoration: const InputDecoration(
                      label: Text('Username'),
                      hintText: 'Enter your Username',
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Username Can't be empty";
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Password',
                      hintText: 'Enter your Password',
                    ),
                    obscureText: true,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Passsword Can't be empty";
                      } else if (value.length < 6) {
                        return "Password Length should be atleast 6";
                      }
                      return null;
                    },
                  )
                ],
              ),
            ),
          ),
          Material(
            color: Colors.purple,
            borderRadius: BorderRadius.circular(changebutton ? 50 : 9),
            child: InkWell(
              onTap: () => movetohome(context),
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
                            color: Colors.white),
                      ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
