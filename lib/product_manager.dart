import 'package:flutter/material.dart';

import './products.dart';

class ProductManager extends StatefulWidget {

  final String startingProduct ;

  ProductManager(this.startingProduct) ;
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManager> {

  List<String> _products = [];

  @override
  void initState() {
    // TODO: implement initState
    _products.add(widget.startingProduct);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(5.0),
          child: RaisedButton(
            color: Theme.of(context).primaryColor ,
            onPressed: () {
              setState(() {
                _products.add('Advanced Food Tester');
                 print(_products);
              });
            },
            child: Text('Add Product'),
          ),
        ),
        Expanded( child : Products(_products))
      ],
    );
  }
}
