import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../network/network.dart';

class SocialMediaImage extends StatelessWidget {
  final String url;
  final String toolTip;
  final String image;

  SocialMediaImage({
    required this.url,
    required this.image,
    required this.toolTip,
  });
  
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        Network().launchURL(url);
      },
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
          child: Tooltip(
            message: toolTip,
            padding: EdgeInsets.fromLTRB(12, 5, 12, 5),
            textStyle: TextStyle(
              fontSize: 16,
              color: Colors.white,
              fontWeight: FontWeight.w300,
            ),
            child: Image.asset(
              image,
              height: size.width * 0.02,
              width: size.width * 0.02,
            ),
          ),
        ),
      ),
    );
  }
}
