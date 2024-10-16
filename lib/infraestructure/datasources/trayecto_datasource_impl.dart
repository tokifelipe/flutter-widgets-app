// Origen de dato: API
import 'dart:core';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:widgets_app/domain/datasources/trayecto_datasource.dart';
import 'package:widgets_app/domain/entities/trayecto.dart';

class MyTrayectoDatasource extends TrayectoDatasource {
  @override
  Future<String> getTrayecto(String userID) {
    // Implementación del método
    // Por ejemplo, podrías obtener los trayectos desde una API o una base de datos
    const String tate = '';
    return Future.value(tate);
  }
}
