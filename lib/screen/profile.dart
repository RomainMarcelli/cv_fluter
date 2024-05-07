import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  Future<void> _launchURL(String url) async {
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {
      throw 'Impossible d\'ouvrir $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil'),
        actions: [
          IconButton(
            icon: Icon(Icons.edit),
            onPressed: () {
              // Action pour éditer le profil
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage(
                'assets/Romain_profil.jpg',
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Romain Marcelli', // Nom de l'utilisateur
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'r.marcelli31@gmail.com', // Adresse email
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 16),
            // Icône GitHub avec un GestureDetector
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () => _launchURL('https://github.com/RomainMarcelli'),
                  child: Column(
                    children: [
                      FaIcon(
                        FontAwesomeIcons.github, // Utilisation de FontAwesome
                        size: 30,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 15),
                GestureDetector(
                  onTap: () => _launchURL(
                      'https://www.linkedin.com/in/romain-marcelli/'),
                  child: Column(
                    children: [
                      FaIcon(
                        FontAwesomeIcons.linkedin, // Utilisation de FontAwesome
                        size: 30,
                        color: Colors.white,
                      ), // Pour séparer les éléments visuellement
                    ],
                  ),
                ),
              ],
            ),
            Divider(), // Ligne de séparation

            // Informations supplémentaires
            ListTile(
              leading: Icon(Icons.phone),
              title: Text('07.81.42.85.85'), // Numéro de téléphone
            ),
            ListTile(
              leading: Icon(Icons.location_on),
              title: Text(
                  '10 rue de la Fourmisière, 59242 Templeuve-En-Pévèle'), // Adresse
            ),
            ListTile(
              leading: Icon(Icons.work),
              title: Text('Développeur Web en Alternance'), // Profession
            ),
            SizedBox(height: 16),
            Container(
              padding: const EdgeInsets.all(
                  16), // Pour créer un espace entre le texte et la bordure
              decoration: BoxDecoration(
                border: Border.all(
                  // Ajouter une bordure autour du texte
                  color: Colors.white, // Couleur blanche
                  width: 2, // Épaisseur de la bordure
                ),
              ),
              child: Text(
                "Passionné par le développement logiciel, je suis spécialisé dans le développement Web et Mobile. "
                "J'aime résoudre des problèmes complexes et travailler sur des projets innovants. "
                "En dehors du travail, je suis un passionné de jeux vidéos et de sports.",
                textAlign: TextAlign.center, // Aligner le texte au centre
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white, // Couleur du texte
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
