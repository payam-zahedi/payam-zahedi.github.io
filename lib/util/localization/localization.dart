import 'package:flutter/widgets.dart';
import 'package:portfolio/generated/l10n.dart';

extension LocalizationContext on BuildContext {
  S get localization => S.of(this);
}
