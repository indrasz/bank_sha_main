part of 'extensions.dart';

String dateToMonthDate(DateTime date) {
  return DateFormat('MMMM dd').format(date);
}
