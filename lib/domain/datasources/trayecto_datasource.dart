//Las clases que implementen TrayectoDatasource van a ser datasource's
import 'package:widgets_app/domain/entities/trayecto.dart';

abstract class TrayectoDatasource {
  Future<String> getTrayecto(String userID);
}
