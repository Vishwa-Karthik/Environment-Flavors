enum AppFlavor { dev, stage, prod }

class AppEnvironment {
  static late AppFlavor _appFlavor;
  static AppFlavor get appEnvironment => _appFlavor;
}
