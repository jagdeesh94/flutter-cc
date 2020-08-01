//imports should be in alphabetical order (a norm)
import 'package:flutter/material.dart';
import 'package:flutter_cc/screens/location_detail/image_banner.dart';
import 'package:flutter_cc/screens/location_detail/text_section.dart';
import '../../models/location.dart';

class LocationDetail extends StatelessWidget {

  //We Shouldn't load data in build function as build function will be called multiple times.
  //But just for demo, we have loaded here.
  @override
  Widget build(BuildContext context) {
    final locations = Location.fetchAll();
    final location = locations.first;
    return Scaffold(
      appBar: AppBar(
        title: Text(location.name),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ImageBanner(location.imagePath),
        ]..addAll(textSections(location))
      ),
    );
  }

  List<Widget> textSections(Location location){
    return location.facts.map((fact) => TextSection(fact.title,fact.text)).toList();
  }

}
