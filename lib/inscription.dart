import 'package:flutter/material.dart';

class InscriptionPage extends StatefulWidget {
  const InscriptionPage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _InscriptionPageState createState() => _InscriptionPageState();
}

class _InscriptionPageState extends State<InscriptionPage> {
  final  _nom = TextEditingController();
  final  _prenom= TextEditingController();
  final  _email = TextEditingController();
  final _telephone = TextEditingController();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          children: <Widget>[
            TextField(
              controller: _nom,
              decoration: const InputDecoration(
                //filled: true,
                labelText: 'Prenom',
                hintText: 'Votre Prenom',
                icon: Icon(
                  Icons.person,
                  color: Color.fromARGB(255, 137, 159, 231),
                  size: 25,
                ),
              ),
              keyboardType: TextInputType.text,
            ),
            TextField(
              controller: _prenom,
              decoration: const InputDecoration(
                //filled: true,
                labelText: 'Nom',
                hintText: 'Votre Nom',
                icon: Icon(
                  Icons.person,
                  color: Color.fromARGB(255, 137, 159, 231),
                  size: 25,
                ),
              ),
              keyboardType: TextInputType.text,
            ),
            TextField(
              controller:_telephone,
                decoration: InputDecoration(
                  labelText: 'Telephone',
                  hintText: 'Entrer votre numero de Telephone',
                  icon: Icon(
                    Icons.phone,
                    color: Color.fromARGB(255, 137, 159, 231),
                    size: 25,
                  ),
                ),
                keyboardType: TextInputType.phone),
            TextField(
              controller: _email,
                decoration: const InputDecoration(
                  //filled: true,
                  labelText: 'Adresse E-mail',
                  hintText: 'Votre Email',
                  icon: Icon(
                    Icons.mail,
                    color: Color.fromARGB(255, 137, 159, 231),
                    size: 25,
                  ),
                ),
                keyboardType: TextInputType.emailAddress),
            const SizedBox(height: 12.0),
            TextField(
                controller: _passwordController,
                decoration: const InputDecoration(
                  //filled: true,

                  labelText: 'Mot de Passe',
                  hintText: 'Votre mot de passe',
                  icon: Icon(
                    Icons.lock,
                    color: Color.fromARGB(255, 238, 76, 76),
                    size: 25,
                  ),
                ),
                keyboardType: TextInputType.visiblePassword),
            const SizedBox(height: 12.0),
            OverflowBar(
              alignment: MainAxisAlignment.end,
              children: <Widget>[
                TextButton(
                  child: const Text('Retour'),
                  onPressed: () {
                    _usernameController.clear();
                    _passwordController.clear();
                  },
                  style: TextButton.styleFrom(
                    primary: Theme.of(context).colorScheme.secondary,
                  ),
                ),
                ElevatedButton(
                  child: const Text('Suivant'),
                  onPressed: () {
                    Navigator.pop(context);
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
