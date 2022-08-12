import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'models/product_model.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({Key? key, required this.productDetails})
      : super(key: key);

  final ProductListModel productDetails;

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  bool _customTileExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.white,
            iconTheme: const IconThemeData(
              color: Colors.grey, //change your color here
            ),
            actions: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
              IconButton(
                  onPressed: () {}, icon: const Icon(CupertinoIcons.heart)),
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.shopping_cart))
            ]),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  height: MediaQuery.of(context).size.height * 0.30,
                  child: Image.network(widget.productDetails.productImage!)),
              const SizedBox(height: 10.0),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Text(widget.productDetails.name!),
                    Text(widget.productDetails.description!),
                    const SizedBox(height: 10.0),
                    Row(
                      children: [
                        Text(widget.productDetails.originalPrice!),
                        Text(widget.productDetails.discountPrice!),
                        Text(widget.productDetails.discountPercentage!),
                      ],
                    ),
                    const SizedBox(height: 10.0),
                    const Text(
                        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.'),
                    ExpansionTile(
                      title: const Text('Delivery Details '),
                      trailing: _customTileExpanded
                          ? const Text('less')
                          : const Text('Check delivery date'),
                      children: const [
                        Text(
                            'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum ')
                      ],
                      onExpansionChanged: (bool expanded) {
                        setState(() => _customTileExpanded = expanded);
                      },
                    ),
                    ExpansionTile(
                      title: const Text('Bank Offers'),
                      trailing: _customTileExpanded
                          ? const Text('less')
                          : const Text('more'),
                      children: const [
                        Text(
                            'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum ')
                      ],
                      onExpansionChanged: (bool expanded) {
                        setState(() => _customTileExpanded = expanded);
                      },
                    ),
                    ExpansionTile(
                      title: const Text('Product Details'),
                      trailing: _customTileExpanded
                          ? const Text('less')
                          : const Text('more'),
                      children: const [
                        Text(
                            'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum ')
                      ],
                      onExpansionChanged: (bool expanded) {
                        setState(() => _customTileExpanded = expanded);
                      },
                    ),
                    Row(
                      children: [
                        ElevatedButton(
                            onPressed: () {}, child: const Icon(Icons.share)),
                        ElevatedButton(
                            onPressed: () {},
                            child: const Icon(CupertinoIcons.heart)),
                        ElevatedButton.icon(
                            onPressed: () {},
                            icon: const Icon(Icons.shopping_bag),
                            label: const Text('Add to Bag'))
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
