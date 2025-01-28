import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SocialIconButtonWidget extends StatefulWidget {
  final String iconPath;
  final VoidCallback onTap;

  const SocialIconButtonWidget({
    super.key,
    required this.iconPath,
    required this.onTap,
  });

  @override
  State<SocialIconButtonWidget> createState() => _SocialIconButtonState();
}

class _SocialIconButtonState extends State<SocialIconButtonWidget> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() => isHovered = false),
      child: GestureDetector(
        onTap: widget.onTap,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          child: SvgPicture.asset(
            widget.iconPath,
            width: 24,
            height: 24,
            colorFilter: ColorFilter.mode(
              isHovered ? Colors.white : const Color(0xFF787878),
              BlendMode.srcIn,
            ),
          ),
        ),
      ),
    );
  }
}
