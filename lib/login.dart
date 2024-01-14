import 'package:flutter/material.dart';
import 'package:parrainage/inscription.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          children: <Widget>[
            const SizedBox(height: 12.0),
            TextField(
              controller: _usernameController,
              decoration: const InputDecoration(
                labelText: 'Nom Utilisateur',
              ),
            ),
            const SizedBox(height: 12.0),
            TextField(
              controller: _passwordController,
              decoration: const InputDecoration(
                labelText: 'Mot de Passe',
              ),
              obscureText: true,
            ),
            const SizedBox(height: 12.0),
            OverflowBar(
              alignment: MainAxisAlignment.end,
              children: <Widget>[
                TextButton(
                  child: const Text('Rétablir'),
                  onPressed: () {
                    _usernameController.clear();
                    _passwordController.clear();
                  },
                  style: TextButton.styleFrom(
                    primary: Theme.of(context).colorScheme.secondary,
                  ),
                ),
                ElevatedButton(
                  child: const Text('Se Connecter'),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                ElevatedButton(
                  child: const Text("S'inscrire"),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const InscriptionPage()),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
