import 'package:flutter/material.dart';
import 'package:juancx/core/styles/spacing.dart';

class OutlineButtonWidget extends StatelessWidget {
  final String text;
  final bool staticHeigth;
  final VoidCallback function;
  const OutlineButtonWidget(
      {super.key,
      this.text = "Button",
      this.staticHeigth = false,
      required this.function});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: ButtonStyle(
        mouseCursor: WidgetStatePropertyAll(SystemMouseCursors.click),
        side: WidgetStatePropertyAll(BorderSide(
          color: Theme.of(context).primaryColor,
        )),
        padding: WidgetStatePropertyAll(SpacingConstants.paddingWHButton()),
        fixedSize: staticHeigth ? SpacingConstants.boxHButton() : null,
        shape: SpacingConstants.boxBorders(staticHeigth),
      ),
      onPressed: function,
      child: Text(
        text,
        style: TextStyle(
            color: Theme.of(context).primaryColor,
            fontSize: 16,
            fontWeight: FontWeight.w500),
      ),
    );
  }
}
