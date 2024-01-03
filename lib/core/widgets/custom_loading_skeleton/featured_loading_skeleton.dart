import 'package:flutter/material.dart';
import 'package:skeletons/skeletons.dart';
class FeaturedLoadingSkeleton extends StatelessWidget {
  const FeaturedLoadingSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          featuredLoadingIndicator(),
          featuredLoadingIndicator(),
          featuredLoadingIndicator(),
        ],
      ),
    );
  }
}
Padding featuredLoadingIndicator() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: ClipRRect(
      borderRadius: BorderRadiusDirectional.circular(16),
      child: SkeletonAvatar(
        style: SkeletonAvatarStyle(
            width: 373/2,
            height: 240,
            borderRadius: BorderRadius.circular(7)),
      ),
    ),
  );
}
