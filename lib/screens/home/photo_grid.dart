import 'package:amirtham_kolangal/screens/photo_viewer/photo_viewer_screen.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../business_logic/constants.dart';
import 'package:photo_view/photo_view.dart';

class PhotoGrid extends StatelessWidget {
  const PhotoGrid({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            child: Text(
              'My Collections',
              textAlign: TextAlign.left,
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          const SizedBox(height: 10),
          GridView.builder(
              addAutomaticKeepAlives: true,
              shrinkWrap: true,
              physics: const ScrollPhysics(),
              itemCount: 36,
              //padding: const EdgeInsets.all(8),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, crossAxisSpacing: 4, mainAxisSpacing: 4),
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, PhotoViewerScreen.routeName,
                        arguments:
                            "${ImageConstants.imagesBasePath}/${index + 1}.jpg");
                  },
                  child: CachedNetworkImage(
                    //imageUrl: "http://via.placeholder.com/350x150",
                    imageUrl:
                        "${ImageConstants.imagesBasePath}/${index + 1}.jpg",
                    fit: BoxFit.cover,
                    progressIndicatorBuilder:
                        (context, url, downloadProgress) => Center(
                      child: CircularProgressIndicator(
                          value: downloadProgress.progress),
                    ),
                    errorWidget: (context, url, error) =>
                        const Icon(Icons.error),
                  ),
                );
                // return CachedNetworkImage(
                //   imageUrl:
                //       "${ImageConstants.imagesBasePath}/${index + 1}.jpg",
                //   fit: BoxFit.cover,
                // );
              }),
        ],
      ),
    );
  }
}
