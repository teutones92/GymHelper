import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';

class StartBloc extends ChangeNotifier {
  static List<String> list = [
    'name'.tr(),
    'age'.tr(),
    'height'.tr(),
    'weight'.tr(),
  ];
}
