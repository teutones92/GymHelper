import 'package:flutter/material.dart';
import 'package:gym_helper/blocs/home_bloc/home_bloc.dart';

class TimerView extends StatelessWidget {
  const TimerView({super.key, required this.homeBloc});
  final HomeBloc homeBloc;
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return ValueListenableBuilder<int>(
        valueListenable: homeBloc.timerValueNotifier,
        builder: (__, timeInSet, _) {
          return Padding(
            padding: const EdgeInsets.only(top: 15),
            child: SizedBox(
              height: size.height / 3,
              width: size.width,
              child: PageView.builder(
                itemCount: 2,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 3,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              timeInSet.toString(),
                              style: TextStyle(
                                  fontSize: size.height / 8,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              ' S',
                              style: TextStyle(
                                  fontSize: size.height / 15,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        ValueListenableBuilder<bool>(
                            valueListenable: homeBloc.startStopValueNotifier,
                            builder: (_, starttTimer, __) {
                              return ElevatedButton(
                                onPressed: () {
                                  if (starttTimer) {
                                    homeBloc.startCounter();
                                  } else {
                                    homeBloc.stopCounter();
                                  }
                                },
                                child: starttTimer
                                    ? const Text('Start')
                                    : const Text('Stop'),
                              );
                            })
                      ],
                    ),
                  );
                },
              ),
            ),
          );
        });
  }
}
