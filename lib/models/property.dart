import 'package:flutter/material.dart';

class Property {
  final String name;
  final String imageUrl;
  final int rentalPrice;
  final String locations;

  Property(
      {required this.name,
      required this.imageUrl,
      required this.rentalPrice,
      required this.locations});
}

class PropertyListPage extends StatelessWidget {
  final List<Property> properties = [
    Property(
      name: 'Summer House',
      imageUrl: 'assets/h_2.png',
      rentalPrice: 16000000,
      locations: 'Ubud Bali',
    ),
    Property(
      name: 'Villa Alfred',
      imageUrl: 'assets/h_3.png',
      rentalPrice: 14000000,
      locations: 'Ubud, Bali',
    ),
    Property(
      name: 'Villa 4KT',
      imageUrl: 'assets/h_4.png',
      rentalPrice: 15000000,
      locations: 'Kuta Utara, Bali',
    ),
    Property(
      name: 'Villa Gaya Loteng',
      imageUrl: 'assets/h_5.png',
      rentalPrice: 13000000,
      locations: 'Seminyak, Bali',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Property List'),
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(16.0),
        itemCount: properties.length,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.only(bottom: 16.0),
            child: Card(
              elevation: 2.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8.0),
                        bottomLeft: Radius.circular(8.0),
                      ),
                      image: DecorationImage(
                        image: NetworkImage(properties[index].imageUrl),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(width: 8.0),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          properties[index].name,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                          ),
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          'Rental Price: \$${properties[index].rentalPrice.toString()}',
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.grey[600],
                          ),
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          properties[index].locations,
                          style: TextStyle(
                            fontSize: 14.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Property List',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PropertyListPage(),
    );
  }
}

void main() {
  runApp(MyApp());
}
