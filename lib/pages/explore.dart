import 'package:material_ui/material_ui.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F8F5),

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'Explore',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // SEARCH BAR
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search restaurants or stores',
                  prefixIcon: const Icon(Icons.search),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),

            // TITLE
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Explore Categories',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 15),

            // CATEGORY GRID
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: GridView.count(
                crossAxisCount: 2,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,
                childAspectRatio: 1.3,
                children: [
                  categoryCard(
                    'Restaurants',
                    Icons.restaurant,
                    Colors.orange,
                  ),
                  categoryCard(
                    'Groceries',
                    Icons.shopping_basket,
                    Colors.green,
                  ),
                  categoryCard(
                    'Pharmacy',
                    Icons.local_pharmacy,
                    Colors.blue,
                  ),
                  categoryCard(
                    'Packages',
                    Icons.local_shipping,
                    Colors.purple,
                  ),
                  categoryCard(
                    'Fashion',
                    Icons.checkroom,
                    Colors.pink,
                  ),
                  categoryCard(
                    'Electronics',
                    Icons.devices,
                    Colors.teal,
                  ),
                ],
              ),
            ),

            const SizedBox(height: 25),

            // FEATURED TITLE
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Featured stores',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 15),

            // FEATURED STORES
            storeCard(
              Icons.restaurant_menu,
              'Mama Put Kitchen',
              'Local Nigerian meals',
              '4.8',
              '20 - 35 mins',
              Colors.orange,
            ),

            storeCard(
              Icons.local_grocery_store,
              'Fresh Basket',
              'Groceries and vegetables',
              '4.6',
              '15 - 30 mins',
              Colors.green,
            ),

            storeCard(
              Icons.local_pizza,
              'Pizza Corner',
              'Pizza and fast food',
              '4.7',
              '25 - 40 mins',
              Colors.red,
            ),

            storeCard(
              Icons.coffee,
              'Coffee House',
              'Coffee and snacks',
              '4.5',
              '10 - 20 mins',
              Colors.brown,
            ),

            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  // CATEGORY CARD
  Widget categoryCard(
    String title,
    IconData icon,
    Color color,
  ) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 40,
            color: color,
          ),
          const SizedBox(height: 10),
          Text(
            title,
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  // STORE CARD
  Widget storeCard(
    IconData icon,
    String name,
    String description,
    String rating,
    String deliveryTime,
    Color color,
  ) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 8,
      ),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Row(
        children: [
          // STORE ICON
          Container(
            height: 65,
            width: 65,
            decoration: BoxDecoration(
              color: color.withValues(alpha: 0.12),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Icon(
              icon,
              size: 30,
              color: color,
            ),
          ),

          const SizedBox(width: 15),

          // STORE DETAILS
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  description,
                  style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                  ),
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    const Icon(
                      Icons.star,
                      color: Colors.orange,
                      size: 16,
                    ),
                    Text(' $rating'),
                    const SizedBox(width: 10),
                    const Icon(
                      Icons.access_time,
                      size: 16,
                      color: Colors.green,
                    ),
                    Text(
                      ' $deliveryTime',
                      style: const TextStyle(fontSize: 12),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}