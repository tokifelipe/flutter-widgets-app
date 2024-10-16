import 'package:flutter_riverpod/flutter_riverpod.dart';

// Un simple string
final trayectoProvider = StateProvider((ref) => 'wena pollo');

// Un objeto de tipo StringNotifier (custom)
final trayectoNotifierProvider = StateNotifierProvider<StringNotifier, String>(
  (ref) => StringNotifier(),
);

// Controller o Notifier
class StringNotifier extends StateNotifier<String> {
  // STATE = Estado = '';
  StringNotifier() : super('');

  // Método para actualizar el string
  void updateString(String newString) {
    //Aqui es donde puedo modificar el estado
    state = newString;
  }

  // Método para limpiar el string
  void clearString() {
    state = '';
  }
}
