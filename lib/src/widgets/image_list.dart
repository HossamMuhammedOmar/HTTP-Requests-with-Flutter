import 'package:flutter/material.dart';
import '../models/image_model.dart';

class ImageList extends StatelessWidget {
  final List<ImageModel> images;

  ImageList(this.images);

  @override
  Widget build(BuildContext context) {
    return (ListView.builder(
      itemCount: images.length,
      itemBuilder: (context, index) {
        return Image.network(images[index].url);
      },
    ));
  }
}
