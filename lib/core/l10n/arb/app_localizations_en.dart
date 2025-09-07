// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get createNewEvent => 'Create new event';

  @override
  String get eventTitle => 'Event title';

  @override
  String get eventDescription => 'Event description';

  @override
  String get eventDate => 'Event date';

  @override
  String get eventTime => 'Event time';

  @override
  String get adjustBasedOnCompletionDate => 'Adjust based on completion date';

  @override
  String get recurringEvent => 'Recurring event';

  @override
  String get save => 'Save';

  @override
  String get titleCannotBeEmpty => 'Title cannot be empty';

  @override
  String get home => 'Home';

  @override
  String get settings => 'Settings';

  @override
  String get events => 'events';

  @override
  String get startTime => 'Start Time';

  @override
  String get endTime => 'End Time';
}
