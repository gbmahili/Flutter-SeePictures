import 'package:flutter/material.dart';
import '../models/image_model.dart';

class ImageList extends StatelessWidget {
  final List<ImageModel> images;
  // Images will be passed in here...just like this.props.images in ReactNative (RN)
  ImageList(this.images);

  // Those images will be passed into the ListView and displayed...just like FlatList in RN
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: images.length,
      //itemBuilder is like rederItem in RN
      // For every element in the images List (array), we show a widget (Component)
      itemBuilder: (context, int index) => displayImage(images, index),
    );
  }

  displayImage(images, index) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
      ),
      margin: const EdgeInsets.all(20.0),
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: <Widget>[
          Padding(
            child: Image.network(images[index].url),
            padding: const EdgeInsets.only(bottom: 5.0),
            ),
          Text('${images[index].title}'),
          
          
        ],
      ) 
    );
  }
}
