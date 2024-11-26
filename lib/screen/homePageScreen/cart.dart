import 'package:flutter/material.dart';

class cart extends StatelessWidget {
  final List<Map<String, dynamic>> cartItems = [
    {
      'name': 'Nike Club Max',
      'price': 584.95,
      'image': 'assets/nike1.png',
      'quantity': 1,
    },
    {
      'name': 'Nike Air Max 200',
      'price': 94.05,
      'image': 'assets/nike2.png',
      'quantity': 1,
    },
    {
      'name': 'Nike Air Max 270 Essential',
      'price': 74.95,
      'image': 'assets/nike3.png',
      'quantity': 1,
    },
  ];

  @override
  Widget build(BuildContext context) {
    double subtotal = cartItems.fold(
      0,
          (sum, item) => sum + (item['price'] * item['quantity']),
    );
    double deliveryFee = 60.20;
    double total = subtotal + deliveryFee;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Корзина'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: cartItems.length,
              itemBuilder: (context, index) {
                final item = cartItems[index];
                return Card(
                  margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  child: ListTile(
                    leading: Image.asset(item['image'], width: 60, height: 60),
                    title: Text(item['name']),
                    subtitle: Text('₽${item['price']}'),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          icon: const Icon(Icons.remove),
                          onPressed: () {
                            // Уменьшение количества
                          },
                        ),
                        Text('${item['quantity']}'),
                        IconButton(
                          icon: const Icon(Icons.add),
                          onPressed: () {
                            // Увеличение количества
                          },
                        ),
                        IconButton(
                          icon: const Icon(Icons.delete, color: Colors.red),
                          onPressed: () {
                            // Удаление товара из корзины
                          },
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Сумма:', style: TextStyle(fontSize: 16)),
                    Text('₽${subtotal.toStringAsFixed(2)}', style: const TextStyle(fontSize: 16)),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Доставка:', style: TextStyle(fontSize: 16)),
                    Text('₽${deliveryFee.toStringAsFixed(2)}', style: const TextStyle(fontSize: 16)),
                  ],
                ),
                const Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Итого:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    Text('₽${total.toStringAsFixed(2)}', style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  ],
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    // Оформление заказа
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                    backgroundColor: Colors.blue,
                  ),
                  child: const Text('Оформить Заказ', style: TextStyle(fontSize: 18)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}