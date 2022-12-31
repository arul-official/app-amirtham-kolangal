import 'package:amirtham_kolangal/business_logic/constants.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class PhotoViewerScreen extends StatelessWidget {
  static String routeName = "/photoViewer";

  //final String imageUrl;
  const PhotoViewerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final imageUrl = ModalRoute.of(context)?.settings.arguments as String;

    return Container(
      decoration: const BoxDecoration(gradient: ThemeColors.gradientBackground),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
        ),
        body: Center(
          child: PhotoView(
            backgroundDecoration: const BoxDecoration(
                //gradient: ThemeColors.gradientBackground,
                color: Colors.transparent),
            imageProvider: CachedNetworkImageProvider(imageUrl),
          ),
        ),
      ),
    );
  }
}
