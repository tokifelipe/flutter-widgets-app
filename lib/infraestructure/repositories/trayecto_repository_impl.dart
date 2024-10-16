import 'package:widgets_app/domain/repositories/trayecto_repository.dart';
import 'package:widgets_app/domain/entities/trayecto.dart';
import 'package:widgets_app/domain/datasources/trayecto_datasource.dart';

class TrayectosRepository implements TrayectoRepository {
  final TrayectoDatasource trayectoDatasource;
  TrayectosRepository(this.trayectoDatasource);

  @override
  Future<List<Trayecto>> getTrayectos(String userID) {
    return trayectoDatasource.getTrayectos(userID);
  }
}
