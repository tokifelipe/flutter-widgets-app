// Origen de dato: API
import 'dart:core';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:widgets_app/domain/datasources/trayecto_datasource.dart';
import 'package:widgets_app/domain/entities/trayecto.dart';

class MyTrayectoDatasource extends TrayectoDatasource {
  @override
  Future<List<Trayecto>> getTrayectos(String userID) async {
    // Implementación del método
    // Por ejemplo, podrías obtener los trayectos desde una API o una base de datos
    List<Trayecto> trayectos = [
      Trayecto(trayecto: 'Trayecto 1'),
      Trayecto(trayecto: 'Trayecto 2'),
      Trayecto(trayecto: 'Trayecto 3'),
    ];
    await Future.delayed(const Duration(seconds: 1));

    return trayectos;
  }
}
