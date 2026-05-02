import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';

class QuickAccessGrid extends StatelessWidget {
  const QuickAccessGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          GridView.count(
            crossAxisCount: 4,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            mainAxisSpacing: 6,
            crossAxisSpacing: 5,
            children: [
              // Fila 1
              _BuildQuickAccessItem(
                label: 'Reservas',
                icon: Symbols.calendar_month,
                color: Colors.blue.shade400,
              ),
              _BuildQuickAccessItem(
                label: 'Ganancias',
                icon: Symbols.payments,
                color: Colors.green.shade400,
              ),
              _BuildQuickAccessItem(
                label: 'Mis Depas',
                icon: Symbols.apartment,
                color: Colors.indigo.shade400,
              ),
              _BuildQuickAccessItem(
                label: 'Mensajes',
                icon: Symbols.chat_bubble,
                color: Colors.teal.shade400,
              ),

              // Fila 2
              _BuildQuickAccessItem(
                label: 'Limpieza',
                icon: Symbols.cleaning_services,
                color: Colors.orange.shade400,
              ),
              _BuildQuickAccessItem(
                label: 'Gastos',
                icon: Symbols.receipt_long,
                color: Colors.red.shade400,
              ),
              _BuildQuickAccessItem(
                label: 'Check-in',
                icon: Symbols.key,
                color: Colors.amber.shade600,
              ),
              _BuildQuickAccessItem(
                label: 'Soporte',
                icon: Symbols.support_agent,
                color: Colors.blueGrey.shade400,
              ),
            ],
          ),
        ],
    );
  }
}

class _BuildQuickAccessItem extends StatelessWidget {
  final String label;
  final IconData icon;
  final Color color;

  const _BuildQuickAccessItem({
    required this.label,
    required this.icon,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 18),
      child: Column(
        children: [
          Icon(icon, color: color, size: 30),
          SizedBox(height: 8),
          Text(
            label,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 11, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}