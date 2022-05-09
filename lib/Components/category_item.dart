import 'package:flutter/material.dart';
import 'package:market_example/models/categories_response.dart';

class CategoryItem extends StatelessWidget {
  Data data;
  int index;

  CategoryItem({required this.data , required this.index});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 12),
      child: Container(
        padding: EdgeInsets.all(2),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            (index %2 != 0)?Image.network(data.productsTypeImage??"", cacheWidth: 100, cacheHeight: 100,):SizedBox(),
            Column(/**/
              children: [
                Text(data.productsTypeNameEnglish ?? 'Undefined Name',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold
                ),),
                SizedBox(height: 8),
                Text(data.productsTypeDiscription ?? 'Undefined Description'),
              ],
            ),
//           Container(
//               clipBehavior: Clip.antiAlias,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(12),
//               ),
//               child: FadeInImage(
//                 image: NetworkImage(data.productsTypeImage??""),
//                 placeholder: AssetImage('assets/images/error.png'),
//                 imageErrorBuilder: (context, error, stackTrace) => Image.asset(
//                     "assets/images/empty_data.webp",
//                     fit: BoxFit.fitWidth),
//                 fit: BoxFit.fill,
//                 height: 100,
//                 width: 100,
//               )
//           )
            (index %2 == 0)?Image.network(data.productsTypeImage??"", cacheWidth: 100, cacheHeight: 100,):SizedBox(),
          ],
        ),
      ),
    );
  }
}
