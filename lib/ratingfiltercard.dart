import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/svg.dart';
import 'package:project_mendmate_user/globalvariable.dart';

class RatingFilterCard extends StatefulWidget {
  @override
  _RatingFilterCardState createState() => _RatingFilterCardState();
}

class _RatingFilterCardState extends State<RatingFilterCard> {
  // Rating values

  @override
  Widget build(BuildContext context) {
    List<double> ratings = [5.0, 4.0, 3.0, 2.0, 1.0];
    return Card(
      color: Color(0xffF6F7F9),
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Rating",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Column(
              children: List.generate(ratings.length, (index) {
                return CheckboxListTile(
                  value: selectedRatingGlobal ==
                      ratings[index], // Only one selected
                  onChanged: (bool? value) {
                    setState(() {
                      selectedRatingGlobal =
                          value == true ? ratings[index].toDouble() : null;
                    });
                  },
                  title: Row(
                    children: [
                      RatingBarIndicator(
                        rating: ratings[index],
                        itemBuilder: (context, _) => SvgPicture.asset(
                          "assets/Star 3.svg",
                        ),
                        itemCount: 5,
                        itemSize: 20.0,
                      ),
                      SizedBox(width: 10),
                      Text(ratings[index].toString()), // Show rating value
                    ],
                  ),
                  controlAffinity:
                      ListTileControlAffinity.leading, // Checkbox on left
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
