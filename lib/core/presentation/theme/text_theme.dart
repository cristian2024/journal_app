part of 'theme.dart';

final baseFont = GoogleFonts.inter().copyWith(
  color: JournalColors.charcoalGrey,
);

TextTheme textTheme(ThemeData basis) {
  return basis.textTheme.copyWith(
    labelLarge: baseFont.copyWith(
      fontSize: 16,
      fontWeight: FontWeight.w700,
    ),
    displayLarge: baseFont.copyWith(
      fontSize: 32,
      fontWeight: FontWeight.bold,
    ),
    displayMedium: baseFont.copyWith(
      fontSize: 28,
      fontWeight: FontWeight.bold,
    ),
    displaySmall: baseFont.copyWith(
      fontSize: 24,
      fontWeight: FontWeight.bold,
    ),
    bodyLarge: baseFont.copyWith(
      fontWeight: FontWeight.normal,
      fontSize: 16,
    ),
    bodyMedium: baseFont.copyWith(
      fontWeight: FontWeight.normal,
      fontSize: 14,
    ),
    //as title
    headlineMedium: baseFont.copyWith(
      fontSize: 22,
      fontWeight: FontWeight.bold,
    ),
    headlineSmall: baseFont.copyWith(
      fontSize: 16,
      fontWeight: FontWeight.bold,
    ),
    titleLarge: baseFont.copyWith(
      fontSize: 14,
      fontWeight: FontWeight.bold,
    ),
    titleMedium: baseFont.copyWith(
      fontSize: 16,
      fontWeight: FontWeight.w400,
    ),
  );
}
