//Las clases que implementen TrayectoDatasource van a ser datasource's
import 'package:widgets_app/domain/entities/trayecto.dart';

abstract class TrayectoDatasource {
  //Vas a recibir una lista de trayectos y vas a pedir el id del pasajero?
  Future<List<Trayecto>> getTrayectos(String userID);
}
