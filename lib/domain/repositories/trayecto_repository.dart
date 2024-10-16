//El repositorio terminará llamando al datasource
import 'package:widgets_app/domain/entities/trayecto.dart';

abstract class TrayectoRepository {
  //Vas a recibir una lista de trayectos y vas a pedir el id del pasajero?
  Future<List<Trayecto>> getTrayectos(String userID);
}
