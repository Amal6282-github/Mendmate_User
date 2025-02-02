import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RatingFilterCard extends StatefulWidget {
  @override
  _RatingFilterCardState createState() => _RatingFilterCardState();
}

class _RatingFilterCardState extends State<RatingFilterCard> {
  List<bool> selectedRatings = [
    false,
    false,
    false,
    false,
    false
  ]; // Checkbox states
  List<double> ratings = [5.0, 4.0, 3.0, 2.0, 1.0]; // Rating values

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xffF6F7F9),
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Rating",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            Column(
              children: List.generate(ratings.length, (index) {
                return CheckboxListTile(
                  value: selectedRatings[index],
                  onChanged: (value) {
                    setState(() {
                      selectedRatings[index] = value!;
                    });
                  },
                  title: Row(
                    children: [
                      RatingBarIndicator(
                        rating: ratings[index],
                        itemBuilder: (context, _) =>
                            Icon(Icons.star, color: Colors.amber),
                        itemCount: 5,
                        itemSize: 20.0,
                        direction: Axis.horizontal,
                      ),
                      Spacer(),
                      Text(ratings[index].toString(),
                          style: TextStyle(fontSize: 16)),
                    ],
                  ),
                  controlAffinity: ListTileControlAffinity.leading,
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
