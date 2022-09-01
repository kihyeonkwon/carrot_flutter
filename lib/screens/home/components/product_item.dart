import 'package:carrot/models/product.dart';
import 'package:carrot/screens/home/components/product_detail.dart';
import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  final Product product;

  const ProductItem({required this.product, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 135.0,
      padding: const EdgeInsets.all(16),
      child: Row(children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              product.urlToImage,
              width: 115,
              height: 115,
              fit: BoxFit.cover,
            )),
        const SizedBox(width: 16),
        ProductDetail(product: product)
      ]),
    );
  }
}
