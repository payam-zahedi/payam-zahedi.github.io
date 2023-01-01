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

  /// `I'm a Software Engineer fluent in Dart, Java, Kotlin languages, and Flutter, Android Frameworks. With more than six years of programming experience. I am very interested in learning in different fields, working on Open Source projects, speaking in technical events, and participating in programming communities. In addition, I am one of the founders and speakers of the Persian Flutter Community.`
  String get profileDescription {
    return Intl.message(
      'I\'m a Software Engineer fluent in Dart, Java, Kotlin languages, and Flutter, Android Frameworks. With more than six years of programming experience. I am very interested in learning in different fields, working on Open Source projects, speaking in technical events, and participating in programming communities. In addition, I am one of the founders and speakers of the Persian Flutter Community.',
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

  /// `Find me in Socials`
  String get socialTitle {
    return Intl.message(
      'Find me in Socials',
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

  /// `Hire Me!`
  String get hireMe {
    return Intl.message(
      'Hire Me!',
      name: 'hireMe',
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

  /// `Persian Flutter Community`
  String get persianFlutterCommunity {
    return Intl.message(
      'Persian Flutter Community',
      name: 'persianFlutterCommunity',
      desc: '',
      args: [],
    );
  }

  /// `Founder`
  String get founder {
    return Intl.message(
      'Founder',
      name: 'founder',
      desc: '',
      args: [],
    );
  }

  /// `2021`
  String get value2021 {
    return Intl.message(
      '2021',
      name: 'value2021',
      desc: '',
      args: [],
    );
  }

  /// `Mobile Developer`
  String get mobileDeveloper {
    return Intl.message(
      'Mobile Developer',
      name: 'mobileDeveloper',
      desc: '',
      args: [],
    );
  }

  /// `RA Secret Application`
  String get raSecretApplication {
    return Intl.message(
      'RA Secret Application',
      name: 'raSecretApplication',
      desc: '',
      args: [],
    );
  }

  /// `Flutter Developer`
  String get flutterDeveloper {
    return Intl.message(
      'Flutter Developer',
      name: 'flutterDeveloper',
      desc: '',
      args: [],
    );
  }

  /// `Dropp Commerce Application`
  String get droppCommerceApplication {
    return Intl.message(
      'Dropp Commerce Application',
      name: 'droppCommerceApplication',
      desc: '',
      args: [],
    );
  }

  /// `Persian Flutter is a Community for Persian language developers of Flutter. Our goal is to be able to expand the Persian-speaking community through a series of events, trainings and experiences. For more information about this community and events, you can visit the PersianFlutter.com site.`
  String get persianFlutterCommunityDescription {
    return Intl.message(
      'Persian Flutter is a Community for Persian language developers of Flutter. Our goal is to be able to expand the Persian-speaking community through a series of events, trainings and experiences. For more information about this community and events, you can visit the PersianFlutter.com site.',
      name: 'persianFlutterCommunityDescription',
      desc: '',
      args: [],
    );
  }

  /// `Rasecret is a product that focuses on personal development. I was in this team to participate in the development of the mobile application of this product. We used flutter to develop the mobile application of this product.`
  String get rasecretDescription {
    return Intl.message(
      'Rasecret is a product that focuses on personal development. I was in this team to participate in the development of the mobile application of this product. We used flutter to develop the mobile application of this product.',
      name: 'rasecretDescription',
      desc: '',
      args: [],
    );
  }

  /// `DroppCommerce is a location-based online store. We used the flutter and vue.js have been used to front-end development and node.js has been used back-end. you can find other info about it on DroppCommerce.ir`
  String get droppCommerceDescription {
    return Intl.message(
      'DroppCommerce is a location-based online store. We used the flutter and vue.js have been used to front-end development and node.js has been used back-end. you can find other info about it on DroppCommerce.ir',
      name: 'droppCommerceDescription',
      desc: '',
      args: [],
    );
  }

  /// `Software Skills`
  String get softwareSkills {
    return Intl.message(
      'Software Skills',
      name: 'softwareSkills',
      desc: '',
      args: [],
    );
  }

  /// `Flutter Skills`
  String get flutterSkills {
    return Intl.message(
      'Flutter Skills',
      name: 'flutterSkills',
      desc: '',
      args: [],
    );
  }

  /// `Android Skills`
  String get androidSkills {
    return Intl.message(
      'Android Skills',
      name: 'androidSkills',
      desc: '',
      args: [],
    );
  }

  /// `Design Skills`
  String get designSkills {
    return Intl.message(
      'Design Skills',
      name: 'designSkills',
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
