import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PhotoCard extends StatelessWidget {
  const PhotoCard({
    Key? key,
    required this.index,
    this.extent,
    this.backgroundColor,
    this.bottomSpace,
  }) : super(key: key);

  final int index;
  final double? extent;
  final double? bottomSpace;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    final child = Container(
      height: extent,
      child: Image.network(
        'https://picsum.photos/500/500?random=$index',
        // width: width.toDouble(),
        // height: height.toDouble(),
        fit: BoxFit.cover,
      ),
      decoration: BoxDecoration(
        color: backgroundColor ?? Color(0xFF34568B),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(8.0),
          topRight: Radius.circular(8.0),
          bottomLeft: Radius.circular(8.0),
          bottomRight: Radius.circular(8.0),
        ),
      ),
    );

    if (bottomSpace == null) {
      return child;
    }

    return Column(
      children: [
        Expanded(child: child),
        Container(
          height: bottomSpace,
          color: Colors.green,
        )
      ],
    );
  }
}
