import 'package:flutter/material.dart';
import 'package:flutter_profile/models/Recommendation.dart';
import 'package:flutter_profile/models/organization.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../constants.dart';

class RecommendationCard extends StatelessWidget {
  const RecommendationCard({
    Key? key,
    required this.organization,
  }) : super(key: key);

  final Organization organization;

  @override
  Widget build(BuildContext context) {
    Future<void> _launchInBrowser(String url) async {
      if (await canLaunch(url)) {
        await launch(
          url,
          forceSafariVC: false,
          forceWebView: false,
          headers: <String, String>{'my_header_key': 'my_header_value'},
        );
      } else {
        throw 'Could not launch $url';
      }
    }

    Future<void> _showMyDialog(Organization organization) async {
      return showDialog<void>(
        context: context,
        barrierDismissible: true, // user must tap button!
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(organization.title!),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  Text(
                    organization.organizationName!,
                    style: Theme.of(context).textTheme.subtitle2,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(organization.description!,
                      style: Theme.of(context).textTheme.subtitle1),
                  TextButton(
                    onPressed: () {
                      _launchInBrowser(organization.link!);
                      return Navigator.pop(context);
                    },
                    child: const Text('Link'),
                  ),
                ],
              ),
            ),
            actions: <Widget>[
              TextButton(
                child: const Text('Back'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    }

    return Container(
      width: 400,
      padding: EdgeInsets.all(defaultPadding),
      color: secondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "${organization.title}",
            style: Theme.of(context).textTheme.subtitle2,
          ),
          Text("${organization.organizationName}"),
          const SizedBox(height: defaultPadding),
          Text(
            "${organization.description}",
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(height: 1.5),
          ),
          TextButton(
            onPressed: () => _showMyDialog(organization),
            child: Text(
              "Read More >>",
              style: TextStyle(color: primaryColor),
            ),
          ),
        ],
      ),
    );
  }
}
