import 'package:flutter/material.dart';
import 'package:watchapp/utils/theme/widget_themes/appbar_theme.dart';
import 'package:watchapp/utils/theme/widget_themes/bottom_sheet_theme.dart';
import 'package:watchapp/utils/theme/widget_themes/checkbox_theme.dart';
import 'package:watchapp/utils/theme/widget_themes/chip_theme.dart';
import 'package:watchapp/utils/theme/widget_themes/elevated_button_theme.dart';
import 'package:watchapp/utils/theme/widget_themes/outlined_button_theme.dart';
import 'package:watchapp/utils/theme/widget_themes/text_field_theme.dart';
import 'package:watchapp/utils/theme/widget_themes/text_theme.dart';

import '../constants/colors.dart';

class WAppTheme {
  WAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    disabledColor: WColors.grey,
    brightness: Brightness.light,
    primaryColor: WColors.primary,
    textTheme: WTextTheme.lightTextTheme,
    chipTheme: WChipTheme.lightChipTheme,
    scaffoldBackgroundColor: WColors.white,
    appBarTheme: WAppBarTheme.lightAppBarTheme,
    checkboxTheme: WCheckboxTheme.lightCheckboxTheme,
    bottomSheetTheme: WBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: WElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: WOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: WTextFormFieldTheme.lightInputDecorationTheme,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    disabledColor: WColors.grey,
    brightness: Brightness.dark,
    primaryColor: WColors.primary,
    textTheme: WTextTheme.darkTextTheme,
    chipTheme: WChipTheme.darkChipTheme,
    scaffoldBackgroundColor: WColors.black,
    appBarTheme: WAppBarTheme.darkAppBarTheme,
    checkboxTheme: WCheckboxTheme.darkCheckboxTheme,
    bottomSheetTheme: WBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: WElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: WOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: WTextFormFieldTheme.darkInputDecorationTheme,
  );
}
