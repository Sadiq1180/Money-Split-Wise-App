import 'package:flutter/material.dart';
import 'package:project_core/shared/navigation/navigation.dart';

class CustomTitle extends StatelessWidget {
  final String title;
  final Widget? trailing;

  const CustomTitle({Key? key, required this.title, this.trailing})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(onPressed: ()=>Navigation.pop(), icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
            size: 20,
          ))
      ,
        const SizedBox(width: 10),
        Expanded(
          child: Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        if (trailing != null) ...[const SizedBox(width: 10), trailing!],
      ],
    );
  }
}
