class Product {

  //Product's variables: name,price,imageUrl.All required.

  final String name;
  final double price;
  final String imageUrl;

  const Product({
    required this .name,
    required this.price,
    required this.imageUrl,flutter
});

  static const List<Product> products = [
    Product(name: 'Orange',
        price: 10.38,
        imageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRWbb0dC-vAS3Mqx6l_F6uDkUSWFtjHJ8v-MA&usqp=CAU'
    ),

    Product(name: 'Mangoes',
        price: 20.38,
        imageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTAQoaZu9DwLosRdEC_ldosO8zI7iSBHZTD2Q&usqp=CAU'
    ),

    Product(name: 'Guava',
        price: 19.38,
        imageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRNXFREchB8vnE6z2M5tHZlaOI00GO710fwhQ&usqp=CAU'
    ),
  ];
}