import 'dart:async';

import 'package:flutter/cupertino.dart';

class HomeBloc extends ChangeNotifier {
  final TextEditingController weigthEditingCtrl = TextEditingController();
  final TextEditingController tempTimeData = TextEditingController(text: '30');
  final ValueNotifier<int> timerValueNotifier = ValueNotifier<int>(5);
  final ValueNotifier<bool> startStopValueNotifier = ValueNotifier<bool>(true);

  Timer? _timer;

  void calWeight(bool pound) {
    if (pound) {
      weigthEditingCtrl.text;
    }
  }

  void _counting() {
    timerValueNotifier.value--;
  }

  void startCounter() {
    startStopValueNotifier.value = false;
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      _counting();
      if (timerValueNotifier.value == 0) {
        _timer!.cancel();
        startStopValueNotifier.value = true;
        timerValueNotifier.value = int.parse(tempTimeData.text);
      }
    });
  }

  void stopCounter() {
    _timer!.cancel();
    timerValueNotifier.value = int.parse(tempTimeData.text);
    startStopValueNotifier.value = true;
  }
}
