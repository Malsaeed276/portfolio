import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_profile/responsive.dart';

import '../../../constants.dart';

class HomeBanner extends StatelessWidget {
  const   HomeBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: Responsive.isMobile(context) ? 2.5 : 3,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "assets/images/backg.jpeg",
            fit: BoxFit.cover,
          ),
          Container(color: darkColor.withOpacity(0.66)),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if(!Responsive.isMobileLarge(context))Spacer(
                  flex: 1,
                ),
                Flexible(
                  flex: 4,
                  child: Text(
                    "I will never give up\nuntil I reach",
                    style: Responsive.isDesktop(context)
                        ? Theme.of(context).textTheme.headline3!.copyWith(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            )
                        : Theme.of(context).textTheme.headline5!.copyWith(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                  ),
                ),
              /*  if (Responsive.isMobileLarge(context))
                  const SizedBox(height: defaultPadding / 2),*/

                Flexible(
                  flex: 2,
                    child: MyBuildAnimatedText()),
                //Flexible(child: SizedBox(height: defaultPadding)),

                 if( !Responsive.isMobileLarge(context) )Flexible(
                   flex: 2,
                   child: ElevatedButton(
                      onPressed: null,
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                            horizontal: defaultPadding * 2,
                            vertical: defaultPadding),
                        backgroundColor: primaryColor,
                      ),
                      child: Text(
                        "WELCOME TO MY JOURNEY",
                        style: TextStyle(color: darkColor),
                      ),
                    ),
                 ),
                if(!Responsive.isMobileLarge(context))Spacer(
                  flex: 1,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class MyBuildAnimatedText extends StatelessWidget {
  const MyBuildAnimatedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      // it applies same style to all the widgets under it
      style: Theme.of(context).textTheme.subtitle1!,
      maxLines: 1,
      child: Column(
        children: [
          Flexible(
            flex: 2,
            child: Row(
              children: [
                if (!Responsive.isMobileLarge(context)) FlutterCodedText(text: "Flutter",),
                if (!Responsive.isMobileLarge(context))
                  SizedBox(width: defaultPadding / 2),
                Responsive.isMobile(context)
                    ? Expanded(child: AnimatedText(text: "Flutter",))
                    : AnimatedText(text: "Flutter",),
                if (!Responsive.isMobileLarge(context))
                  SizedBox(width: defaultPadding / 2),
                if (!Responsive.isMobileLarge(context)) FlutterCodedText(text: "Flutter\\",),
              ],
            ),
          ),
          Flexible(
            flex: 2,
            child: Row(
              children: [
                if (!Responsive.isMobileLarge(context)) FlutterCodedText(text: "Community",),
                if (!Responsive.isMobileLarge(context))
                  SizedBox(width: defaultPadding / 2),
                Responsive.isMobile(context)
                    ? Expanded(child: AnimatedText(text: "Community",))
                    : AnimatedText(text: "Community",),
                if (!Responsive.isMobileLarge(context))
                  SizedBox(width: defaultPadding / 2),
                if (!Responsive.isMobileLarge(context)) FlutterCodedText(text: "Community\\",),
              ],
            ),
          ),
        ],
      )
    );
  }
}

class AnimatedText extends StatelessWidget {
  final String text;
  const AnimatedText({
    Key? key,
    required this.text
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final int _timer=100;
    return AnimatedTextKit(
      animatedTexts: [
        text=="Flutter"?TyperAnimatedText(
          "I build responsive web and mobile app.",
          speed: Duration(milliseconds:_timer),
        ):TyperAnimatedText(
      "I made University based community",
      speed: Duration(milliseconds: _timer),
    ),
        text=="Flutter"?TyperAnimatedText(
          "I build complete Teacher storing questions system.",
          speed: Duration(milliseconds: _timer),
        ):TyperAnimatedText(
    "I made Flutter workshop for beginners",
    speed: Duration(milliseconds: _timer),
    ),
        text=="Flutter"? TyperAnimatedText(
          "I build Dictionary and words Game.",
          speed: Duration(milliseconds: _timer),
        ): TyperAnimatedText(
    "I made global events and conferences",
    speed: Duration(milliseconds: _timer),
    ),
        text=="Flutter"? TyperAnimatedText(
          "I build responsive hosting web page.",
          speed: Duration(milliseconds: _timer),
        ): TyperAnimatedText(
    "I helped +2000 students to start their journey as developer",
    speed: Duration(milliseconds: _timer),
    ),
        /*

       */
      ],
    );
  }
}

class FlutterCodedText extends StatelessWidget {
  final String text;
  const FlutterCodedText({
    Key? key,
    required this.text
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: "<",
        children: [
          TextSpan(
            text: "$text",
            style: TextStyle(color: primaryColor),
          ),
          TextSpan(text: ">"),
        ],
      ),
    );
  }
}
