import 'package:flutter/material.dart';
import 'package:uts_mobile/model/interface.dart';

class ListPage extends StatelessWidget {
  final Food foods;
  ListPage(this.foods);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.green,
      elevation: 3,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.asset(
                foods.imageURl,
                fit: BoxFit.cover,
                width: 50,
                height: 50,
              ),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Text(foods.nama),
          SizedBox(
            width: 20,
          )
        ],
      ),
    );
  }
}
