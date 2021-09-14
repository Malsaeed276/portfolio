import 'package:flutter/material.dart';
import 'package:flutter_profile/components/animated_counter.dart';
import 'package:flutter_profile/responsive.dart';

import '../../../constants.dart';
import 'heigh_light.dart';

class HighLightsInfo extends StatelessWidget {
  const HighLightsInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Responsive.isMobileLarge(context)
          ? Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 5,
                    ),
                    HeighLight(
                      counter: AnimatedCounter(
                        value: 50,
                        text: "+",
                      ),
                      label: "Events and conferences",
                    ),
                    HeighLight(
                      counter: AnimatedCounter(
                        value: 13,
                        text: "+",
                      ),
                      label: "Created Videos",
                    ),
                    SizedBox(
                      width: 5,
                    ),
                  ],
                ),
                const SizedBox(height: defaultPadding),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 5,
                    ),
                    HeighLight(
                      counter: AnimatedCounter(
                        value: 10,
                        text: "+",
                      ),
                      label: "GitHub Repositories",
                    ),
                    HeighLight(
                      counter: AnimatedCounter(
                        value: 500,
                        text: "+",
                      ),
                      label: "Social Media subscribe",
                    ),
                    SizedBox(
                      width: 5,
                    ),
                  ],
                ),
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                HeighLight(
                  counter: AnimatedCounter(
                    value: 50,
                    text: "+",
                  ),
                  label: "Events and conferences",
                ),
                HeighLight(
                  counter: AnimatedCounter(
                    value: 13,
                    text: "+",
                  ),
                  label: "Videos",
                ),
                HeighLight(
                  counter: AnimatedCounter(
                    value: 9,
                    text: "+",
                  ),
                  label: "GitHub Repositories",
                ),
                HeighLight(
                  counter: AnimatedCounter(
                    value: 500,
                    text: "+",
                  ),
                  label: "Social Media subscribe",
                ),
                SizedBox(
                  width:2,

                ),
              ],
            ),
    );
  }
}
