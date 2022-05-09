import 'package:flutter/material.dart';
import 'package:market_example/Components/category_item.dart';
import 'package:market_example/Database/api_manager.dart';
import 'package:market_example/models/categories_response.dart';

import '../Screens/products.dart';

class Tab_Categories extends StatefulWidget {

  @override
  State<Tab_Categories> createState() => _Tab_CategoriesState();
}

class _Tab_CategoriesState extends State<Tab_Categories> {
  late Future<CategoriesResponse> categories;

  @override
  void initState() {
    super.initState();
    categories = API_Manager().getCategories();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<CategoriesResponse>(
        future: categories,
        builder: (BuildContext context, AsyncSnapshot<CategoriesResponse> snapshot)
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
            //print('productsTypeID => ${lista[3].productsTypeID}');
            return Container(
                  color: Color(0xffecebe2),
                    child: RefreshIndicator(
                        onRefresh: refreshing,
                        child: ListView.builder(itemBuilder:(context, index) => InkWell(
                          onTap: () => Navigator.pushNamed(context, ProductsDetails.routeName, arguments: lista[index].productsTypeID),
                            child: CategoryItem(data: lista[index], index: index)),itemCount: lista.length,)));
            // return MyTabController(sources: lista);
          }
        },
      ),
    );
  }

  Future<void> refreshing()
  {
    setState(() {});
    return Future.delayed(Duration(seconds: 0));
  }
}
