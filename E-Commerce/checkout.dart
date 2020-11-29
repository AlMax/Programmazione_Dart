import 'dart:io';

//https://github.com/bizz84/dart-course-materials/tree/master/projects/simple_ecommerce
class Product {
  const Product({required this.id, required this.name, required this.price});
  final int id;
  final String name;
  final double price;

  String get displayName => '${name.toUpperCase()} --> Price:${price}€';
  String get firstC => name.substring(0, 1);
}

class Item {
  const Item({required this.prodotto, this.quantity = 1});
  final Product prodotto;
  final int quantity;
  double get price => quantity * prodotto.price;

  @override
  String toString() => '$quantity x ${prodotto.name.toLowerCase()}: $price€';
}

class Cart {
  final Map<int, Item> _items = {};

  void addProduct(Product prodotto) {
    final item = _items[prodotto.id];
    if (item == null) {
      _items[prodotto.id] = Item(prodotto: prodotto, quantity: 1);
    } else {
      _items[prodotto.id] =
          Item(prodotto: item.prodotto, quantity: item.quantity + 1);
    }
  }

  @override
  String toString() {
    if (_items.isEmpty) {
      return 'Empty';
    } else {
      final listaItem = _items.values.map((item) => item.toString()).join('\n');
      return listaItem;
    }
  }
}

const allProducts = [
  Product(id: 1, name: 'apples', price: 1.60),
  Product(id: 2, name: 'bananas', price: 0.70),
  Product(id: 3, name: 'courgettes', price: 1.0),
  Product(id: 4, name: 'grapes', price: 2.00),
  Product(id: 5, name: 'mushrooms', price: 0.80),
  Product(id: 6, name: 'potatoes', price: 1.50),
];

void main() {
  final carrello = Cart();
  while (true) {
    stdout.write('Cosa vuoi fare? Vedi, Aggiungi, Esci  Selezione:');
    final line = stdin.readLineSync();

    if (line == 'V') {
      allProducts.forEach((prodotto) => print(prodotto.displayName));
    } else if (line == 'A') {
    } else if (line == 'E') {
      break;
    } else {
      print('Invalid command');
    }
  }
}

Product? chooseProduct() {
  final productsList =
      allProducts.map((product) => product.displayName).join('\n');
  stdout.write('Available products:\n$productsList\nYour choice: ');
  final line = stdin.readLineSync();
  for (var product in allProducts) {
    if (product.firstC == line) {
      return product;
    }
  }
  print('Not found');
  return null;
}
