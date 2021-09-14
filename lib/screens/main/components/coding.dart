import 'package:flutter/material.dart';
import 'package:flutter_profile/components/animated_progress_indicator.dart';

import '../../../constants.dart';

class Coding extends StatelessWidget {
  const Coding({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            "Coding",
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.56,
          label: "Dart",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.62,
          label: "Flutter",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.67,
          label: "Java",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.37,
          label: "C#",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.30,
          label: ".NET",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.46,
          label: "C",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.72,
          label: "SQL",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.61,
          label: "HTML",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.40,
          label: "CSS",
        ),
      ],
    );
  }
}
