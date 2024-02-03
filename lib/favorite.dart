import 'package:flutter/material.dart';

class FavoritePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favorites'),
      ),
      body: ListView(
        children: [
          HotelItem(
            hotelName: 'Hotel A',
            location: 'City X',
            rating: 4.5,
            imageUrl: 'assets/images/hotel_a.jpg',
          ),
          HotelItem(
            hotelName: 'Hotel B',
            location: 'City Y',
            rating: 4.2,
            imageUrl: 'assets/images/hotel_b.jpg',
          ),
          HotelItem(
            hotelName: 'Hotel C',
            location: 'City Z',
            rating: 4.8,
            imageUrl: 'assets/images/hotel_c.jpg',
          ),
          // Add more HotelItem widgets for other favorite hotels
        ],
      ),
    );
  }
}

class HotelItem extends StatelessWidget {
  final String hotelName;
  final String location;
  final double rating;
  final String imageUrl;

  HotelItem({
    required this.hotelName,
    required this.location,
    required this.rating,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 80,
        height: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: AssetImage(imageUrl),
            fit: BoxFit.cover,
          ),
        ),
      ),
      title: Text(hotelName),
      subtitle: Text(location),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.star,
                color: Colors.yellow,
                size: 16,
              ),
              SizedBox(width: 4),
              Text(
                rating.toString(),
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ],
          ),
          SizedBox(height: 4),
          Text(
            '4 Nights', // Example: Show the duration of stay
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
