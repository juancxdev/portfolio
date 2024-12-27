import 'package:flutter/material.dart';

class DetailWidget extends StatelessWidget {
  const DetailWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 24, bottom: 12),
      child: RichText(
        text: TextSpan(
          text: "Juan Campos, ",
          style: Theme.of(context).textTheme.headlineMedium,
          children: [
            TextSpan(
                text: "Software Engineer",
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium!
                    .copyWith(color: Theme.of(context).primaryColor))
          ],
        ),
      ),
    );
  }
}
