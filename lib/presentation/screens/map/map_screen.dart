import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/presentation/providers/trayecto_provider.dart';

class MapScreen extends ConsumerWidget {
  static const name = 'map_screen';

  const MapScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final String trayecto = ref.watch(trayectoProvider);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xFF4285F4),
        title: const Row(
          children: [
            Icon(Icons.car_rental, color: Colors.white),
            SizedBox(width: 8),
            Text('Tellevo', style: TextStyle(color: Colors.white)),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Mis Viajes',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            const SizedBox(height: 16),
            _buildTripCard(trayecto),
          ],
        ),
      ),
    );
  }

  Widget _buildTripCard(String trayecto) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFFE8F0FE),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('#0000206', style: TextStyle(color: Colors.grey)),
              CircleAvatar(
                backgroundColor: Colors.blue,
                child: Icon(Icons.person, color: Colors.white),
              ),
            ],
          ),
          const SizedBox(height: 8),
          const Text('Viernes 20 De Septiembre',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const Text('Viajas con Juan Jofre'),
          const Text('Placa patente: SZXH56'),
          const SizedBox(height: 16),
          Row(
            children: [
              const Text('Estado'),
              const SizedBox(width: 8),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(16),
                ),
                child:
                    const Text('Activo', style: TextStyle(color: Colors.white)),
              ),
            ],
          ),
          const SizedBox(height: 8),
          const Row(
            children: [
              Text('Reservaste'),
              SizedBox(width: 8),
              Icon(Icons.person),
            ],
          ),
          const SizedBox(height: 8),
          const Text('Horario de salida'),
          const Text('23:23 hrs.',
              style: TextStyle(fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
          const Text('Recogida'),
          Text('trayecto: $trayecto',
              style: const TextStyle(
                  fontWeight: FontWeight.bold)), // Aquí se muestra trayecto
          const SizedBox(height: 8),
          const Text('Destino'),
          const Text(
              'C. Limache 3637, 2562193 Valparaíso, Viña del Mar, Valparaíso, Chile',
              style: TextStyle(fontWeight: FontWeight.bold)),
          const SizedBox(height: 16),
          const Text('Tarifa: \$ 2,553',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue[900],
              minimumSize: const Size(double.infinity, 40),
            ),
            child: const Text('Ver más información',
                style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
  }
}
