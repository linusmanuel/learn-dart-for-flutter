import 'viagem.dart';
import 'transporte.dart';
void main() {
  Viagem viagemMaio = Viagem(locomocao: Transporte.carro);
  viagemMaio.registrosVisitados;
  print(viagemMaio.consultarTotalVisitados);
}

