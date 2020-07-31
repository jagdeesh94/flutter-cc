//imports should be in alphabetical order (a norm)
import 'package:flutter/material.dart';
import 'package:flutter_cc/screens/location_detail/image_banner.dart';
import 'package:flutter_cc/screens/location_detail/text_section.dart';

class LocationDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Location Detail'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ImageBanner("assets/images/kiyomizu-dera.jpg"),
          TextSection("Summary 1","Something 1"),
          TextSection("Summary 2","Something 2"),
          TextSection("Summary 3","Something 3"),
        ]
      ),
    );
  }
}
