import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              Image.asset('assets/image/food.png'),
              const SizedBox(
                width: 30,
              ),
              const Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(1),
                    border: OutlineInputBorder(),
                    hintText: 'search',
                    prefixIcon: Icon(Icons.search),
                  ),
                ),
              ),
            ],
          ),
          backgroundColor: Colors.white70,
        ),
        body: ListView(
          scrollDirection: Axis.vertical,
          addAutomaticKeepAlives: false,
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  children: [
                    const Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Text(
                            'Katalog Resep Makanan',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ),
                        Icon(
                          Icons.settings,
                          color: Colors.blueGrey,
                        ),
                      ],
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          activatedMenuCategories('all', 'dessert.png'),
                          menuCategories('makanan', 'dessert.png'),
                          menuCategories('minuman', 'dessert.png'),
                          menuCategories('dessert', 'dessert.png'),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            menuRecipe('Apple Pie', 'pizza.jpg'),
                            menuRecipe('Burger', 'burger.jpg'),
                          ],
                        ),
                        Row(
                          children: [
                            menuRecipe('Burger', 'burger.jpg'),
                            menuRecipe('Pizza', 'pizza.jpg'),
                          ],
                        ),
                        Row(
                          children: [
                            menuRecipe('Ayam Manis', 'pizza.jpg'),
                            menuRecipe('Kebab', 'burger.jpg'),
                          ],
                        ),
                        Row(
                          children: [
                            menuRecipe('Muffin', 'pizza.jpg'),
                            menuRecipe('Rendang', 'burger.jpg'),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget menuCategories(String category, String image) {
    return Padding(
      padding:
          const EdgeInsets.only(bottom: 12.0, top: 16.0, right: 8.0, left: 8.0),
      child: Container(
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: Colors.blueGrey,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/image/$image'),
            const SizedBox(
              width: 8,
            ),
            Text(category),
          ],
        ),
      ),
    );
  }

  Widget activatedMenuCategories(String category, String image) {
    return Padding(
      padding:
          const EdgeInsets.only(bottom: 12.0, top: 16.0, right: 8.0, left: 8.0),
      child: Container(
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          boxShadow: const [
            BoxShadow(
              color: Colors.blue,
              spreadRadius: 3,
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/image/$image'),
            const SizedBox(
              width: 8,
            ),
            Text(category),
          ],
        ),
      ),
    );
  }

  Widget menuRecipe(String menu, String image) {
    return Expanded(
      flex: 1,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          elevation: 3,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    'assets/image/$image',
                    fit: BoxFit.fitHeight,
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 8.0, bottom: 8.0, right: 12.0, left: 12.0),
                    child: Text(menu),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 8.0, bottom: 8.0, right: 12.0, left: 12.0),
                  child: Row(
                    children: [
                      const Icon(Icons.alarm),
                      const Expanded(
                        child: Text('50 menit'),
                      ),
                      Card(
                        elevation: 1,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                        color: Colors.orange[400],
                        child: const Padding(
                          padding: EdgeInsets.all(3.0),
                          child: Text('Status'),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
