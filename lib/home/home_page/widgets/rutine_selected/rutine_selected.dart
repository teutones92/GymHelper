import 'package:flutter/material.dart';
import 'package:gym_helper/blocs/home_bloc/home_bloc.dart';

class RutineSelected extends StatelessWidget {
  const RutineSelected({super.key, required this.homeBloc});
  final HomeBloc homeBloc;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height / 3,
      width: size.width,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        elevation: 8,
      ),
    );
  }
}
