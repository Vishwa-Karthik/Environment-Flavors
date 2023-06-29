import 'package:env_setup_1/env/environment.dart';
import 'package:env_setup_1/screens/home_page.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

// Future<void> main() async {
//   await dotenv.load(fileName: ".env_dev");
//   runApp(HomePage(flavor: AppFlavor.dev.toString()));
// }

Future<void> main() async {
  if (kDebugMode) {
    await dotenv.load(fileName: ".env_dev");
    runApp(HomePage(flavor: AppFlavor.dev.toString()));
  } else if (kReleaseMode) {
    await dotenv.load(fileName: ".env_prod");
    runApp(HomePage(flavor: AppFlavor.prod.toString()));
  }
}
