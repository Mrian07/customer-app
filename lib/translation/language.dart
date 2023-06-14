import 'package:get/get_navigation/src/root/internacionalization.dart';

import 'arabic.dart';
import 'bangla.dart';
import 'english.dart';
import 'french.dart';
import 'german.dart';

class Languages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': english,
        'bn_BD': bangla,
        'de_DE': german,
        'fr_FR': french,
        'ar_AR': arabic,
      };
}
