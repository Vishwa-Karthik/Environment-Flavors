import 'package:env_setup_1/env/environment.dart';
import 'package:env_setup_1/screens/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

Future<void> main() async {
  await dotenv.load(fileName: ".env_dev");
  runApp(HomePage(flavor: AppFlavor.dev.toString()));
}
