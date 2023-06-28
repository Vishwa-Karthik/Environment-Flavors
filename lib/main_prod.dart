import 'package:env_setup_1/screens/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'env/environment.dart';

Future<void> main() async {
  await dotenv.load(fileName: ".env_prod");
  runApp(HomePage(flavor: AppFlavor.prod.toString()));
}
