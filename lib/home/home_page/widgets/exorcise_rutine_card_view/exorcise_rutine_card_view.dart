import 'package:flutter/material.dart';
import 'package:gym_helper/blocs/home_bloc/home_bloc.dart';

class ExorsiceRutineCardView extends StatelessWidget {
  const ExorsiceRutineCardView({super.key, required this.homeBloc});
  final HomeBloc homeBloc;
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height / 6,
      width: size.width,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(15),
            child: Container(
              width: size.width / 6,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(-1, 5),
                        color: Colors.grey,
                        blurRadius: 5)
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(20))),
            ),
          );
        },
      ),
    );
  }
}
