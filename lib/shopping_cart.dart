import 'package:flutter/material.dart';

class OrderConfirmationPage extends StatefulWidget {
  @override
  _OrderConfirmationPageState createState() => _OrderConfirmationPageState();
}

class _OrderConfirmationPageState extends State<OrderConfirmationPage> {
  List<OrderItem> orderItems = [
    OrderItem(
      image: 'assets/h_2.png',
      title: 'Summer House',
      price: 10,
    ),
    OrderItem(
      image: 'assets/h_3.png',
      title: 'Villa Alfred',
      price: 15,
    ),
    OrderItem(
      image: 'assets/h_4.png',
      title: 'Villa 4KT',
      price: 20,
    ),
  ];

  void _removeOrderItem(int index) {
    setState(() {
      orderItems.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Order Confirmation'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Thank you for your order!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Order Details:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            ListView.builder(
              shrinkWrap: true,
              itemCount: orderItems.length,
              itemBuilder: (context, index) {
                final orderItem = orderItems[index];
                return ListTile(
                  leading: Image.asset(orderItem.image),
                  title: Text(orderItem.title),
                  subtitle: Text('Price: \$${orderItem.price}'),
                  trailing: IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: () {
                      _removeOrderItem(index);
                    },
                  ),
                );
              },
            ),
            SizedBox(height: 16),
            Divider(),
            SizedBox(height: 16),
            Text(
              'Total Amount: \$${orderItems.fold<int>(0, (sum, item) => sum + item.price)}',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Data Pemesan:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text('Haryaka'),
            Text('jl.senopati, Blok M'),
            Text('Jakarta Selatan, Indonesia'),
          ],
        ),
      ),
    );
  }
}

class OrderItem {
  final String image;
  final String title;
  final int price;

  OrderItem({required this.image, required this.title, required this.price});
}
