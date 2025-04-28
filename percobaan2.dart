class Stack<T> {
  final List<T> _stack = [];

  void push(T element) {
    _stack.add(element);
  }

  T pop() {
    if (_stack.isEmpty) {
      throw StateError("Tidak ada elemen di Stack");
    } else {
      T lastElement = _stack.last;
      _stack.removeLast();
      return lastElement;
    }
  }

  T top() {
    if (_stack.isEmpty) {
      throw StateError("Tidak ada elemen di Stack");
    } else {
      return _stack.last;
    }
  }

  bool isEmpty() {
    return _stack.isEmpty;
  }

  @override
  String toString() => _stack.toString();
}
void main() {
  var stack = Stack<int>();
  var test = stack.isEmpty();
  print(test);
  stack.push(1);
  stack.push(2);
  stack.push(3);
  stack.push(4);
  stack.push(5);
  stack.push(7);
  print(stack);
  var myNumber = stack.pop();
  print('Nomor 1 saya adalah $myNumber');
  var mySecNumber = stack.pop();
  print('Nomor 2 saya adalah $mySecNumber');
  print(stack.pop());
  print(stack);
  print(stack.top());
  print(stack.isEmpty());
}