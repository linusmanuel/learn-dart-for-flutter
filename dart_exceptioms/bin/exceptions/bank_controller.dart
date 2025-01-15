class SenderIdInvalidException implements Exception{
  String idSender;
  SenderIdInvalidException({ required this.idSender});
}
class RecieverIdInvalidExpection implements Exception{
  String idReceiver;
  RecieverIdInvalidExpection({required this.idReceiver});

}
class SenderNotAuthenticatedException implements Exception{
  String idSender;
  SenderNotAuthenticatedException({required this.idSender});
}
class SenderBalanceLowerThanAmountException implements Exception{
  String idSender;
  double senderBalance;
  double amount;

  SenderBalanceLowerThanAmountException(
      {required this.idSender, required this.senderBalance, required this.amount});
}

