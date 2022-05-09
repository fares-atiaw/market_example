import 'package:flutter/material.dart';
import 'package:market_example/models/sort_enum.dart';

import '../UI/Screens/products.dart';

class BS_Sort extends StatefulWidget {
  @override
  State<BS_Sort> createState() => _BS_SortState();
}

class _BS_SortState extends State<BS_Sort> {
  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.transparent,
      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
      // decoration: BoxDecoration(
      //     borderRadius: BorderRadius.all(Radius.circular(50.0))),
      // decoration: BoxDecoration(
      //     borderRadius: BorderRadius.only(topLeft: Radius.circular(10.0), topRight: Radius.circular(10.0))),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Sort By', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
              InkWell(
                onTap: () => Navigator.pop(context),
                  child: Icon(Icons.exit_to_app))
            ],
          ),
          SizedBox(height: MediaQuery.of(context).size.height *0.04 ,),
          InkWell(
            onTap: (){
              setState(() {
                ProductsDetails.chosenSort.value = SORT_TYPES.popular;
              });
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Popular Item', style: TextStyle(fontSize: 18)),
                Icon((ProductsDetails.chosenSort.value == SORT_TYPES.popular)
                    ?Icons.check_circle_outline
                    :Icons.circle)
              ],
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height *0.03 ,),
          InkWell(
            onTap: (){
              setState(() {
                ProductsDetails.chosenSort.value = SORT_TYPES.price_low_to_high;
              });
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Price Low To High', style: TextStyle(fontSize: 18)),
                Icon((ProductsDetails.chosenSort.value == SORT_TYPES.price_low_to_high)
                    ?Icons.check_circle_outline
                    :Icons.circle)
              ],
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height *0.03 ,),
          InkWell(
            onTap: (){
              setState(() {
                ProductsDetails.chosenSort.value = SORT_TYPES.price_high_to_low;
              });
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Price High To Low', style: TextStyle(fontSize: 18)),
                Icon((ProductsDetails.chosenSort.value == SORT_TYPES.price_high_to_low)
                    ?Icons.check_circle_outline
                    :Icons.circle)
              ],
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height *0.03 ,),
          InkWell(
            onTap: (){
              setState(() {
                ProductsDetails.chosenSort.value = SORT_TYPES.rating_high_to_low;
              });
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Rating High To Low', style: TextStyle(fontSize: 18)),
                Icon((ProductsDetails.chosenSort.value == SORT_TYPES.rating_high_to_low)
                    ?Icons.check_circle_outline
                    :Icons.circle)
              ],
            ),
          ),

        ],
      ),
    );
  }
}
