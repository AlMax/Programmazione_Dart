Future<String> fetchOrder() => Future.delayed(
      Duration(seconds: 2),
      () => 'Cappuccino',
      //() => throw Exception('Latte finito!'),
    );

/*void main() {
  print('Programma partito');
  fetchOrder()
      .then((order) => print('Il tuo ordine: $order is ready!'))
      .catchError((errore) => print(errore))
      .whenComplete(() => print('Ho finito!'));
} */

Future<void> main() async {
  print('Programma partito');
  try {
    final ordine = await fetchOrder();
    //await attende che l'evento Future accada e poi prosegue
    print(ordine);

    final ordine1 = await fetchOrder();
    print(ordine1);
  } catch (e) {
    print(e);
  } finally {
    print('Finito');
  }
}
