import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:market_example/Database/api_manager.dart';
import '../../Components/buttom_sheet_sorting.dart';
import '../../Components/product_item.dart';
import '../../models/products_response.dart';
import '../../models/sort_enum.dart';

class ProductsDetails extends StatefulWidget {
  static String routeName = 'details';
  static ValueNotifier<SORT_TYPES> chosenSort = ValueNotifier(SORT_TYPES.popular);

  @override
  State<ProductsDetails> createState() => _ProductsDetailsState();
}

class _ProductsDetailsState extends State<ProductsDetails> {
  late Future<ProductsResponse> products;

  @override
  Widget build(BuildContext context) {
    var categoryID = ModalRoute.of(context)?.settings.arguments as String;
    products = API_Manager().getProducts(categoryID);
    print('gg products => ${products.then((value) => value.data)}');

    return Scaffold(
      appBar: AppBar(
        title: Text('Products'),
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          ValueListenableBuilder(
              valueListenable: ProductsDetails.chosenSort,
              builder: (context, newValue, child){
                return Container(
                  color: Colors.blue,
                  child: FutureBuilder(
                    future: products,
                    builder: (BuildContext context, AsyncSnapshot<ProductsResponse> snapshot)
                    {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return Center(child: CircularProgressIndicator());
                      } else if (snapshot.hasError) {
                        return Column(
                          children: [
                            Text("Something went wrong"),
                            //Text("${snapshot.error}"),
                            ElevatedButton(
                              child: Text("Try Again"),
                              onPressed: () {
                                print('refresh after something went wrong');
                                //print(snapshot.error);
                                setState(() {});
                              },
                            ),
                          ],
                        );
                      } else if (snapshot.data?.success != true) {
                        return Column(
                          children: [
                            Text("Error ${snapshot.data?.statusCode}"),
                            Text("Error ${snapshot.data?.message}"),
                            ElevatedButton(
                              child: Text("Try Again"),
                              onPressed: () {
                                print('refresh after an error');
                                setState(() {});
                              },
                            ),
                          ],
                        );
                      }
                      // If server have data
                      else {
                        var lista = snapshot.data?.data ?? [];

                        switch(newValue)
                        {
                          case SORT_TYPES.price_low_to_high:
                            lista.sort((a, b) => (int.parse(a.productsPrice??'')).compareTo(int.parse(b.productsPrice??'')));
                            break;
                          case SORT_TYPES.price_high_to_low:
                            lista.sort((a, b) => (int.parse(b.productsPrice??'')).compareTo(int.parse(a.productsPrice??'')));
                            break;
                          case SORT_TYPES.rating_high_to_low:
                            lista.sort((a, b) => (double.parse(b.productRate??'')).compareTo(double.parse(a.productRate??'')));
                            break;
                          case SORT_TYPES.popular:
                            lista.sort((a, b) => (double.parse(a.productsID??'')).compareTo(double.parse(b.productsID??'')));
                        }
                        return Container(
                            color: Colors.white,
                            child: RefreshIndicator(
                                onRefresh: refreshing,
                                child: Container(
                                  margin: EdgeInsets.all(8),
                                  child: GridView.builder(
                                    itemBuilder:(context, index) => ProductItem(data: lista[index]),
                                    itemCount: lista.length,
                                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 2,
                                        mainAxisSpacing: 40,
                                        crossAxisSpacing: 5,childAspectRatio: 6/10)
                                    ,),
                                )
                            )
                        );
                        // return MyTabController(sources: lista);
                      }
                    },
                  ),
                );
              }
              ),
          Positioned(
            bottom: MediaQuery.of(context).size.height *0.05 ,
            child: ElevatedButton(
              onPressed: () {
                showModalBottomSheet(context: context, builder: (buildContext){
                return Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20.0))),
                    child: BS_Sort());
              }); },
              child: Row(
                children: [
                  Icon(Icons.sort),
                  Text("  Sort"),
                ],
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.deepOrange,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)
                ),
                ),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> refreshing()
  {
    setState(() {});
    return Future.delayed(Duration(seconds: 0));
  }
}
