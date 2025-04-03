class CatalogModel {
  static final items = [
    Item(
    id: "P1",
    name: "Apple iPhone 14 Pro",
    desc: "Latest Apple smartphone featuring a Pro camera system and A16 chip.",
    color: "#1C1C1E",
    price: 999.0,
    image: "/home/user/myapp/assets/images/catalogue Products/Apple iPhone 14 Pro.png"
  )
  ];
}




class Item {
  final String id;
  final String name;
  final String desc;
  final String color;
  final num price;
  final String image;

  Item({required this.id, required this.name, required this.desc, required this.color, required this.price, required this.image});
}

final products = [
  
];


