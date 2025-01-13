import 'package:flutter/material.dart';

import '../../res/app_color.dart';

class StyledButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;

  const StyledButton({super.key, required this.onPressed, required this.text});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        elevation: const WidgetStatePropertyAll(15),
        foregroundColor: WidgetStateProperty.all(Colors.white),
        backgroundColor: WidgetStateProperty.all(AppColor.primaryColor),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
          ),
        ),
      ),
      onPressed: onPressed,
      child: Row(
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    text,
                    style:
                        const TextStyle(fontWeight: FontWeight.normal, fontSize: 18),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
