import 'package:env_setup_1/env/environment.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class HomePage extends StatelessWidget {
  final String flavor;
  const HomePage({super.key, required this.flavor});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:
          flavor == AppFlavor.prod.toString() ? true : false,
      theme: ThemeData(useMaterial3: true, primarySwatch: Colors.brown),
      home: Home(
        flavor: flavor,
      ),
    );
  }
}

class Home extends StatelessWidget {
  final String flavor;
  const Home({super.key, required this.flavor});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(flavor),
      ),
      body: Center(
        child: Text(
            dotenv.get("DEV_DOMAIN", fallback: "Could not load").toString()),
      ),
    );
  }
}
