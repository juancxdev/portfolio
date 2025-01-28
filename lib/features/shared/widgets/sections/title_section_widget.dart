import 'package:flutter/material.dart';

enum _TitleSection { h1, h2, h3 }

class _BaseTitleSection extends StatelessWidget {
  final String text;
  final _TitleSection textStyle;
  final double marginText;
  const _BaseTitleSection({
    super.key,
    this.text = "Title",
    this.marginText = 24,
    this.textStyle = _TitleSection.h1,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: marginText),
      alignment: Alignment.centerLeft,
      child: RichText(
        text: TextSpan(
          text: "# ",
          children: [
            TextSpan(
              text: textStyle == _TitleSection.h1 ? text.toUpperCase() : text,
              style: _getTextStyle(context),
            ),
          ],
          style: _getTextStyle(context)
              .copyWith(color: Theme.of(context).primaryColor),
        ),
      ),
    );
  }

  TextStyle _getTextStyle(BuildContext context) {
    if (textStyle == _TitleSection.h2) {
      return Theme.of(context).textTheme.headlineMedium!;
    }
    if (textStyle == _TitleSection.h3) {
      return Theme.of(context).textTheme.headlineSmall!;
    }
    return Theme.of(context).textTheme.headlineLarge!;
  }
}

class TitleH1Section extends _BaseTitleSection {
  const TitleH1Section({
    super.key,
    required super.text,
  }) : super(
          textStyle: _TitleSection.h1,
        );
}

class TitleH2Section extends _BaseTitleSection {
  const TitleH2Section({
    super.key,
    required super.text,
  }) : super(
          marginText: 16,
          textStyle: _TitleSection.h2,
        );
}
