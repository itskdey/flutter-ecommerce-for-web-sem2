import 'package:flutter/cupertino.dart';

enum AppColors {
  Primary,
  TextPrimary,
  KhContent,
  AbrilFatface,
  SourceSans3,
  Rosela
}

extension FontsExtension on AppColors {
  Color get value {
    switch (this) {
      case AppColors.Primary:
        return Color(0xFF1c1c1c);
      case AppColors.TextPrimary:
        return Color(0xffe3d2ae);
      // case AppColors.KhContent:
      //   return 'Kh Content';
      // case AppColors.AbrilFatface:
      //   return 'AbrilFatface';
      // case AppColors.SourceSans3:
      //   return 'SourceSans3';
      // case AppColors.Rosela:
      //   return 'Rosela';
      default:
        return Color(0xFF);
    }
  }
}
