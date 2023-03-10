import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:selim_trade/feature/news/data/model/news_model.dart';

class NewsImageBuilder extends StatelessWidget {
  NewsImageBuilder({super.key, required this.model});
  NewsModel model;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: model.images.isEmpty ? 0 : 580,
      child: ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          itemCount: model.images.length,
          itemBuilder: (context, index) {
            if (model.images.isNotEmpty) {
              return Container(
                height: 320,
                width: 360,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: CachedNetworkImageProvider(
                          model.images[index].image!),
                      fit: BoxFit.contain),
                ),
              );
            } else {
              return const SizedBox.shrink();
            }
          }),
    );
  }
}
