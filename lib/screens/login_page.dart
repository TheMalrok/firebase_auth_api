import 'package:flutter/cupertino.dart';
import 'package:glass_kit/glass_kit.dart';
import 'package:flutter/material.dart';

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
                        'https://cdn.wallpapersafari.com/72/55/hEO3LR.png'),
                    fit: BoxFit.cover))),
        Center(
          child: GlassContainer(
              height: 300,
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
          padding: const EdgeInsets.only(top: 20),
          child: Text('Login',
              style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic)),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(30, 10, 30, 0),
          child: LoginTextFormField(),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(30, 10, 30, 0),
          child: PasswordTextFormField(),
        )
      ],
    );
  }

  TextFormField LoginTextFormField() {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter some text';
        }
        return null;
      },
    );
  }

  TextFormField PasswordTextFormField() {
    return TextFormField();
  }
}
