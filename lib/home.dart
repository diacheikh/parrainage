import 'package:flutter/material.dart';
import 'package:parrainage/inscription.dart'; // Assurez-vous d'importer correctement votre page d'inscription

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  List<Card> _buildGridCards(BuildContext context, int count) {
    List<String> cardTitles = [
      'Voter',
      'Parrainer',
      'Candidats'
    ]; // Changer le texte en fonction de vos besoins

    List<Card> cards = List.generate(
      count,
      (int index) {
        String cardTitle = cardTitles[index];
        return Card(
          clipBehavior: Clip.antiAlias,
          child: GestureDetector(
            onTap: () {
              // Naviguer vers la page souhaitée, par exemple, la page d'inscription
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => InscriptionPage()),
              );
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                AspectRatio(
                  aspectRatio: 18.0 / 11.0,
                  child: Image.asset('assets/Senegal.png'),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        cardTitle
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
    return cards;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(
                Icons.menu,
                semanticLabel: 'menu',
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
        title: const Text("Parrainage"),
        centerTitle: true,
        shadowColor: Color.fromRGBO(2, 32, 201, 0.298),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.search,
              semanticLabel: 'search',
            ),
            onPressed: () {
              print('Search button');
            },
          ),
          IconButton(
            icon: const Icon(
              Icons.tune,
              semanticLabel: 'filter',
            ),
            onPressed: () {
              print('Filter button');
            },
          ),
        ],
        backgroundColor: Color.fromARGB(255, 158, 208, 248),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration:
                  BoxDecoration(color: Color.fromARGB(255, 179, 197, 211)),
              child: Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back),
                    onPressed: () {
                      Navigator.of(context).pop(); // Ferme le menu
                    },
                  ),
                  Text("Menu Page"),
                ],
              ),
            ),
            ListTile(
              title: Text("Profil"),
              leading: Icon(
                Icons.account_circle,
                size: 40,
                color: Color.fromARGB(255, 21, 136, 231),
              ),
            ),
            Divider(),
            // ... Ajoutez d'autres éléments de menu ici
          ],
        ),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        padding: const EdgeInsets.all(16.0),
        childAspectRatio: 8.0 / 9.0,
        children: _buildGridCards(context, 3),
      ),
      resizeToAvoidBottomInset: false,
    );
  }
}
