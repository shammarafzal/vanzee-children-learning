import 'package:flutter/material.dart';
import 'package:vanzee/Settings/SizeConfig.dart';

class ImagesList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.screenWidth * 1,
      height:
      MediaQuery.of(context).orientation == Orientation.portrait ? SizeConfig.screenHeight * 0.35 : SizeConfig.screenHeight * 0.23,
      child:  ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Images(image_location: 'https://img.icons8.com/stickers/344/comedy.png'),
          Images(image_location: 'https://img.icons8.com/stickers/344/comedy.png'),
          Images(image_location: 'https://img.icons8.com/stickers/344/comedy.png'),
          Images(image_location: 'https://img.icons8.com/stickers/344/comedy.png'),
        ],
      ),
    );
  }
}

class Images extends StatelessWidget {
  final String image_location;

  Images({
    required this.image_location,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0),
      child: InkWell(
        onTap: () {
          // Navigator.push(
          //   context,
          //   new MaterialPageRoute(
          //     builder: (context) => new SelectedCategoryProducts(selectedCategory: image_caption, selectedCategoryId: 1,),
          //   ),
          // );
        },
        child: Container(
          width: SizeConfig.screenWidth * 1,
          child: ListTile(
            title: Image.network(
              image_location,
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }
}
