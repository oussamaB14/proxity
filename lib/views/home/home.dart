import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ternav_icons/ternav_icons.dart';

import '../../shared/colors.dart';
import '../../shared/widgets/productCard.dart';

class ProxityHome extends StatefulWidget {
  const ProxityHome({super.key});

  @override
  State<ProxityHome> createState() => _ProxityHomeState();
}

class _ProxityHomeState extends State<ProxityHome> {
  //search bar controller
  final TextEditingController _searchController = TextEditingController()
    ..addListener(() {});
  bool show = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) =>
            [
          SliverAppBar(
            floating: true,
            titleSpacing: 0.0,
            leadingWidth: 60,
            // centerTitle: false,
            leading: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Image.asset(
                    'assets/images/logo.png',
                    width: 35,
                    height: 35,
                  ),
                ),
              ],
            ),
            title: Text('Proxity',
                style: GoogleFonts.poppins(
                    textStyle: Theme.of(context).textTheme.displayMedium,
                    fontSize: 45,
                    color: MyColors.primaryColor)),
            actions: [
              IconButton(
                icon: Icon(
                  TernavIcons.lightOutline.bell,
                  color: MyColors.primaryColor,
                ),
                onPressed: () =>
                    Navigator.of(context).pushNamed("/notifications"),
              ),
            ],
          )
          // return List[text];
        ],
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                // const Text('Discover'),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      SizedBox(
                        height: 50,
                        width: 280,
                        child: TextFormField(
                            style: const TextStyle(fontSize: 18),
                            cursorColor: Colors.black,
                            onChanged: (value) {
                              if (value.isNotEmpty) {
                                setState(() {
                                  show = true;
                                });
                              } else {
                                setState(() {
                                  show = false;
                                });
                              }
                            },
                            controller: _searchController,
                            decoration: InputDecoration(
                              prefixIconColor: MyColors.lightshadow,
                              suffixIconColor: MyColors.lightshadow,

                              floatingLabelBehavior: FloatingLabelBehavior.auto,
                              hintText: 'Que cherchez vous?...',
                              hintStyle: TextStyle(
                                  fontSize: 16, color: MyColors.lightshadow),
                              contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 42, vertical: 20),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide:
                                    BorderSide(color: MyColors.lightshadow),
                                gapPadding: 10,
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide:
                                    BorderSide(color: MyColors.primaryColor),
                                gapPadding: 10,
                              ),
                              // Add a clear button to the search bar
                              suffixIcon: show
                                  ? IconButton(
                                      icon: Icon(
                                        Icons.clear,
                                        color: MyColors.lightshadow,
                                      ),
                                      onPressed: () =>
                                          _searchController.clear(),
                                    )
                                  : null,
                              // Add a search icon or button to the search bar
                              prefixIcon: const Icon(
                                Icons.search,
                              ),
                            )),
                      ),
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          height: 50,
                          width: 50,
                          child: OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                padding: const EdgeInsets.all(0),
                                // shadowColor: Colors.grey,
                                backgroundColor: MyColors.primaryColor,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                // side: BorderSide(width: 2, color: Colors.red),
                              ),
                              onPressed: () {
                                Navigator.of(context).pushNamed("/filter");
                              },
                              child: const Icon(
                                Icons.list,
                                color: Colors.white,
                              )),
                        ),
                      )
                    ],
                  ),
                ),
                // const Image(image: AssetImage('assets/images/logo.png')),
                const SizedBox(
                    width: 350,
                    height: 180,
                    child: Card(
                      color: Color.fromARGB(255, 216, 214, 214),
                    )),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text('Catégories',
                          style: GoogleFonts.lato(
                              textStyle:
                                  Theme.of(context).textTheme.displayMedium,
                              fontSize: 22,
                              color: MyColors.shadow)),
                      const Spacer(),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushNamed("/Categories");
                        },
                        child: Row(
                          children: [
                            const Text('Voir Tout'),
                            Icon(
                              TernavIcons.bold.arrow_right_1,
                              color: MyColors.primaryColor,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Flexible(
                      child: SizedBox(
                        height: 70.0,
                        child: ListView(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          children: const [
                            CategoryCard(
                              title: "véhicule",
                              imagePath: "assets/icons/véhicule 1.png",
                            ),
                            CategoryCard(
                              title: "Maison",
                              imagePath: "assets/icons/maison-et-jardin 1.png",
                            ),
                            CategoryCard(
                              title: "Loisir",
                              imagePath:
                                  "assets/icons/loisirs-et-divertissement 1.png",
                            ),
                            CategoryCard(
                              title: "Multimédia",
                              imagePath:
                                  "assets/icons/informatique-et-multimédia 1.png",
                            ),
                            CategoryCard(
                              title: "habillement",
                              imagePath:
                                  "assets/icons/habituellement-et-bien-être 1.png",
                            ),
                            CategoryCard(
                              title: "Emploi",
                              imagePath:
                                  "assets/icons/emploi-et-services 1.png",
                            ),
                            CategoryCard(
                              title: "Immobilier",
                              imagePath: "assets/icons/immobilier 1.png",
                            ),
                            CategoryCard(
                              title: "Autres",
                              imagePath: "assets/icons/Autres 1.png",
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text('Dernières annonces',
                          style: GoogleFonts.lato(
                              textStyle:
                                  Theme.of(context).textTheme.displayMedium,
                              fontSize: 22,
                              color: MyColors.shadow)),
                      const Spacer(),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushNamed("/Dannonces");
                        },
                        child: Row(
                          children: [
                            const Text('Voir Tout'),
                            Icon(
                              TernavIcons.bold.arrow_right_1,
                              color: MyColors.primaryColor,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                    width: 350,
                    height: 180,
                    child: Card(
                      color: Color.fromARGB(255, 216, 214, 214),
                    )),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text('Toutes les annonces',
                          style: GoogleFonts.lato(
                              textStyle:
                                  Theme.of(context).textTheme.displayMedium,
                              fontSize: 22,
                              color: MyColors.shadow)),
                      const Spacer(),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushNamed("/Tannonces");
                        },
                        child: Row(
                          children: [
                            const Text('Voir Tout'),
                            Icon(
                              TernavIcons.bold.arrow_right_1,
                              color: MyColors.primaryColor,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    GridView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      primary: false,
                      padding: const EdgeInsets.all(20),
                      gridDelegate:
                          const SliverGridDelegateWithMaxCrossAxisExtent(
                        crossAxisSpacing: 20.0,
                        mainAxisSpacing: 20.0,
                        maxCrossAxisExtent: 220,
                        childAspectRatio: 0.55,
                      ),
                      itemCount: products.length,
                      itemBuilder: (context, index) {
                        return products[index];
                      },
                    ),
                    // Column(
                    //   children: [
                    //     Flexible(
                    //       child: ListView(
                    //         shrinkWrap: true,
                    //         scrollDirection: Axis.vertical,
                    //         children: const [
                    //           ProductCard(
                    //             productName: 'Product 1',
                    //             price: 19.99,
                    //             date: '2023-07-22',
                    //             location: 'New York, USA',
                    //             imageUrl:
                    //                 'https://content-images.carmax.com/qeontfmijmzv/6Yd7rAjmL3ce4ZODF3DnFi/8c10693b1715c49d332eccc4f25a8291/landrover.jpg',
                    //           ),
                    //           ProductCard(
                    //             productName: 'Product 2',
                    //             price: 24.99,
                    //             date: '2023-07-23',
                    //             location: 'Los Angeles, USA',
                    //             imageUrl: 'https://example.com/product2.jpg',
                    //           ),
                    //         ],
                    //       ),
                    //     ),
                    //   ],
                    // ),
                  ],
                ),
              ],
            ),
          ),
        ),

        // child: SliverAppBar(
        //   titleSpacing: 0.0,
        //   leadingWidth: 60,
        //   // centerTitle: false,
        //   leading: Row(
        //     children: [
        //       Padding(
        //         padding: const EdgeInsets.all(4.0),
        //         child: Image.asset(
        //           'assets/images/logo.png',
        //           width: 35,
        //           height: 35,
        //         ),
        //       ),
        //     ],
        //   ),
        //   title: Text('Proxity',
        //       style: GoogleFonts.poppins(
        //           textStyle: Theme.of(context).textTheme.displayMedium,
        //           fontSize: 45,
        //           color: MyColors.primaryColor)),
        //   actions: [
        //     IconButton(
        //       icon: Icon(
        //         TernavIcons.lightOutline.bell,
        //         color: MyColors.primaryColor,
        //       ),
        //       onPressed: () =>
        //           Navigator.of(context).pushNamed("/notifications"),
        //     ),
        //   ],
        // ),
      ),

      // endDrawer:
      // Drawer(

      // ),
      // body: SingleChildScrollView(
      //   child: Padding(
      //     padding: const EdgeInsets.all(8.0),
      //     child: Column(
      //       children: [
      //         // const Text('Discover'),
      //         Padding(
      //           padding: const EdgeInsets.all(10.0),
      //           child: Row(
      //             children: [
      //               SizedBox(
      //                 height: 50,
      //                 width: 280,
      //                 child: TextFormField(
      //                     style: const TextStyle(fontSize: 18),
      //                     cursorColor: Colors.black,
      //                     onChanged: (value) {
      //                       if (value.isNotEmpty) {
      //                         setState(() {
      //                           show = true;
      //                         });
      //                       } else {
      //                         setState(() {
      //                           show = false;
      //                         });
      //                       }
      //                     },
      //                     controller: _searchController,
      //                     decoration: InputDecoration(
      //                       prefixIconColor: MyColors.lightshadow,
      //                       suffixIconColor: MyColors.lightshadow,

      //                       floatingLabelBehavior: FloatingLabelBehavior.auto,
      //                       hintText: 'Que cherchez vous?...',
      //                       hintStyle: TextStyle(
      //                           fontSize: 16, color: MyColors.lightshadow),
      //                       contentPadding: const EdgeInsets.symmetric(
      //                           horizontal: 42, vertical: 20),
      //                       enabledBorder: OutlineInputBorder(
      //                         borderRadius: BorderRadius.circular(15),
      //                         borderSide:
      //                             BorderSide(color: MyColors.lightshadow),
      //                         gapPadding: 10,
      //                       ),
      //                       focusedBorder: OutlineInputBorder(
      //                         borderRadius: BorderRadius.circular(15),
      //                         borderSide:
      //                             BorderSide(color: MyColors.primaryColor),
      //                         gapPadding: 10,
      //                       ),
      //                       // Add a clear button to the search bar
      //                       suffixIcon: show
      //                           ? IconButton(
      //                               icon: Icon(
      //                                 Icons.clear,
      //                                 color: MyColors.lightshadow,
      //                               ),
      //                               onPressed: () => _searchController.clear(),
      //                             )
      //                           : null,
      //                       // Add a search icon or button to the search bar
      //                       prefixIcon: const Icon(
      //                         Icons.search,
      //                       ),
      //                     )),
      //               ),
      //               const Spacer(),
      //               Padding(
      //                 padding: const EdgeInsets.all(8.0),
      //                 child: SizedBox(
      //                   height: 50,
      //                   width: 50,
      //                   child: OutlinedButton(
      //                       style: OutlinedButton.styleFrom(
      //                         padding: const EdgeInsets.all(0),
      //                         // shadowColor: Colors.grey,
      //                         backgroundColor: MyColors.primaryColor,
      //                         shape: RoundedRectangleBorder(
      //                           borderRadius: BorderRadius.circular(15),
      //                         ),
      //                         // side: BorderSide(width: 2, color: Colors.red),
      //                       ),
      //                       onPressed: () {
      //                         Navigator.of(context).pushNamed("/filter");
      //                       },
      //                       child: const Icon(
      //                         Icons.list,
      //                         color: Colors.white,
      //                       )),
      //                 ),
      //               )
      //             ],
      //           ),
      //         ),
      //         // const Image(image: AssetImage('assets/images/logo.png')),
      //         const SizedBox(
      //             width: 350,
      //             height: 180,
      //             child: Card(
      //               color: Color.fromARGB(255, 216, 214, 214),
      //             )),
      //         Padding(
      //           padding: const EdgeInsets.all(8.0),
      //           child: Row(
      //             children: [
      //               Text('Catégories',
      //                   style: GoogleFonts.lato(
      //                       textStyle:
      //                           Theme.of(context).textTheme.displayMedium,
      //                       fontSize: 22,
      //                       color: MyColors.shadow)),
      //               const Spacer(),
      //               GestureDetector(
      //                 onTap: () {
      //                   Navigator.of(context).pushNamed("/Categories");
      //                 },
      //                 child: Row(
      //                   children: [
      //                     const Text('Voir Tout'),
      //                     Icon(
      //                       TernavIcons.bold.arrow_right_1,
      //                       color: MyColors.primaryColor,
      //                     )
      //                   ],
      //                 ),
      //               ),
      //             ],
      //           ),
      //         ),
      //         Row(
      //           children: [
      //             Flexible(
      //               child: SizedBox(
      //                 height: 70.0,
      //                 child: ListView(
      //                   shrinkWrap: true,
      //                   scrollDirection: Axis.horizontal,
      //                   children: const [
      //                     CategoryCard(
      //                       title: "véhicule",
      //                       imagePath: "assets/icons/véhicule 1.png",
      //                     ),
      //                     CategoryCard(
      //                       title: "Maison",
      //                       imagePath: "assets/icons/maison-et-jardin 1.png",
      //                     ),
      //                     CategoryCard(
      //                       title: "Loisir",
      //                       imagePath:
      //                           "assets/icons/loisirs-et-divertissement 1.png",
      //                     ),
      //                     CategoryCard(
      //                       title: "Multimédia",
      //                       imagePath:
      //                           "assets/icons/informatique-et-multimédia 1.png",
      //                     ),
      //                     CategoryCard(
      //                       title: "habillement",
      //                       imagePath:
      //                           "assets/icons/habituellement-et-bien-être 1.png",
      //                     ),
      //                     CategoryCard(
      //                       title: "Emploi",
      //                       imagePath: "assets/icons/emploi-et-services 1.png",
      //                     ),
      //                     CategoryCard(
      //                       title: "Immobilier",
      //                       imagePath: "assets/icons/immobilier 1.png",
      //                     ),
      //                     CategoryCard(
      //                       title: "Autres",
      //                       imagePath: "assets/icons/Autres 1.png",
      //                     ),
      //                   ],
      //                 ),
      //               ),
      //             ),
      //           ],
      //         ),
      //         Padding(
      //           padding: const EdgeInsets.all(8.0),
      //           child: Row(
      //             children: [
      //               Text('Dernières annonces',
      //                   style: GoogleFonts.lato(
      //                       textStyle:
      //                           Theme.of(context).textTheme.displayMedium,
      //                       fontSize: 22,
      //                       color: MyColors.shadow)),
      //               const Spacer(),
      //               GestureDetector(
      //                 onTap: () {
      //                   Navigator.of(context).pushNamed("/Dannonces");
      //                 },
      //                 child: Row(
      //                   children: [
      //                     const Text('Voir Tout'),
      //                     Icon(
      //                       TernavIcons.bold.arrow_right_1,
      //                       color: MyColors.primaryColor,
      //                     )
      //                   ],
      //                 ),
      //               ),
      //             ],
      //           ),
      //         ),
      //         const SizedBox(
      //             width: 350,
      //             height: 180,
      //             child: Card(
      //               color: Color.fromARGB(255, 216, 214, 214),
      //             )),
      //         Padding(
      //           padding: const EdgeInsets.all(8.0),
      //           child: Row(
      //             children: [
      //               Text('Toutes les annonces',
      //                   style: GoogleFonts.lato(
      //                       textStyle:
      //                           Theme.of(context).textTheme.displayMedium,
      //                       fontSize: 22,
      //                       color: MyColors.shadow)),
      //               const Spacer(),
      //               GestureDetector(
      //                 onTap: () {
      //                   Navigator.of(context).pushNamed("/Tannonces");
      //                 },
      //                 child: Row(
      //                   children: [
      //                     const Text('Voir Tout'),
      //                     Icon(
      //                       TernavIcons.bold.arrow_right_1,
      //                       color: MyColors.primaryColor,
      //                     )
      //                   ],
      //                 ),
      //               ),
      //             ],
      //           ),
      //         ),
      //         Column(
      //           children: [
      //             GridView.builder(
      //               shrinkWrap: true,
      //               scrollDirection: Axis.vertical,
      //               primary: false,
      //               padding: const EdgeInsets.all(20),
      //               gridDelegate:
      //                   const SliverGridDelegateWithMaxCrossAxisExtent(
      //                 crossAxisSpacing: 20.0,
      //                 mainAxisSpacing: 20.0,
      //                 maxCrossAxisExtent: 220,
      //                 childAspectRatio: 0.55,
      //               ),
      //               itemCount: products.length,
      //               itemBuilder: (context, index) {
      //                 return products[index];
      //               },
      //             ),
      //             // Column(
      //             //   children: [
      //             //     Flexible(
      //             //       child: ListView(
      //             //         shrinkWrap: true,
      //             //         scrollDirection: Axis.vertical,
      //             //         children: const [
      //             //           ProductCard(
      //             //             productName: 'Product 1',
      //             //             price: 19.99,
      //             //             date: '2023-07-22',
      //             //             location: 'New York, USA',
      //             //             imageUrl:
      //             //                 'https://content-images.carmax.com/qeontfmijmzv/6Yd7rAjmL3ce4ZODF3DnFi/8c10693b1715c49d332eccc4f25a8291/landrover.jpg',
      //             //           ),
      //             //           ProductCard(
      //             //             productName: 'Product 2',
      //             //             price: 24.99,
      //             //             date: '2023-07-23',
      //             //             location: 'Los Angeles, USA',
      //             //             imageUrl: 'https://example.com/product2.jpg',
      //             //           ),
      //             //         ],
      //             //       ),
      //             //     ),
      //             //   ],
      //             // ),
      //           ],
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}

List<ProductCard> products = [
  const ProductCard(
    productName: 'BMW Série 5 G30 à vendre',
    price: 183.99,
    date: '2023-07-22',
    location: 'Tunis',
    imageUrl:
        'https://proxity.tn/wp-content/uploads/classified-listing/2023/06/proxity-annonce-tayara-tunisie-Voiture-Bmw-Serie-5-G30-a-vendre-au-Centre-Urbain-Nord.jpg',
  ),
  const ProductCard(
    productName: 'Hyundai Grand i10 à vendre ',
    price: 42.99,
    date: '2023-07-23',
    location: 'Nabeul',
    imageUrl:
        'https://proxity.tn/wp-content/uploads/classified-listing/2023/06/proxity-annonce-tayara-tunisie-Voiture-Hyundai-Grand-i10-a-vendre-a-Beni-Khiar-1.jpeg',
  ),
  const ProductCard(
    productName: 'BMW Série 5 G30 à vendre',
    price: 183.99,
    date: '2023-07-22',
    location: 'Tunis',
    imageUrl:
        'https://proxity.tn/wp-content/uploads/classified-listing/2023/06/proxity-annonce-tayara-tunisie-Voiture-Bmw-Serie-5-G30-a-vendre-au-Centre-Urbain-Nord.jpg',
  ),
  const ProductCard(
    productName: 'Hyundai Grand i10 à vendre ',
    price: 42.99,
    date: '2023-07-23',
    location: 'Nabeul',
    imageUrl:
        'https://proxity.tn/wp-content/uploads/classified-listing/2023/06/proxity-annonce-tayara-tunisie-Voiture-Hyundai-Grand-i10-a-vendre-a-Beni-Khiar-1.jpeg',
  ),
  const ProductCard(
    productName: 'BMW Série 5 G30 à vendre',
    price: 183.99,
    date: '2023-07-22',
    location: 'Tunis',
    imageUrl:
        'https://proxity.tn/wp-content/uploads/classified-listing/2023/06/proxity-annonce-tayara-tunisie-Voiture-Bmw-Serie-5-G30-a-vendre-au-Centre-Urbain-Nord.jpg',
  ),
  const ProductCard(
    productName: 'Hyundai Grand i10 à vendre ',
    price: 42.99,
    date: '2023-07-23',
    location: 'Nabeul',
    imageUrl:
        'https://proxity.tn/wp-content/uploads/classified-listing/2023/06/proxity-annonce-tayara-tunisie-Voiture-Hyundai-Grand-i10-a-vendre-a-Beni-Khiar-1.jpeg',
  ),
  const ProductCard(
    productName: 'BMW Série 5 G30 à vendre',
    price: 183.99,
    date: '2023-07-22',
    location: 'Tunis',
    imageUrl:
        'https://proxity.tn/wp-content/uploads/classified-listing/2023/06/proxity-annonce-tayara-tunisie-Voiture-Bmw-Serie-5-G30-a-vendre-au-Centre-Urbain-Nord.jpg',
  ),
  const ProductCard(
    productName: 'Hyundai Grand i10 à vendre ',
    price: 42.99,
    date: '2023-07-23',
    location: 'Nabeul',
    imageUrl:
        'https://proxity.tn/wp-content/uploads/classified-listing/2023/06/proxity-annonce-tayara-tunisie-Voiture-Hyundai-Grand-i10-a-vendre-a-Beni-Khiar-1.jpeg',
  ),
  // Add more ProductCard widgets as needed
];

// ProductGrid(products = products)

class CategoryCard extends StatelessWidget {
  final String title;
  final String imagePath;

  const CategoryCard({super.key, required this.title, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Card(
        elevation: 4,
        color: Colors.white,
        shadowColor: Colors.transparent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              imagePath,
              width: 35,
              height: 35,
              // fit: BoxFit.contain,
            ),
            // const SizedBox(height: 10),
            Text(
              title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
