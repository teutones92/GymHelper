import 'package:flutter/cupertino.dart';

class ProfileBloc extends ChangeNotifier {
  final ValueNotifier<String> valueProfileNotifier = ValueNotifier<String>('');
}
