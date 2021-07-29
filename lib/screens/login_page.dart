import 'package:flutter/cupertino.dart';
import 'package:glass_kit/glass_kit.dart';
import 'package:flutter/material.dart';

bool _visibility = false;

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: <Widget>[
        Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        'https://i.pinimg.com/474x/cd/80/c2/cd80c290c76cdf56cdd947ef10499081.jpg'),
                    fit: BoxFit.cover))),
        Center(
          child: GlassContainer(
              height: 350,
              width: 350,
              gradient: LinearGradient(
                colors: [
                  Colors.white.withOpacity(0.40),
                  Colors.white.withOpacity(0.10),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderGradient: LinearGradient(
                colors: [
                  Colors.white.withOpacity(0.60),
                  Colors.white.withOpacity(0.10),
                  Colors.purpleAccent.withOpacity(0.05),
                  Colors.purpleAccent.withOpacity(0.60),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                //stops: [0.0, 0.39, 0.40, 1.0],
              ),
              blur: 20,
              borderRadius: BorderRadius.circular(24.0),
              borderWidth: 1.0,
              elevation: 3.0,
              //isFrostedGlass: false,
              shadowColor: Colors.purple.withOpacity(0.20),
              child: const GlassField()),
        )
      ]),
    );
  }
}

class GlassField extends StatelessWidget {
  const GlassField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 20),
          child: Text('Login',
              style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic)),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(30, 10, 30, 0),
          child: loginTextFormField(),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(30, 10, 30, 0),
          child: passwordTextFormField(),
        ),
        Visibility(
          visible: _visibility,
          child: const Text(
            'Wrong login or password. Reset Password',
            style: TextStyle(color: Colors.red),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 15.0),
          child: loginButton(),
        )
      ],
    );
  }

  TextFormField loginTextFormField() {
    return TextFormField(
      textAlign: TextAlign.center,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(8.0))),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter some text';
        }
        return null;
      },
    );
  }

  TextFormField passwordTextFormField() {
    return TextFormField(
      textAlign: TextAlign.center,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(8.0))),
      obscureText: true,
    );
  }

  TextButton loginButton() {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: Colors.white24,
        padding: const EdgeInsets.fromLTRB(40.0, 10.0, 40.0, 10.0),
        primary: Colors.white,
        textStyle: const TextStyle(fontSize: 20),
      ),
      onPressed: () {},
      child: const Text('Sign In'),
    );
  }
}
