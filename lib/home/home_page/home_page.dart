import 'package:flutter/material.dart';
import 'package:gym_helper/blocs/home_bloc/home_bloc.dart';
import 'package:gym_helper/blocs/profile_bloc/profile_bloc.dart';

import 'widgets/exorcise_rutine_card_view/exorcise_rutine_card_view.dart';
import 'widgets/rutine_selected/rutine_selected.dart';
import 'widgets/timer_view/timer_view.dart';
import 'widgets/user_view/user_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final ProfileBloc profileBloc = ProfileBloc();
    final HomeBloc homeBloc = HomeBloc();
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            UserView(profileBloc: profileBloc),
            ExorsiceRutineCardView(homeBloc: homeBloc),
            TimerView(homeBloc: homeBloc),
            RutineSelected(homeBloc: homeBloc),
          ],
        ),
      ),
    );
  }
}
