enum AppFonts {
  Inter,
  Poppins,
  KhContent,
  AbrilFatface,
  Dosis,
  Rosela,
  Maldives,
  Nikoovers
}

extension FontsExtension on AppFonts {
  String get value {
    switch (this) {
      case AppFonts.Inter:
        return 'Inter';
      case AppFonts.Poppins:
        return 'Poppins';
      case AppFonts.KhContent:
        return 'Kh Content';
      case AppFonts.AbrilFatface:
        return 'AbrilFatface';
      case AppFonts.Dosis:
        return 'Dosis';
      case AppFonts.Rosela:
        return 'Rosela';
      case AppFonts.Maldives:
        return 'Maldives';
      case AppFonts.Nikoovers:
        return 'Nikoovers';
      default:
        return 'Inter';
    }
  }
}
