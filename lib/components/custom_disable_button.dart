import 'package:flutter/material.dart';

class AppDisableButton extends StatelessWidget {
  const AppDisableButton({
    Key? key,
    required this.onPressed,
    required this.child,
  }) : super(key: key);
  final Function()? onPressed;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.grey,
      ),
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: Colors.transparent,
          foregroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        onPressed: onPressed,
        child: child,
      ),
    );
  }
}
