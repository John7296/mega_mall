import 'package:flutter/material.dart';
import 'package:mega_mall/model/home_model.dart';
import 'package:mega_mall/screens/product_detail_screen.dart';
import 'package:mega_mall/services/service_http.dart';
import 'package:mega_mall/widgets/appbar_notification_widget.dart';
import 'package:mega_mall/widgets/searchField_widget.dart';

class HomeDetailScreen extends StatefulWidget {
  const HomeDetailScreen({super.key});

  @override
  State<HomeDetailScreen> createState() => _HomeDetailScreenState();
}

class _HomeDetailScreenState extends State<HomeDetailScreen> {
  Home? categoryList;
  var isloaded = false;

  @override
  void initState() {
    super.initState();
    // getData();
    categoryList = Home(status: true, msg: "msg", categories: [
      Category(
        title: "Headphones",
      ),
      Category(title: "Mobile"),
      Category(title: "Fashion"),
      Category(title: "Gadget"),
      Category(title: "Computer"),
      Category(title: "Souvenir"),
    ]);
  }

  // getData() async {
  //   categoryList = await HttpData().fetchProducts();
  //   // productCategory = await HttpData().fetchCategory();

  //   if (categoryList != null) {
  //     setState(() {
  //       isloaded = true;
  //     });
  //   }
  //   // if (productCategory != null) {
  //   //   setState(() {
  //   //     isloaded = true;
  //   //   });
  //   // }
  // }

  @override
  Widget build(BuildContext context) {
    print(categoryList);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          "Mega Mall",
          style: TextStyle(color: Colors.blue),
        ),
        elevation: 0,
        actions: const [
          AppBarNotificationWidget(),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              SearchFiledWidget(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      "All Categories",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              
              GridView.builder(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    mainAxisSpacing: 1.0,
                    crossAxisSpacing: 1.0,
                    mainAxisExtent: 100),
                itemCount: categoryList!.categories.length,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      Column(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          ProductDetailScreen()));
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  color: Color.fromARGB(255, 169, 210, 228)),
                              height: 80,
                              width: 80,
                            ),
                          ),
                          Text(categoryList?.categories[index].title ?? ''),
                        ],
                      ),
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
