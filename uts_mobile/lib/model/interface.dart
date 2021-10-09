class Food {
  final int id;
  final String nama;
  final int harga;
  final int jumlah;
  final String imageURl;

  Food(
      {required this.id,
      required this.nama,
      required this.harga,
      required this.jumlah,
      required this.imageURl});

  static List<Food> getFood() {
    return <Food>[
      Food(
          id: 1,
          nama: 'Nasi Goreng',
          harga: 2000,
          jumlah: 3,
          imageURl: 'assets/images/food1.jpg'),
      Food(
          id: 2,
          nama: 'Pisang goreng',
          harga: 1000,
          jumlah: 2,
          imageURl: 'assets/images/food1.jpg'),
      Food(
          id: 3,
          nama: 'Bakso',
          harga: 10000,
          jumlah: 2,
          imageURl: 'assets/images/food1.jpg'),
    ];
  }
}
