import 'package:carrot/models/product.dart';
import 'package:carrot/screens/home/components/product_item.dart';
import 'package:carrot/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(children: const [
            Text('서초동'),
            SizedBox(
              width: 4.0,
            ),
            Icon(
              CupertinoIcons.chevron_down,
              size: 15,
            )
          ]),
          actions: [
            IconButton(
              icon: const Icon(
                CupertinoIcons.search,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(CupertinoIcons.list_dash),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(CupertinoIcons.bell),
              onPressed: () {},
            ),
          ],
          bottom: const PreferredSize(
            preferredSize: Size.fromHeight(0.5),
            child: Divider(thickness: 0.5, height: 0.5, color: Colors.grey),
          ),
        ),
        body: ListView.separated(
            itemBuilder: (context, index) =>
                ProductItem(product: productList[index]),
            separatorBuilder: (context, index) => const Divider(
                height: 0, indent: 16, endIndent: 16, color: Colors.grey),
            itemCount: productList.length));
  }
}
