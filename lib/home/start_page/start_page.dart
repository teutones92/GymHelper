import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gym_helper/blocs/start_bloc/start_bloc.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: ListView(
        physics: const NeverScrollableScrollPhysics(),
        children: [
          Padding(
            padding: EdgeInsets.only(top: 50, bottom: size.height / 5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'start_title'.tr(),
                  style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: size.width / 8),
                ),
                SizedBox(height: size.height / 15),
                // Expanded(child: const DropDownLang()),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    StartBloc.list.length,
                    (index) => Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50, vertical: 15),
                      child: TextField(
                        decoration: InputDecoration(
                          label: Text(StartBloc.list[index]),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50)),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 28),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      elevation: 8),
                  onPressed: () {},
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'continue'.tr().toUpperCase(),
                      ),
                      const Icon(Icons.arrow_forward)
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      // bottomNavigationBar: Padding(
      //   padding: EdgeInsets.only(
      //       left: size.width / 5,
      //       bottom: size.height / 5,
      //       right: size.width / 5),
      //   child: ElevatedButton(
      //     onPressed: () {},
      //     child: Text(
      //       'continue'.tr().toUpperCase(),
      //     ),
      //   ),
      // ),
    );
  }
}

class DropDownLang extends StatefulWidget {
  const DropDownLang({super.key});

  @override
  State<DropDownLang> createState() => _DropDownLangState();
}

List<String> list = [];

class _DropDownLangState extends State<DropDownLang> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.arrow_downward),
      elevation: 16,
      style: const TextStyle(color: Colors.deepPurple),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: (String? value) {
        // This is called when the user selects an item.
        setState(() {
          dropdownValue = value!;
        });
      },
      items: list.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
