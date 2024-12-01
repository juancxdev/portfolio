class RouterConstants {
  // Mapa de rutas
  static const Map<String, String> _pathsKeyValue = {
    'Home': '/',
    'About': '/about',
    'Portfolio': '/portfolio',
    'Contact': '/contact',
    'Slides': '/slides',
  };

  static String nameHome() => "Home";
  static String nameAbout() => "About";
  static String namePortfolio() => "Portfolio";
  static String nameContact() => "Contact";
  static String nameSlides() => "Slides";

  static String pathHome() => getPath("Home");
  static String pathAbout() => getPath("About");
  static String pathPortfolio() => getPath("Portfolio");
  static String pathContact() => getPath("Contact");
  static String pathSlides() => getPath("Slides");

  static String getPath(String pageName) {
    return _pathsKeyValue[pageName] ?? '/';
  }

  static List<String> getKeys() {
    return _pathsKeyValue.keys.toList();
  }
}
