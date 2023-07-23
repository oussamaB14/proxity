import 'package:flutter/material.dart';
import 'package:proxity/views/categories/MyCategoryCard.dart';

class MyCategories extends StatefulWidget {
  const MyCategories({super.key});

  @override
  State<MyCategories> createState() => _MyCategoriesState();
}

class _MyCategoriesState extends State<MyCategories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: const MySingleNav(),
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text('Catégories '),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                GridView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  primary: false,
                  padding: const EdgeInsets.all(40),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, // Number of items in each row
                    crossAxisSpacing: 8.0, // Spacing between columns
                    mainAxisSpacing: 8.0, // Spacing between rows
                  ),
                  itemCount: categories.length,
                  itemBuilder: (context, index) {
                    return categories[index];
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

List<CategoryCard> categories = [
  const CategoryCard(
    name: 'Véhicule',
    imagePath: 'assets/icons/véhicule 1.png',
  ),
  const CategoryCard(
    name: 'Maison et Jardin',
    imagePath: 'assets/icons/maison-et-jardin 1.png',
  ),
  const CategoryCard(
    name: 'Informatique et Multimédia',
    imagePath: 'assets/icons/informatique-et-multimédia 1.png',
  ),
  const CategoryCard(
    name: 'Immobiler',
    imagePath: 'assets/icons/immobilier 1.png',
  ),
  const CategoryCard(
    name: 'Habillement et Bien Etre',
    imagePath: 'assets/icons/habituellement-et-bien-être 1.png',
  ),
  const CategoryCard(
    name: 'Loisir et Divertissement',
    imagePath: 'assets/icons/loisirs-et-divertissement 1.png',
  ),
  const CategoryCard(
    name: 'Emploi et Servicee',
    imagePath: 'assets/icons/emploi-et-services 1.png',
  ),
  const CategoryCard(
    name: 'Autres Annonces',
    imagePath: 'assets/icons/Autres 1.png',
  ),
];

// CategoryGrid(categories = categories)
