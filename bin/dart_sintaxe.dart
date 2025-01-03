import 'viagem.dart';
import 'transporte.dart';
void main() {
  Viagem viagemMaio = Viagem(locomocao: Transporte.carro);
  viagemMaio.registrosVisitados;
  print(viagemMaio.consultarTotalVisitados);
  viagemMaio.visitar("São Paulo");
  print(viagemMaio.consultarTotalVisitados);
  viagemMaio.alterarTotalLocaisVisitados = 10;
  print(viagemMaio.consultarTotalVisitados);
}

