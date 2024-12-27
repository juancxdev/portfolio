import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PhraseWidget extends StatelessWidget {
  final String text;
  const PhraseWidget({super.key, this.text = "Contexto"});
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: 512),
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 48, vertical: 24),
            decoration: BoxDecoration(
              color: Color(0xff27292D),
              borderRadius: BorderRadius.circular(8),
            ),
            child: SelectableText(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20),
            ),
          ),
          Positioned(
            top: -15, // La mitad de la altura del widget
            left: 12,
            child: Container(
              height: 30,
              width: 30,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Theme.of(context).canvasColor,
                shape: BoxShape.circle,
              ),
              child: SvgPicture.asset(
                "icons/comma.svg",
                height: 10,
              ),
            ),
          ),
          Positioned(
            bottom: -15,
            right: 12,
            child: Container(
              height: 30,
              width: 30,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Theme.of(context).canvasColor,
                shape: BoxShape.circle,
              ),
              child: Transform.flip(
                flipX: true,
                flipY: true,
                child: SvgPicture.asset(
                  "icons/comma.svg",
                  height: 10,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
