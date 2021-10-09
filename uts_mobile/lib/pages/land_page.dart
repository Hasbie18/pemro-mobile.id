import 'package:flutter/material.dart';
import 'package:uts_mobile/model/interface.dart';
import 'package:uts_mobile/pages/list_pages.dart';
import 'package:uts_mobile/widget/slider.dart';

class LandPage extends StatefulWidget {
  const LandPage({Key? key}) : super(key: key);

  @override
  _LandPageState createState() => _LandPageState();
}

class _LandPageState extends State<LandPage> {
  late List<Food> foods;
  @override
  void initState() {
    foods = Food.getFood();
    foods.sort((a, b) => a.nama.compareTo(b.nama));
    super.initState();
    print(foods);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('List Food'),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: ListView(
        children: [
          for (var i = 0; i < foods.length; i++)
            InkWell(
              onTap: () {
                showModalBottomSheet(
                    context: context,
                    builder: (context) => SliderDetail(Food(
                        id: foods[i].id,
                        nama: foods[i].nama,
                        harga: foods[i].harga,
                        jumlah: foods[i].jumlah,
                        imageURl: foods[i].imageURl)));
              },
              child: ListPage(Food(
                  id: foods[i].id,
                  nama: foods[i].nama,
                  harga: foods[i].harga,
                  jumlah: foods[i].jumlah,
                  imageURl: foods[i].imageURl)),
            )
        ],
      ),
    );
  }
}
