void main() {
  Stream myStream(int internal, [int? maxCount]) async* {

    int i = 1;
    while(i != maxCount) {
      print("Counting: $i");
      Future.delayed(Duration(seconds: internal));
      yield i++;
    }
    print('The Stream is finished');
  }

  myStream(1, 10);

  print('Main finished');

}