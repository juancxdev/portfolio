import 'package:flutter/material.dart';
import 'package:juancx/core/styles/spacing.dart';

class DefaultButtonWidget extends StatelessWidget {
  final String text;
  final bool staticHeigth;
  final VoidCallback function;
  const DefaultButtonWidget(
      {super.key,
      this.text = "Button",
      this.staticHeigth = false,
      required this.function});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        mouseCursor: WidgetStatePropertyAll(SystemMouseCursors.click),
        backgroundColor: WidgetStatePropertyAll(Theme.of(context).primaryColor),
        padding: WidgetStatePropertyAll(SpacingConstants.paddingWHButton()),
        fixedSize: staticHeigth ? SpacingConstants.boxHButton() : null,
        shape: SpacingConstants.boxBorders(staticHeigth),
      ),
      onPressed: function,
      child: Text(
        text,
        style: TextStyle(
            color: Theme.of(context).textTheme.titleLarge!.color,
            fontSize: 16,
            fontWeight: FontWeight.w500),
      ),
    );
  }
}
