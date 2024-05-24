import 'package:url_launcher/url_launcher.dart';

void redirectToGoogleFormTeachers() async {
  const url = 'https://forms.gle/ssb97nV1pka2hNH88';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

void redirectToGoogleFormFeedback() async {
  const url = 'https://forms.gle/13GfBWE1ZGYeUTHk9';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}