import 'package:exploring_flutter/utils/app_assets.dart';
import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {

  final double width, height;
  final String imagePath;

  ImageWidget(this.width, this.height, this.imagePath);

  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AppAssets().getImageAsset(imagePath); // "assets/images/flutter.png"
    Image image = Image(image: assetImage, width: width, height: height);
    return Container(child: image);
  }

}