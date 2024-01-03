
import 'package:skeletons/skeletons.dart';

import 'package:flutter/material.dart';

main() {
  runApp(const MaterialApp(home: SkeletonNewestBooks()));
}

class SkeletonNewestBooks extends StatefulWidget {
  const SkeletonNewestBooks({super.key});

  @override
  State<SkeletonNewestBooks> createState() => _SkeletonNewestBooksState();
}

class _SkeletonNewestBooksState extends State<SkeletonNewestBooks> {
  @override
  @override
  void initState() {
    super.initState();

    // Timer(
    //   const Duration(seconds: 3),
    //       () => Navigator.pushReplacementNamed(context, MyPagesRoutes.showMore),
    // );
  }

  @override
  Widget build(BuildContext context) {
    return
      SingleChildScrollView(
        child: Expanded(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                Row(
                  children: [
                    similarLoadingSkeleton(),
                    const SizedBox(width: 10,),
                    Expanded(
                      child: Column(
                        children: [titleOfBookSkeleton(),
                        const SizedBox(height: 10,),
                        smallBookTitleSkeleton(),
                          const SizedBox(height: 10,),

                          smallBookTitleSkeleton(),
                      ],),
                    )
                  ],
                )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                Row(
                  children: [
                    similarLoadingSkeleton(),
                    const SizedBox(width: 10,),
                    Expanded(
                      child: Column(
                        children: [titleOfBookSkeleton(),
                        const SizedBox(height: 10,),
                        smallBookTitleSkeleton(),
                          const SizedBox(height: 10,),

                          smallBookTitleSkeleton(),
                      ],),
                    )
                  ],
                )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                Row(
                  children: [
                    similarLoadingSkeleton(),
                    const SizedBox(width: 10,),
                    Expanded(
                      child: Column(
                        children: [titleOfBookSkeleton(),
                        const SizedBox(height: 10,),
                        smallBookTitleSkeleton(),
                          const SizedBox(height: 10,),

                          smallBookTitleSkeleton(),
                      ],),
                    )
                  ],
                )
                  ],
                ),
              ),

            ],
          ),
        ),
      );

  }

  SkeletonAvatar similarLoadingSkeleton() {
    return SkeletonAvatar(
        style: SkeletonAvatarStyle(
            width: 100,
            height: 70 * 2,
            borderRadius: BorderRadius.circular(16)));
  }

  SkeletonLine smallBookTitleSkeleton() {
    return SkeletonLine(
      style: SkeletonLineStyle(
          height: 18, width: 100, borderRadius: BorderRadius.circular(4)),
    );
  }

  SkeletonLine titleOfBookSkeleton() {
    return SkeletonLine(
      style: SkeletonLineStyle(
          height: 18, width: 200, borderRadius: BorderRadius.circular(4)),
    );
  }

  Row firstTitleWithRowAndExpandedSkeleton() {
    return Row(
      children: [
        smallBookTitleSkeleton(),
        const Expanded(child: Text("")),
      ],
    );
  }

  Row titleLineSkeleton() {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 10, 10, 10),
          child: smallBookTitleSkeleton(),
        ),
        const Expanded(child: Text("")),
      ],
    );
  }
}
