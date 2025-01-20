void main() {
  Future myFuture = Future(() {
    print('Going back to the future');
    return 24.5;
  }).then((value) => print('The value $value was returned!'));

  print('Done with main!');
}