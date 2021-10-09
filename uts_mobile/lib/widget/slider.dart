import 'package:flutter/material.dart';
import 'package:uts_mobile/model/interface.dart';

class SliderDetail extends StatelessWidget {
  final Food foods;

  SliderDetail(this.foods);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity * 2,
      decoration: BoxDecoration(color: Colors.green),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            foods.nama,
            style:
                DefaultTextStyle.of(context).style.apply(fontSizeFactor: 1.5),
          ),
          Image.asset(
            foods.imageURl,
            width: 200,
            height: 250,
          ),
        ],
      ),
    );
  }
}
