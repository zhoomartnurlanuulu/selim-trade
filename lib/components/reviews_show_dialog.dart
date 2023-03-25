import 'package:cached_network_image/cached_network_image.dart';
import 'package:selim_trade/resource/app_text_style.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

showReviewDialog(BuildContext context, String title, String image, String gate,
    String content) {
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      titlePadding: const EdgeInsets.only(top: 10, right: 10, left: 10),
      iconPadding: EdgeInsets.zero,
      title: Row(
        children: [
          CircleAvatar(
            radius: 26,
            backgroundImage: CachedNetworkImageProvider(image),
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: AppTextStyles.s14w600,
              ),
              Text(
                gate,
                style: AppTextStyles.s11w600,
              ),
            ],
          ),
          const Spacer(),
          GestureDetector(
            onTap: () {
              context.router.pop();
            },
            child: const Icon(Icons.close),
          ),
        ],
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(content),
        ],
      ),
    ),
  );
}
