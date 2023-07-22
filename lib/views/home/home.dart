import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
      appBar: AppBar(
        titleSpacing: 0.0,
        leadingWidth: 60,
        centerTitle: false,
        leading: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Image.asset(
                'assets/images/logo.png',
                width: 40,
                height: 40,
              ),
            ),
          ],
        ),
        title: Text('Proxity',
            style: GoogleFonts.lato(
              textStyle: Theme.of(context).textTheme.displayMedium,
              fontSize: 45,
            )),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () => Navigator.of(context).pushNamed("/notifications"),
          ),
        ],
      ),

      // endDrawer:
      // Drawer(

      // ),
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
                                    onPressed: () => _searchController.clear(),
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
                    const Text('Voir Tout'),
                    Icon(
                      EvaIcons.arrowRightOutline,
                      color: MyColors.primaryColor,
                    )
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
                            title: "véhicule",
                            imagePath: "assets/icons/véhicule 1.png",
                          ),
                          CategoryCard(
                            title: "véhicule",
                            imagePath: "assets/icons/véhicule 1.png",
                          ),
                          CategoryCard(
                            title: "véhicule",
                            imagePath: "assets/icons/véhicule 1.png",
                          ),
                          CategoryCard(
                            title: "véhicule",
                            imagePath: "assets/icons/véhicule 1.png",
                          ),
                          CategoryCard(
                            title: "véhicule",
                            imagePath: "assets/icons/véhicule 1.png",
                          ),
                          CategoryCard(
                            title: "véhicule",
                            imagePath: "assets/icons/véhicule 1.png",
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
                    Icon(
                      EvaIcons.arrowRightOutline,
                      color: MyColors.primaryColor,
                    )
                  ],
                ),
              ),
              const SizedBox(
                  width: 350,
                  height: 180,
                  child: Card(
                    color: Color.fromARGB(255, 216, 214, 214),
                  )),
              Column(
                children: [
                  GridView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 8.0,
                      mainAxisSpacing: 8.0,
                    ),
                    itemCount: products.length,
                    itemBuilder: (context, index) {
                      return products[index];
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

List<ProductCard> products = [
  const ProductCard(
    productName: 'Product 1',
    price: 19.99,
    date: '2023-07-22',
    location: 'New York, USA',
    imageUrl:
        'https://content-images.carmax.com/qeontfmijmzv/6Yd7rAjmL3ce4ZODF3DnFi/8c10693b1715c49d332eccc4f25a8291/landrover.jpg',
  ),
  const ProductCard(
    productName: 'Product 2',
    price: 24.99,
    date: '2023-07-23',
    location: 'Los Angeles, USA',
    imageUrl: 'https://example.com/product2.jpg',
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
