class BotClock {
  Future clock(int seconds) {
    return Future.delayed(Duration(seconds: seconds));
  }

  Stream kakoBotStream(int internal, [int? maxCount]) async* {

    int i = 1;
    while(i != maxCount) {
      print("Counting: $i");
      await Future.delayed(Duration(seconds: internal));
      yield i++;
    }
    print('The Stream is finished');
  }
}