import 'package:carrot/models/product.dart';
import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';

class ProductDetail extends StatelessWidget {
  final Product product;

  const ProductDetail({required this.product, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Visibility(
            visible: product.commentsCount > 0,
            child: _buildIcons(
              product.commentsCount,
              CupertinoIcons.chat_bubble_2,
            ),
          ),
          const SizedBox(width: 8.0),
          Visibility(
              visible: product.heartCount > 0,
              child: _buildIcons(
                product.heartCount,
                CupertinoIcons.heart,
              ))
        ],
      ),
    );
  }
}

String numberFormat(String price) {
  final formatter = NumberFormat('#,###');
  return formatter.format(int.parse(price));
}

Widget _buildIcons(int count, IconData iconData) {
  return Row(
    children: [
      Icon(iconData, size: 14.0),
      const SizedBox(width: 4),
      Text('$count')
    ],
  );
}
