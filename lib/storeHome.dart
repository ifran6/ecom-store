import "package:flutter/material.dart";

List<String> categories = [
  "Fashion",
  "Electronics",
  "Furniture",
  "Utensi",
  "Games"
];

List<Map<String, dynamic>> products = [
  {'name': 'suit', 'price': '100', 'image': 'assets/images/furni001.png'},
  {'name': 'Top', 'price': '100', 'image': 'assets/images/phone_3.png'},
  {'name': 'suit', 'price': '100', 'image': 'assets/images/furni001.png'},
  {'name': 'Top', 'price': '100', 'image': 'assets/images/phone_3.png'},
  {'name': 'suit', 'price': '100', 'image': 'assets/images/furni001.png'},
  {'name': 'Top', 'price': '100', 'image': 'assets/images/phone_3.png'},
];

class StoreHome extends StatefulWidget {
  const StoreHome({super.key});

  @override
  State<StoreHome> createState() => _StoreHomeState();
}

class _StoreHomeState extends State<StoreHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        leading: const Icon(
          Icons.home,
          color: Colors.white,
        ),
        title: const Text('App Store'),
        actions: [
          const Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: const Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 100,
            child: Padding(
              padding: const EdgeInsets.all(2),
              child: ListView.builder(
                itemCount: categories.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Chip(
                      label: Text(categories[index]),
                      backgroundColor: Colors.white12,
                      shadowColor: const Color(24),
                    ),
                  );
                },
              ),
            ),
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, childAspectRatio: 0.7),
              itemCount: products.length,
              itemBuilder: (context, index) {
                return Card(
                  child: Column(children: [
                    Image(
                      image: AssetImage(products[index]['image']),
                    ),
                    Text(products[index]['name']),
                    Text(products[index]['price']),
                    OutlinedButton(
                      onPressed: () {},
                      child: const Text("Add to Cart"),
                    )
                  ]),
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 8.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.home)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.notifications)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.person)),
          ],
        ),
      ),
    );
  }
}
