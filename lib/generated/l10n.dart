// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Payam Zahedi Portfolio`
  String get title {
    return Intl.message(
      'Payam Zahedi Portfolio',
      name: 'title',
      desc: '',
      args: [],
    );
  }

  /// `Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.`
  String get profileDescription {
    return Intl.message(
      'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
      name: 'profileDescription',
      desc: '',
      args: [],
    );
  }

  /// `Payam`
  String get name {
    return Intl.message(
      'Payam',
      name: 'name',
      desc: '',
      args: [],
    );
  }

  /// `Zahedi`
  String get family {
    return Intl.message(
      'Zahedi',
      name: 'family',
      desc: '',
      args: [],
    );
  }

  /// `Find Me in Socials`
  String get socialTitle {
    return Intl.message(
      'Find Me in Socials',
      name: 'socialTitle',
      desc: '',
      args: [],
    );
  }

  /// `Twitter`
  String get twitter {
    return Intl.message(
      'Twitter',
      name: 'twitter',
      desc: '',
      args: [],
    );
  }

  /// `LinkedIn`
  String get linkedIn {
    return Intl.message(
      'LinkedIn',
      name: 'linkedIn',
      desc: '',
      args: [],
    );
  }

  /// `Github`
  String get github {
    return Intl.message(
      'Github',
      name: 'github',
      desc: '',
      args: [],
    );
  }

  /// `Medium`
  String get medium {
    return Intl.message(
      'Medium',
      name: 'medium',
      desc: '',
      args: [],
    );
  }

  /// `Stack Overflow`
  String get stackOverflow {
    return Intl.message(
      'Stack Overflow',
      name: 'stackOverflow',
      desc: '',
      args: [],
    );
  }

  /// `telegram`
  String get telegram {
    return Intl.message(
      'telegram',
      name: 'telegram',
      desc: '',
      args: [],
    );
  }

  /// `Software Developer`
  String get softwareDeveloper {
    return Intl.message(
      'Software Developer',
      name: 'softwareDeveloper',
      desc: '',
      args: [],
    );
  }

  /// `Download CV`
  String get cvButton {
    return Intl.message(
      'Download CV',
      name: 'cvButton',
      desc: '',
      args: [],
    );
  }

  /// `Contact`
  String get contact {
    return Intl.message(
      'Contact',
      name: 'contact',
      desc: '',
      args: [],
    );
  }

  /// `I'm a software developer who enjoys building new things, learning and challenges. I specialize in mobile software development. But I'm also interested in other areas of software engineering. I use Flutter to develop multi-platform software and use native Kotlin to produce native Android software.`
  String get softwareDeveloperDescription {
    return Intl.message(
      'I\'m a software developer who enjoys building new things, learning and challenges. I specialize in mobile software development. But I\'m also interested in other areas of software engineering. I use Flutter to develop multi-platform software and use native Kotlin to produce native Android software.',
      name: 'softwareDeveloperDescription',
      desc: '',
      args: [],
    );
  }

  /// `Open Source`
  String get openSource {
    return Intl.message(
      'Open Source',
      name: 'openSource',
      desc: '',
      args: [],
    );
  }

  /// `I learned everything from open source. So I decided to be part of this community. I use my free time to participate in open source and developers community. Even this Portfolio web site is Open source, you can check the source code of it in my Github Account.`
  String get openSourceDescription {
    return Intl.message(
      'I learned everything from open source. So I decided to be part of this community. I use my free time to participate in open source and developers community. Even this Portfolio web site is Open source, you can check the source code of it in my Github Account.',
      name: 'openSourceDescription',
      desc: '',
      args: [],
    );
  }

  /// `Speaker & Organizer`
  String get speaker {
    return Intl.message(
      'Speaker & Organizer',
      name: 'speaker',
      desc: '',
      args: [],
    );
  }

  /// `I love sharing my knowledge with the community by writing, speaking and organizing Meetups and events. I am also one of the funders & organizers of Persian Flutter Community. You can find our events at PersianFlutter.com.`
  String get speakerDescription {
    return Intl.message(
      'I love sharing my knowledge with the community by writing, speaking and organizing Meetups and events. I am also one of the funders & organizers of Persian Flutter Community. You can find our events at PersianFlutter.com.',
      name: 'speakerDescription',
      desc: '',
      args: [],
    );
  }

  /// `Design Tools`
  String get designTools {
    return Intl.message(
      'Design Tools',
      name: 'designTools',
      desc: '',
      args: [],
    );
  }

  /// `I'm curious about product design methods and tools and passionate to read about them. I also have the ability to use tools like Adobe XD and Figma.`
  String get designToolsDescription {
    return Intl.message(
      'I\'m curious about product design methods and tools and passionate to read about them. I also have the ability to use tools like Adobe XD and Figma.',
      name: 'designToolsDescription',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en', countryCode: 'US'),
      Locale.fromSubtags(languageCode: 'fa'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
