class SenderIdInvalidException implements Exception{
  String idSender;
  static const String report = "SenderIdInvalidException";

  SenderIdInvalidException({ required this.idSender});

  @override
  String toString() {
    return "$report\nID Sender: $idSender";
  }
}
class RecieverIdInvalidExpection implements Exception{
  String idReceiver;
  static const String report = "RecieverIdInvalidExpection";
  RecieverIdInvalidExpection({required this.idReceiver});

  @override
  String toString() {
    // TODO: implement toString
    return "$report\nID Receiver: $idReceiver";
  }
}
class SenderNotAuthenticatedException implements Exception{
  String idSender;
  static const  report = "SenderNotAuthenticatedException";
  SenderNotAuthenticatedException({required this.idSender});
}
class SenderBalanceLowerThanAmountException implements Exception{
  String idSender;
  double senderBalance;
  double amount;
  static const report = "SenderBalanceLowerThanAmountException";

  SenderBalanceLowerThanAmountException({required this.idSender, required this.senderBalance, required this.amount});

  @override
  String toString() {
    // TODO: implement toString
    return "$report\nID Sender $idSender tentou enviar $amount mas só tem $senderBalance";
  }
}

