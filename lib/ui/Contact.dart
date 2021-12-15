import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:resumeflutter/widgets/SocialMediaImage.dart';
import 'package:resumeflutter/widgets/Title.dart';
import 'package:resumeflutter/values/values.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../values/values.dart';

class Contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.50,
      width: size.width,
      color: defaultLight,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          CustomTitle(
            center: true,
            text: 'Contact Me',
          ),
          SizedBox(
            height: 60,
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.location_on,
                        color: defaultGrey,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        location,
                        style: styleDescription,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.mail,
                        color: defaultGrey,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Tooltip(
                        message: 'Click to copy!',
                        padding: EdgeInsets.fromLTRB(12, 5, 12, 5),
                        textStyle: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                        ),
                        child: SelectableText(
                          email,
                          style: styleDescription,
                          enableInteractiveSelection: true,
                          toolbarOptions: ToolbarOptions(
                            copy: true,
                            selectAll: true,
                          ),
                          onTap: () {
                            Clipboard.setData(ClipboardData(text: email));
                            Fluttertoast.showToast(
                              msg: "Email copied to clipboard",
                              textColor: defaultYellow,
                              webBgColor:
                                  "linear-gradient(to right, #2b2c2c, #252525)",
                              webPosition: "center",
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                width: size.width * 0.05,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    'Follow Me On',
                    style: styleRole,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Container(
                        height: size.width * 0.02,
                        child: ListView.builder(
                          itemCount: social.length,
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return SocialMediaImage(
                              image: social[index].image,
                              url: social[index].url,
                              toolTip: social[index].name,
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
