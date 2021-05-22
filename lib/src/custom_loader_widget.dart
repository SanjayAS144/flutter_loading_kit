import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class CustomLoaderWidget extends StatelessWidget {
  final String assets;
  final height;
  final width;
  final onTap;

  CustomLoaderWidget({
    @required this.assets,
    this.height,
    this.width,
    this.onTap,
  });



  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: onTap,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Lottie.asset(
            assets,
            package: 'flutter_loading_kit',
            height: height != null ? height:100.0,
            width: width != null ? width:100.0,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
