import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:isar/isar.dart';
import 'package:shopify_flutter/database/add_to_card_database/add_card_list.dart';
import 'package:shopify_flutter/model/my_product.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../common/app_color.dart';
import '../constant/singleton_objects.dart';
import 'activity_cart.dart';

class ActivityProductDetails extends StatefulWidget {
  List<Products> productData;
  int index;

  ActivityProductDetails(
      {super.key, required this.productData, required this.index});

  @override
  State<ActivityProductDetails> createState() => _ActivityProductDetailsState();
}

class _ActivityProductDetailsState extends State<ActivityProductDetails> {
  late PageController _pageController = PageController();
  int _currentPage = 0;

  List<String?> findUnmatched(List<String?> list1, List<int?> list2) {
    return list1.where((item1) => !list2.contains(item1)).toList();
  }


  late List<String?> imageList = [];
  late List<String> repeatedImageList = [];
  var productAddToCardItems;

  @override
  void initState() {
    super.initState();
    debugPrint("widget product list data :${widget.productData}");
    _pageController = PageController(initialPage: _currentPage);
    imageList = widget.productData[widget.index].images!
        .map((image) => image.src)
        .toList();
    repeatedImageList = List.filled(3, imageList[0]!);
    debugPrint("repeate image:${repeatedImageList}");
  }

  Future<List<AddToCardDBClass>> displayBooks() async {
    var i = await SingletonObjects.isar!;
    return await i.addToCardDBClass.where().findAll();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarIconBrightness: Brightness.light,
            statusBarBrightness: Brightness.light,
          ),
          backgroundColor: Color(0xff84c447),
          title: Row(
            children: [
              Text(
                widget.productData[widget.index].title.toString(),
                style: GoogleFonts.poppins(
                  textStyle:
                      TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
        ),
        body: Column(
          children: [
            Container(
              child: Expanded(
                flex: 2,
                child: Card(
                  child: Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Expanded(
                            child: PageView.builder(
                              controller: _pageController,
                              itemCount: repeatedImageList.length,
                              onPageChanged: (index) {
                                setState(() {
                                  _currentPage = index;
                                });
                              },
                              itemBuilder: (context, index) {
                                return Stack(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: NetworkImage(
                                              repeatedImageList[index]
                                                  .toString()),
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      bottom: 25,
                                      right: 10,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(11),
                                          color: Colors.white,
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 8, vertical: 3),
                                          child: Row(
                                            children: [
                                              Text(
                                                "4.3",
                                                style: GoogleFonts.poppins(
                                                  textStyle: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.bold,
                                                    color: titleColor,
                                                  ),
                                                ),
                                              ),
                                              const Icon(
                                                Icons.star,
                                                color: Color(0xff2da272),
                                                size: 15,
                                              ),
                                              const SizedBox(width: 5),
                                              Container(
                                                width: 1,
                                                height: 20,
                                                color: Colors.grey.shade100,
                                              ),
                                              const SizedBox(width: 5),
                                              Text(
                                                "430",
                                                style: GoogleFonts.poppins(
                                                  textStyle: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w300,
                                                    color: subTitleColor,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                );
                              },
                            ),
                          ),
                          const SizedBox(height: 10),
                          Container(
                            margin: EdgeInsets.only(bottom: 10),
                            child: SmoothPageIndicator(
                              controller: _pageController,
                              count: repeatedImageList.length,
                              effect: const WormEffect(
                                dotHeight: 8,
                                dotWidth: 8,
                                activeDotColor: Colors.blue,
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Container(
                                constraints: BoxConstraints(
                                  maxWidth:
                                      MediaQuery.of(context).size.width * 0.75,
                                ),
                                child: Text(
                                  widget.productData[widget.index].title
                                      .toString(),
                                  style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 8.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                '₹${widget.productData[widget.index].variants![0].price.toString()}',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 16.0),
                          Container(
                            child: Text(
                              "This is a sample product description that gives more details about the product.",
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                'Colors',
                                style: GoogleFonts.cabin(
                                  textStyle: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: const Color(0xFF808080),
                                  ),
                                ),
                              ),
                              SizedBox(height: 10),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    width: 15,
                                    height: 15,
                                    color: Color(0xffde9792),
                                  ),
                                  Container(
                                    width: 15,
                                    height: 15,
                                    color: Color(0xff86c1d9),
                                    margin: EdgeInsets.only(left: 5),
                                  ),
                                  Container(
                                    width: 15,
                                    height: 15,
                                    color: Colors.blue,
                                    margin: EdgeInsets.only(left: 5),
                                  ),
                                  Container(
                                    width: 15,
                                    height: 15,
                                    color: Color(0xff643ca6),
                                    margin: EdgeInsets.only(left: 5),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            // The button section
            Container(
              margin: EdgeInsets.only(left: 10, right: 10, bottom: 10),
              child: Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () async {
                        addToCart();
                      },
                      child: const Text('Add to Cart'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff84c447),
                        minimumSize: Size(double.infinity, 50),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ActivityCart(),
                          ),
                        );
                      },
                      child: const Text('View Cart'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        minimumSize: Size(double.infinity, 50),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }

  /// When user click on Add to Cart button then save product details in Product table.
  /// If user click on multiple times then increase count of product.
  /// Display snack bar when product is saved in Product table.
  /// Click on dismiss text close the snack bar
  /// @author Priyanka
  void addToCart() async {
    // Add to cart logic
    final scaffoldMessenger = ScaffoldMessenger.of(context);
    var existingItem = await SingletonObjects.isar!.addToCardDBClass
        .filter()
        .product_idEqualTo(widget.productData[widget.index].id)
        .findFirst();

    if (existingItem == null) {
      // Add new item to cart
      var productAddToCardItems = AddToCardDBClass()
        ..productId = widget.productData[widget.index].id
        ..title = widget.productData[widget.index].title
        ..image = widget.productData[widget.index].image!.src
        ..itemCount = 1
        ..price = widget.productData[widget.index].variants![0].price;

      await SingletonObjects.isar!.writeTxn(() async {
        await SingletonObjects.isar!.addToCardDBClass
            .put(productAddToCardItems);

        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Product added successfully'),
            action: SnackBarAction(
              label: 'Dismiss',
              onPressed: () async {
                scaffoldMessenger.hideCurrentSnackBar();
              },
            ),
          ),
        );

        debugPrint("Product added successfully");
      });
    } else {
      existingItem.itemCount = existingItem.itemCount! + 1;

      await SingletonObjects.isar!.writeTxn(() async {
        await SingletonObjects.isar!.addToCardDBClass.put(existingItem);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Product added successfully'),
            action: SnackBarAction(
              label: 'Dismiss',
              onPressed: () async {
                scaffoldMessenger.hideCurrentSnackBar();
              },
            ),
          ),
        );
      });
    }
  }
}
