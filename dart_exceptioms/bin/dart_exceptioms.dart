import 'controllers/bank_controller.dart';
import 'models/account.dart';
import 'exceptions/bank_controller.dart';

void main() {
  // Criando o banco
  BankController bankController = BankController();

  // Adicionando contas
  bankController.addAccount(
      id: "Ricarth",
      account:
      Account(name: "Ricarth Lima", balance: 400, isAuthenticated: false));

  bankController.addAccount(
      id: "Kako",
      account:
      Account(name: "Caio Couto", balance: 600, isAuthenticated: true));

  try {
    // Fazendo transferência
    bool result = bankController.makeTransfer(
        idSender: "Kako", idReceiver: "Ricarth", amount: 300);

    // Observando resultado
    if(result) {
      print("Transação concluida com sucesso!");
    }

  } on SenderIdInvalidException catch(e) {
    print(e);
    print("O ID ${e.idSender} do remetente não é um ID válido.");
  } on RecieverIdInvalidExpection catch(e) {
    print("O ID ${e.idReceiver} do remetente não é um ID válido.");
    print(e);
  } on SenderNotAuthenticatedException catch(e) {
    print("O usuário remetente ID ${e.idSender} não está autenticado.");
    print(e);
  } on SenderBalanceLowerThanAmountException catch (e) {
    print("O usuário de ID ${e.idSender} tentou enviar ${e.amount} sendo que na sua conta tem apenas ${e.senderBalance}");
    print(e);
  } on ReceiverNotAuthenticatedException catch(e) {
    print(e);
  } on Exception {
    print("Algo deu errado!");
  }
}