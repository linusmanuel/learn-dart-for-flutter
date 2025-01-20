void main() {
  Future myFuture = Future(() {
    print('Going back to the future');
    return 24.5;
  }).then((value) => print('The value $value was returned!'));

  Future.delayed(Duration(seconds: 5));

  Future<int> myFutureFunc() async {
    print('I have a function in the future');

    await Future.delayed(Duration(seconds: 5));

    return 12;
  }
  print('Done with main!');
}