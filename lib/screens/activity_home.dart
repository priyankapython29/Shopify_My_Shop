import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shimmer/shimmer.dart';
import 'package:shopify_flutter/model/my_product.dart';

import '../constant/trangle_painer_label.dart';
import '../controllers/get_all_product_list_bloc.dart';
import 'activity_cart.dart';
import 'activity_product_details.dart';

class ActivityHome extends StatefulWidget {
  const ActivityHome({super.key});

  @override
  State<ActivityHome> createState() => _ActivityHomeState();
}

class _ActivityHomeState extends State<ActivityHome> {
  bool isAddToCard = false;

  @override
  void initState() {
    super.initState();
    // print("product count:${products.length}");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          ///Show system status bar color style according app theme color
          systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarIconBrightness: Brightness.light,
            statusBarBrightness: Brightness.light,
          ),
          title: Text("Products"),
          centerTitle: true,
          actions: [
            IconButton(
                onPressed: () {
                  /// If use click on this shopping cart icon redirect to activity cart screen
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ActivityCart(),),); //Navigate to next activity screen
                },
                icon: Icon(Icons.shopping_cart))
          ],
        ),
        body: BlocBuilder<GetAllProductListBloc, GetAllProductListState>(
          builder: (context, snapShot) {
            if (snapShot is GetAllProductListLoading) {
              /// Show shimmer effect while data is loading from server
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10.0,
                    mainAxisSpacing: 10.0,
                    childAspectRatio: 2 / 3,
                  ),
                  itemCount: 6, // Placeholder count for shimmer effect
                  itemBuilder: (context, index) {
                    return Shimmer.fromColors(
                      baseColor: Colors.grey.shade200,
                      highlightColor: Colors.grey.shade100,
                      child: Card(
                        elevation: 3,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: double.infinity,
                              height: 200,
                              child: Container(color: Colors.grey.shade300), // Placeholder for image
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 20,
                                    width: 150,
                                    color: Colors.grey.shade300, // Placeholder for title
                                  ),
                                  const SizedBox(height: 5),
                                  Container(
                                    height: 15,
                                    width: 100,
                                    color: Colors.grey.shade300, // Placeholder for category
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              );
            } else if (snapShot is GetAllProductListLoaded) {
              /// Show list of product  data when loaded
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Stack(
                  children: [
                    GridView.builder(
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2, // Number of columns
                        crossAxisSpacing: 10.0,
                        mainAxisSpacing: 10.0,
                        childAspectRatio: 2 / 3,
                      ),
                      itemCount: snapShot.products.length,
                      itemBuilder: (context, index) {
                        final productItem = snapShot.products[index];
                        return Stack(
                          children: [
                            InkWell(
                              onTap: () {
                                /// If user click on particular product it redirect to product detail screen
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        ActivityProductDetails(
                                      productData: snapShot.products,
                                      index: index,
                                    ),
                                  ),
                                );
                              },
                              child: productItemWidget(productItem),
                            ),
                            /// It check product type is cloth then show this new text label on that product
                            if (productItem.productType.toString().toLowerCase() == 'cloth') ...[  Positioned(
                              top: 10,
                              left: 0,
                              child: Container(
                                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: const BorderRadius.only(
                                    topRight: Radius.circular(10),
                                    bottomRight: Radius.circular(10),
                                  ),
                                ),
                                child: Text(
                                  'NEW',
                                  style: GoogleFonts.cabin(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ),
                              Positioned(
                                top: 10,
                                left: 0,
                                child: CustomPaint(
                                  painter: TrianglePainter(
                                    color: Colors.red,
                                  ),
                                  child: const SizedBox(
                                    width: 10,
                                    height: 10,
                                  ),
                                ),
                              ),
                            ]
                          ],
                        );
                      },
                    ),
                  ],
                ),
              );
            } else if (snapShot is GetAllProductListError) {
              /// Show error message when not able to load product from server
              return Center(child: Text(snapShot.message));
            } else {
              /// Show no product available message when list of product is empty
              return const Center(child: Text('No Products Available'));
            }
          },
        ));
  }

  ///
  Widget productItemWidget(Products productItem) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      elevation: 3,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(8)),
              child: Image.network(
                productItem.image!.src.toString(),
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(8, 4, 8, 0),
            child: Text(
              productItem.title.toString(),
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
              padding: EdgeInsets.fromLTRB(8, 0, 8, 8),
              //const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                '₹${productItem.variants![0].price.toString()}/-',
                style: GoogleFonts.roboto(
                  textStyle: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Colors.green),
                ),
              )),
        ],
      ),
    );
  }
}
