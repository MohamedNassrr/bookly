import 'package:bookly/core/utils/assets_data.dart';
import 'package:flutter/material.dart';

class ImageListViewItem extends StatelessWidget {
  const ImageListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: MediaQuery.of(context).size.height *.3,
      child: AspectRatio(
        aspectRatio: 2.7/4,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image: const DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(AssetsData.testImage),
            ),
          ),
        ),
      ),
    );
  }
}