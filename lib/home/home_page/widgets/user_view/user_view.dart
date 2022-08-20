import 'package:flutter/material.dart';
import 'package:gym_helper/blocs/profile_bloc/profile_bloc.dart';

class UserView extends StatelessWidget {
  const UserView({super.key, required this.profileBloc});
  final ProfileBloc profileBloc;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<String>(
        valueListenable: profileBloc.valueProfileNotifier,
        builder: (_, snapshot, __) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 5, top: 5),
                  child: Text(
                    snapshot != '' ? snapshot : 'Usuario',
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
                Container(
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              offset: const Offset(-1, 5),
                              color: Colors.grey.shade600,
                              blurRadius: 5)
                        ],
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20))),
                    child: const CircleAvatar()),
              ],
            ),
          );
        });
  }
}
