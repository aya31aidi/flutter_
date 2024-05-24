import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  String _errorText = '';

  void _login() {
    String name = _nameController.text.trim();
    String email = _emailController.text.trim();
    String password = _passwordController.text.trim();

    // Vérifier les validations
    if (name.isEmpty || email.isEmpty || password.isEmpty) {
      setState(() {
        _errorText = 'Veuillez remplir tous les champs.';
      });
      return;
    }

    // Naviguer vers la page de bienvenue
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => WelcomePage(name, email, password),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page d\'Authentification'),
        //actions:[ Icon(Icons.ac_unit_rounded),]
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _nameController,
              decoration: InputDecoration(
                labelText: 'Nom',
              ),
            ),
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                labelText: 'Email',
              ),
            ),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(
                labelText: 'Mot de passe',
              ),
              obscureText: true,
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: _login,
              child: Text('Login'),
              
            ),
            SizedBox(height: 8.0),
            Text(
              _errorText,
              style: TextStyle(color: Colors.red),
            ),
          ],
        ),
      ),
    );
  }
}
class WelcomePage extends StatelessWidget {
  final String name;
  final String email;
  final String password;

  WelcomePage(this.name, this.email, this.password);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bienvenue'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Bienvenue, $name !'),
            SizedBox(height: 16.0),
            Text('Votre email est : $email'),
            SizedBox(height: 8.0),
            Text('Votre mot de passe est : $password'),
          ],
        ),
      ),
    );
  }
}
