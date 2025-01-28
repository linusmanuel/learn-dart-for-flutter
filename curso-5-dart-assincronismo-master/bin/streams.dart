import 'dart:async';
import 'dart:math';

void main() {
  Stream myStream(int internal, [int? maxCount]) async* {

    int i = 1;
    while(i != maxCount) {
      await Future.delayed(Duration(seconds: internal));
      yield i++;
    }
    print('The Stream is finished');
  }

  myStream(1, 10);

  StreamSubscription mySubscriber = myStream(1,10).listen((event) {
    if(event.isEven) {
      print('This number is Even');
    }
  }, onError: (e) {
    print("An error happend: $e");
  }, onDone: () {
    print("The subscriber is gone.");
  });

  print('Main finished');

}