class Stack<T> {
  //<T> Indica la possibilità di usare un qualsiasi tipo di variabile
  final List<T> _items = [];

  void push(T item) => _items.add(item);
  T pop() => _items.removeLast();
}

void main() {
  final stack = Stack<int>();
  stack.push(2);
  stack.push(4);
  print(stack.pop());
}
