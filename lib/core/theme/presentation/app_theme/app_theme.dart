import 'package:flutter/material.dart';
import 'package:mocha_vista/core/utlis/colors.dart';

class AppTheme {
  AppTheme._();

  static final ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,

    // colorScheme:  ColorScheme(
    //   brightness: Brightness.light,
    //   primary: ColorManager.primary,
    //   // onPrimary: Colors.white,
    //   // secondary: AppColors.secondary,
    //   // onSecondary: Colors.white,
    //   error:ColorManager .error,
    //   onError: Colors.white,
    //   // surface: AppColors.lightSurface,
    //   // onSurface: AppColors.lightText,
    // ),
    scaffoldBackgroundColor: ColorManager.lightBackground,
    textTheme: const TextTheme(
      // Display
      displayLarge: TextStyle(
        fontSize: 57,
        fontWeight: FontWeight.w400,
        color: ColorManager.black,
      ),
      displayMedium: TextStyle(
        fontSize: 45,
        fontWeight: FontWeight.w400,
        color: ColorManager.black,
      ),
      displaySmall: TextStyle(
        fontSize: 36,
        fontWeight: FontWeight.w400,
        color: ColorManager.black,
      ),

      // Headlines
      headlineLarge: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.w700,
        color: ColorManager.black,
      ),
      headlineMedium: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.w600,
        color: ColorManager.black,
      ),
      headlineSmall: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w600,
        color: ColorManager.black,
      ),

      // Titles
      titleLarge: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.w600,
        color: ColorManager.black,
      ),
      titleMedium: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: ColorManager.black,
      ),
      titleSmall: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        color: ColorManager.black,
      ),

      // Body
      bodyLarge: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: ColorManager.black,
      ),
      bodyMedium: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: ColorManager.black,
      ),
      bodySmall: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: ColorManager.black,
      ),

      // Labels
      labelLarge: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        color: ColorManager.black,
      ),
      labelMedium: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w500,
        color: ColorManager.black,
      ),
      labelSmall: TextStyle(
        fontSize: 11,
        fontWeight: FontWeight.w500,
        color: ColorManager.black,
      ),
    ),

    appBarTheme: const AppBarTheme(
      backgroundColor: ColorManager.lightSurface,
      foregroundColor: ColorManager.darkBrown,
      elevation: 2,
      centerTitle: true,
    ),

    cardTheme: const CardThemeData(
      color: ColorManager.lightSurface,
      elevation: 0,
      margin: EdgeInsets.zero,
    ),

    // inputDecorationTheme: InputDecorationTheme(
    //   hintStyle: AppTextStyles.lightTextTheme.bodyMedium?.copyWith(
    //     color: AppColors.lightSecondaryText,
    //   ),
    //   labelStyle: AppTextStyles.lightTextTheme.bodyMedium,
    //   border: OutlineInputBorder(
    //     borderRadius: BorderRadius.circular(12),
    //     borderSide: const BorderSide(color: AppColors.lightBorder),
    //   ),
    //   enabledBorder: OutlineInputBorder(
    //     borderRadius: BorderRadius.circular(12),
    //     borderSide: const BorderSide(color: AppColors.lightBorder),
    //   ),
    //   focusedBorder: OutlineInputBorder(
    //     borderRadius: BorderRadius.circular(12),
    //     borderSide: const BorderSide(color: AppColors.primary, width: 1.5),
    //   ),
    //   errorBorder: OutlineInputBorder(
    //     borderRadius: BorderRadius.circular(12),
    //     borderSide: const BorderSide(color: AppColors.error),
    //   ),
    // ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: ColorManager.darkBrown,
        foregroundColor: Colors.white,
        //style: AppTextStyles.lightTextTheme.labelLarge,
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
    ),

    dividerTheme: const DividerThemeData(
      color: ColorManager.lightBorder,
      thickness: 1,
    ),

    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: ColorManager.lightSurface,
      selectedItemColor: ColorManager.primary,
      unselectedItemColor: ColorManager.lightSecondaryText,
    ),
  );

  static final ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,

    // colorScheme: const ColorScheme(
    //   brightness: Brightness.dark,
    //   primary: AppColors.primary,
    //   onPrimary: Colors.white,
    //   secondary: AppColors.secondary,
    //   onSecondary: Colors.white,
    //   error: AppColors.error,
    //   onError: Colors.white,
    //   surface: AppColors.darkSurface,
    //   onSurface: AppColors.darkText,
    // ),

    //   scaffoldBackgroundColor: AppColors.darkBackground,
    textTheme: TextTheme(
      // Display
      displayLarge: TextStyle(
        fontSize: 57,
        fontWeight: FontWeight.w400,
        color: ColorManager.white,
      ),
      displayMedium: TextStyle(
        fontSize: 45,
        fontWeight: FontWeight.w400,
        color: ColorManager.white,
      ),
      displaySmall: TextStyle(
        fontSize: 36,
        fontWeight: FontWeight.w400,
        color: ColorManager.white,
      ),

      // Headlines
      headlineLarge: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.w700,
        color: ColorManager.white,
      ),
      headlineMedium: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.w600,
        color: ColorManager.white,
      ),
      headlineSmall: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w600,
        color: ColorManager.white,
      ),

      // Titles
      titleLarge: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.w600,
        color: ColorManager.white,
      ),
      titleMedium: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: ColorManager.white,
      ),
      titleSmall: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        color: ColorManager.white,
      ),

      // Body
      bodyLarge: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: ColorManager.white,
      ),
      bodyMedium: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: ColorManager.white,
      ),
      bodySmall: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: ColorManager.white,
      ),

      // Labels
      labelLarge: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        color: ColorManager.white,
      ),
      labelMedium: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w500,
        color: ColorManager.white,
      ),
      labelSmall: TextStyle(
        fontSize: 11,
        fontWeight: FontWeight.w500,
        color: ColorManager.white,
      ),
    ),
  );

  //   appBarTheme: const AppBarTheme(
  //     backgroundColor: AppColors.darkBackground,
  //     foregroundColor: AppColors.darkText,
  //     elevation: 0,
  //     centerTitle: false,
  //   ),

  //   cardTheme: const CardThemeData(
  //     color: AppColors.darkSurface,
  //     elevation: 0,
  //     margin: EdgeInsets.zero,
  //   ),

  //   inputDecorationTheme: InputDecorationTheme(
  //     filled: true,
  //     fillColor: AppColors.darkSurface,
  //     hintStyle: AppTextStyles.darkTextTheme.bodyMedium?.copyWith(
  //       color: AppColors.darkSecondaryText,
  //     ),
  //     labelStyle: AppTextStyles.darkTextTheme.bodyMedium,
  //     border: OutlineInputBorder(
  //       borderRadius: BorderRadius.circular(12),
  //       borderSide: const BorderSide(color: AppColors.darkBorder),
  //     ),
  //     enabledBorder: OutlineInputBorder(
  //       borderRadius: BorderRadius.circular(12),
  //       borderSide: const BorderSide(color: AppColors.darkBorder),
  //     ),
  //     focusedBorder: OutlineInputBorder(
  //       borderRadius: BorderRadius.circular(12),
  //       borderSide: const BorderSide(color: AppColors.primary, width: 1.5),
  //     ),
  //     errorBorder: OutlineInputBorder(
  //       borderRadius: BorderRadius.circular(12),
  //       borderSide: const BorderSide(color: AppColors.error),
  //     ),
  //   ),

  //   elevatedButtonTheme: ElevatedButtonThemeData(
  //     style: ElevatedButton.styleFrom(
  //       backgroundColor: AppColors.primary,
  //       foregroundColor: Colors.white,
  //       textStyle: AppTextStyles.darkTextTheme.labelLarge,
  //       padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
  //       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
  //     ),
  //   ),

  //   dividerTheme: const DividerThemeData(
  //     color: AppColors.darkBorder,
  //     thickness: 1,
  //   ),

  //   bottomNavigationBarTheme: const BottomNavigationBarThemeData(
  //     backgroundColor: AppColors.darkSurface,
  //     selectedItemColor: AppColors.primary,
  //     unselectedItemColor: AppColors.darkSecondaryText,
  //   ),
  // );
}
