import 'package:flutter/material.dart';

class StickyNavbarItemWidget extends StatefulWidget {
  final String text;
  final VoidCallback onPressed;
  final bool isSelected;
  const StickyNavbarItemWidget({
    super.key,
    required this.text,
    required this.onPressed,
    this.isSelected = false,
  });

  @override
  State<StickyNavbarItemWidget> createState() => _StickyNavbarItemWidgetState();
}

class _StickyNavbarItemWidgetState extends State<StickyNavbarItemWidget> {
  bool isHovered = false;
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() {
        isHovered = false;
        isPressed = false;
      }),
      child: GestureDetector(
        onTapDown: (_) => setState(() => isPressed = true),
        onTapUp: (_) => setState(() => isPressed = false),
        onTapCancel: () => setState(() => isPressed = false),
        onTap: widget.onPressed,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          padding: const EdgeInsets.symmetric(
            horizontal: 24.0,
            vertical: 12.0,
          ),
          decoration: BoxDecoration(
            color: _getBackgroundColor(),
            borderRadius: BorderRadius.circular(8.0),
            boxShadow: isPressed
                ? []
                : [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      spreadRadius: 1,
                      blurRadius: 3,
                      offset: const Offset(0, 2),
                    ),
                  ],
          ),
          child: Text(
            widget.text.toUpperCase(),
            style: TextStyle(
              color: _getTextColor(),
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }

  Color _getBackgroundColor() {
    if (widget.isSelected || isPressed) {
      return Theme.of(context).primaryColor;
    }
    if (isHovered) {
      return Theme.of(context).cardColor;
    }
    return Theme.of(context).canvasColor;
  }

  Color _getTextColor() {
    if (widget.isSelected || isPressed) {
      return Colors.white;
    }
    if (isHovered) {
      return Theme.of(context).textTheme.bodyMedium!.color!;
    }
    return Theme.of(context).textTheme.labelMedium!.color!;
  }
}
