import 'package:flutter/material.dart';
import 'package:market_example/models/products_response.dart';

class ProductItem extends StatelessWidget {
  Data data;

  ProductItem({required this.data});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Colors.white,
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black45, width: 1.5),
              borderRadius: BorderRadius.all(
                  Radius.circular(10) //                 <--- border radius here
              ),
            ),
            child: Image.network(data.productsTypeImage??"",
              width: MediaQuery.of(context).size.width *0.4 ,
              height: MediaQuery.of(context).size.height *0.2 ,
            fit: BoxFit.fill,),
          ),
          Container(
            padding: EdgeInsets.only(top: 2, left: 10,right: 10),
            child: Column(
              children: [
                Row(
                  children: [
                    Icon(Icons.star, color: Colors.yellow, size: 18,),
                    Text(data.productRate ??""),
                    Text('(${data.productTotalRates})')
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Text('${data.productsName}',
                    style: TextStyle(
                      fontSize: 16,
                  ),),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.ac_unit_sharp, size: 16,),
                        Text('${data.productsOfferPrice}'),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.ac_unit_sharp, size: 16,),
                        Text('${data.productsPrice}', style: TextStyle(decoration: TextDecoration.lineThrough)),
                      ],
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
