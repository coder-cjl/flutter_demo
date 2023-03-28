import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PlatfromPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if (Platform.isAndroid) {
      return Center();
    } else {
      return Container(
        width: 200,
        height: 200,
        child: const UiKitView(
          viewType: "plugins.flutter.io/custom_platform_view_plugin",
          creationParams: {'key': 'value'},
          creationParamsCodec: StandardMessageCodec(),
        ),
      );
    }
  }
}
