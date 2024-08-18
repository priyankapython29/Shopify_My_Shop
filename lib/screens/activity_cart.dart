import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:isar/isar.dart';
import 'package:shopify_flutter/database/add_to_card_database/add_card_list.dart';

import '../common/my_utils.dart';
import '../constant/singleton_objects.dart';
import 'activity_home.dart';

class ActivityCart extends StatefulWidget {
  const ActivityCart({super.key});

  @override
  State<ActivityCart> createState() => _ActivityCartState();
}

class _ActivityCartState extends State<ActivityCart> {

  /// Get list of cart item which is save from product details screen.
  /// @author Priyanka
  Future<List<AddToCardDBClass>> displayBooks() async {
    var i = await SingletonObjects.isar!;
    return await i.addToCardDBClass.where().findAll();
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
        title: Text("My Card"),
        centerTitle: true,
      ),
      body: FutureBuilder<List<AddToCardDBClass>>(
        future: displayBooks(),
        builder: (context, addToCardSnapData) {
          /// If there is data in cart then display list of cart products.
          if (addToCardSnapData.hasData) {
            return Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: addToCardSnapData.data!.length,
                    itemBuilder: (context, index) {
                      var cartItem = addToCardSnapData.data![index];
                      return Card(
                        child: Column(
                          children: [
                            ListTile(
                              leading: Image.network(
                                cartItem.image.toString(),
                              ),
                              title: Container(
                                child: Text(
                                  cartItem.title.toString(),
                                  style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              subtitle: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Product Subtitle or Description',
                                    style: GoogleFonts.lato(
                                      textStyle: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        '₹${cartItem.price.toString()}',
                                        style: GoogleFonts.roboto(
                                          textStyle: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.green),
                                        ),
                                      ),
                                      Spacer(),
                                      Stack(
                                        children: [
                                          Container(
                                            child: Icon(
                                              Icons.shopping_bag_outlined,
                                              size: 25,
                                            ),
                                          ),
                                          Positioned(
                                            top: 0,
                                            right: 0,
                                            child: Container(
                                              width: 15,
                                              height: 15,
                                              decoration: BoxDecoration(
                                                color: Colors.red,
                                                shape: BoxShape.circle,
                                              ),
                                              child: Center(
                                                child: Text(
                                                  addToCardSnapData
                                                      .data![index].itemCount
                                                      .toString(),
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 10,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              trailing: IconButton(
                                onPressed: () async {
                                  await SingletonObjects.isar!.writeTxn(() async {
                                    // Delete the product by its ID
                                    bool deleted = await SingletonObjects
                                        .isar!.addToCardDBClass
                                        .delete(cartItem.id);
                                    if (deleted) {
                                      setState(() {
                                      });
                                    }
                                  });
                                },
                                icon: Icon(Icons.delete),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: ElevatedButton(
                      onPressed: () async {
                        //delete all cart details
                        // Show the success dialog
                        await MyUtils.showCenterSuccessDialog(
                            context, "Check Out Success");
                        await Future.delayed(Duration(seconds: 1));
                        Navigator.of(context).pushAndRemoveUntil(
                            MaterialPageRoute(
                                builder: (context) => ActivityHome()),
                            (Route<dynamic> route) => false);
                      },
                      child: Text(
                        'Check Out',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500),
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        minimumSize:
                            Size(double.infinity, 40), // Full-width button
                      ),
                    ),
                  ),
                ),
              ],
            );
          }

          ///if there is no data in cart then display circular loading animation.
          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
