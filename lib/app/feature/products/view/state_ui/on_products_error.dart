import 'package:flutter/material.dart';

class OnProductsError extends StatelessWidget {
  const OnProductsError({
    super.key,
    required this.msg,
    required this.onRety,
  });

  final String? msg;
  final VoidCallback onRety;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          msg ?? "Something went wrong.",
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 10),
        Center(
          child: FilledButton(
            onPressed: onRety,
            child: const Text("Retry"),
          ),
        ),
      ],
    );
  }
}
