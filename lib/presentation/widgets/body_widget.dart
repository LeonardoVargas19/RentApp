import 'package:flutter/material.dart';
import 'package:rent_app/config/theme/app_theme.dart';
import 'package:rent_app/presentation/widgets/quick_access_grid_widget.dart';
import 'package:rent_app/presentation/widgets/widgets.dart';

class BodyWidget extends StatelessWidget {
  const BodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _AppbarSearch(),
      body: Column(
        children: [
          CardWidgetHome(child: QuickAccessGrid()),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              itemCount: 10, // Número de elementos de prueba
              itemBuilder: (context, index) {
                return _TransactionItem(
                  nombre: "Huésped $index",
                  fecha: "May 02, 2026",
                  monto: 2500.0,
                  imagenUrl: "https://img.wattpad.com/d432890f0fc3e9e3b695f310943a30b6a046c578/68747470733a2f2f73332e616d617a6f6e6177732e636f6d2f776174747061642d6d656469612d736572766963652f53746f7279496d6167652f536b6b5f545a6a4b2d2d653836673d3d2d3939343139353337392e313635303534653032393964373335333234333233343530343131352e6a7067?s=fit&w=720&h=720",
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _TransactionItem extends StatelessWidget {
  final String nombre;
  final String fecha;
  final double monto;
  final String imagenUrl;

  const _TransactionItem({
    required this.nombre,
    required this.fecha,
    required this.monto,
    required this.imagenUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 5),
      child: ListTile(
        leading: CircleAvatar(backgroundImage: NetworkImage(imagenUrl)),
        title: Text(nombre),
        subtitle: Text(fecha),
        trailing: Text(
          '\$$monto',
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

class _AppbarSearch extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: SizedBox(
        height: 45,
        child: SearchBar(
          elevation: WidgetStateProperty.all(0),
          backgroundColor: WidgetStateProperty.all(AppTheme.colorAppBar),
          hintText: 'Search replies',
          hintStyle: WidgetStateProperty.all(
            const TextStyle(color: Colors.grey),
          ),
          leading: const Icon(Icons.search),
          trailing: const [
            CircleAvatar(
              radius: 15,
              backgroundImage: NetworkImage(
                'https://pbs.twimg.com/media/CSuQ0drWcAAfdqG.png',
              ),
            ),
          ],
          onChanged: (value) {
            print('Buscando: $value');
          },
        ),
      ),
    );
  }

  @override
  // Definimos el tamaño estándar de un AppBar
  Size get size => const Size.fromHeight(kToolbarHeight);

  // Implementación necesaria para PreferredSizeWidget
  @override
  Size get preferredSize => size;
}
