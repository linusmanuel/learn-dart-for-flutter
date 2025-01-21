void main() {
  // Future myFuture = Future(() {
  //   print('Going back to the future');
  //   return 24.5;
  // }).then((value) => print('The value $value was returned!'));
  //
  // Future.delayed(Duration(seconds: 5));

  Future<int> myFutureFunc(int a, int b) async {
    try {
      if(a>b) throw FormatException();

      print('I have a function in the future');

      await Future.delayed(Duration(seconds: 5));

      return 12;
    }
    catch(e) {
      print("An error occurred: $e");
    }
    finally {
      print("The future is finally over!");
      return 404;
    }
  }

  myFutureFunc(7,4)
    .then((value) => print("My function value is: $value"));
}
