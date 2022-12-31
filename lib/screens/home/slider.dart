import 'package:cached_network_image/cached_network_image.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

import '../../business_logic/constants.dart';

class MyCarousel extends StatelessWidget {
  const MyCarousel({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Swiper(
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.only(top: 10.0, bottom: 20),
          child: PhysicalModel(
            color: Colors.transparent,
            elevation: 8,
            shadowColor: Colors.grey,
            //shadowColor: ThemeColors.primary,
            borderRadius: BorderRadius.circular(20),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: CachedNetworkImage(
                  imageUrl: "${ImageConstants.sliderBasePath}/${index + 1}.jpg",
                  fit: BoxFit.cover),
              // child: Image.network(
              //   "${ImageConstants.sliderBasePath}/${index + 1}.jpg",
              //   fit: BoxFit.cover,
              // ),
            ),
          ),
        );
      },
      itemCount: 5,
      viewportFraction: 0.8,
      scale: 0.8,
    );
  }
}
