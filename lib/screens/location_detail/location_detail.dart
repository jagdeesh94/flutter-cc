import 'package:flutter/material.dart';
import 'package:flutter_cc/screens/location_detail/text_section.dart';

class LocationDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Location'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextSection(Colors.red),
          TextSection(Colors.green),
          TextSection(Colors.blue),
        ]
      ),
    );
  }
}
