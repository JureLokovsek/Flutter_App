import 'package:exploring_flutter/utils/app_assets.dart';
import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AppAssets().getImageAsset("assets/images/flutter.png");
    Image image = Image(image: assetImage, width: 250.0, height: 250.0);
    return Container(padding: EdgeInsets.only(top: 20.0), child: image);
  }

}