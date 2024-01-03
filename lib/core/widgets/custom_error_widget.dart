import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/widgets.dart';

class CustomErrorWidegt extends StatelessWidget {
  const CustomErrorWidegt({super.key, required this.errorMessage});
  final String errorMessage;
  @override
  Widget build(BuildContext context) {
    return Text(errorMessage,style: Styles.textStyle18,);
  }
}
