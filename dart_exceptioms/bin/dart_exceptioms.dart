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
      Account(name: "Ricarth Lima", balance: 400, isAuthenticated: true));

  bankController.addAccount(
      id: "Kako",
      account:
      Account(name: "Caio Couto", balance: 600, isAuthenticated: true));

  try {
    // Fazendo transferência
    bool result = bankController.makeTransfer(
        idSender: "Kako22", idReceiver: "Ricarth", amount: 60);

    // Observando resultado
    print(result);
  } on SenderIdInvalidException catch(e) {
    print("O ID ${e.idSender} do remetente não é um ID válido.");
  }
}