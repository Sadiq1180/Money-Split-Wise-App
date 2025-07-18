import 'package:flutter/material.dart';

class AddProfileButton extends StatelessWidget {
  final VoidCallback? onPressed;

  const AddProfileButton({Key? key, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 64,
        height: 64,
        margin: const EdgeInsets.only(right: 12),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.withOpacity(0.5), width: 2),
          borderRadius: BorderRadius.circular(16),
        ),
        child: const Center(
          child: Icon(Icons.add, color: Colors.grey, size: 28),
        ),
      ),
    );
  }
}
