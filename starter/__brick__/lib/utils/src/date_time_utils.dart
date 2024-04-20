part of utils;

const String dateTimeFormatPattern = 'dd/MM/yyyy';

extension DateTimeExtension on DateTime {
  /// Return a string representing [date] formatted according to our locale
  String format([
    String pattern = dateTimeFormatPattern,
    String? locale,
  ]) {
    if (locale != null && locale.isNotEmpty) {
      initializeDateFormatting(locale);
    }
    return DateFormat(pattern, locale).format(this);
  }
}

/// Extension on [DateTime] to provide a utility method for retrieving month names.
extension MonthGetter on DateTime {
  /// A map of month numbers to their corresponding names.
  static final Map<int, String> _months = {
    DateTime.january: 'January',
    DateTime.february: 'February',
    DateTime.march: 'March',
    DateTime.april: 'April',
    DateTime.may: 'May',
    DateTime.june: 'June',
    DateTime.july: 'July',
    DateTime.august: 'August',
    DateTime.september: 'September',
    DateTime.october: 'October',
    DateTime.november: 'November',
    DateTime.december: 'December',
  };

  /// Gets the map of month numbers to their corresponding names.
  Map<int, String> get getMonths => _months;
}

/// Extension on [DateTime] to provide a method for comparing dates without considering time.
extension DateOnlyCompare on DateTime {
  /// Determines if the current date is the same as the provided [other] date, ignoring time.
  ///
  /// Returns `true` if the year, month, and day are the same for both dates, otherwise `false`.
  bool isSameDate(DateTime other) {
    return year == other.year && month == other.month && day == other.day;
  }
}
