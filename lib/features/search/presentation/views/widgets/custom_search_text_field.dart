import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {

    return TextField(
      decoration: InputDecoration(
          filled: false,
          enabledBorder: buildOutlineInputBorder(.5),
          focusedBorder: buildOutlineInputBorder(1),
          hintText: 'Search',
          suffixIcon: Opacity(
            opacity: .8,
            child: IconButton(
              autofocus: false,
              isSelected: false,
              enableFeedback: false,
              onPressed: () {},
              icon: const Icon(
                color: Colors.white,
                FontAwesomeIcons.magnifyingGlass,
                size: 22,
              ),
            ),
          )),
    );
  }
  
  OutlineInputBorder buildOutlineInputBorder(double opacity) {
    return OutlineInputBorder(
      borderSide: BorderSide(color: Colors.white.withOpacity(opacity)),
      borderRadius: BorderRadius.circular(12),
    );
  }
}
