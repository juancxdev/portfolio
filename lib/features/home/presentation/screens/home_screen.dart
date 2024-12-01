import 'package:flutter/material.dart';
import 'package:juancx/core/styles/spacing.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: SpacingConstants.boxMaxWContainer(),
      margin: SpacingConstants.marginWHContainer(),
      color: Colors.blue,
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Wrap(
            direction: Axis.vertical,
            children: [
              Container(
                width: constraints.maxWidth,
                height: 400,
                color: Colors.red,
                child: Text("sdsdsd"),
              )
            ],
          );
        },
      ),
    );
  }
}
