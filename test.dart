void main() {
  print('Hello World');

  //Test Linux

  /*const array = [1, 3, 5, 7, 9];
  int somma = 0;
  for( int num in array ){
    somma += num;
  }
  print('Somma: $somma'); */

  /*const multi = 10;
  const list = [1, 2, 3];
  final result = list.map((x) {
    return x * multi;
  });

  print(result); */

  /*const list = [1, 2, 3, 4, 5];

  Tipo firstWhere<Tipo>(List<Tipo> items, bool Function(Tipo) f,
      {Tipo Function() orElse}) {
    for (var item in items) {
      if (f(item)) {
        return item;
      }
    }
    return orElse();
  }

  final int first = firstWhere(list, (x) => x == 6, orElse: () => -1);

  print(first); */

  /*const email = [
    'ciao@gmail.com',
    'ciao@ciao.com',
    'cia@prova.com',
    'aiuto@gmail.com'
  ];

  const dominiConosciuti = ['gmail.com'];

  final mailErrate = email
      .map((mail) => mail.split('@').last)
      .where((dominio) => !dominiConosciuti.contains(dominio));

  print(mailErrate); */
}
