class Cards {
  final String name, photo;
  final int price;

  Cards({
    required this.name,
    required this.photo,
    required this.price,
  });
}

List<Cards> demo_cards = [
  Cards(name: "Kitty", photo: "assets/images/pet2.png", price: 60),
  Cards(name: "Billy", photo: "assets/images/pet3.png", price: 45),
  Cards(name: "Kallu", photo: "assets/images/pet2.png", price: 65),
  Cards(name: "Munni", photo: "assets/images/pet3.png", price: 50),
  Cards(name: "Leopord",photo: "assets/images/pet2.png", price: 60),
  Cards(name: "Jubli", photo: "assets/images/pet3.png", price: 45),
  Cards(name: "Billi", photo: "assets/images/pet2.png", price: 65),
  Cards(name: "Rejor", photo: "assets/images/pet3.png", price: 50),
];
