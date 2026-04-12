import 'package:flutter/material.dart';

class CardViewHome extends StatelessWidget {
  const CardViewHome({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 150,
      child: Column(
        children: [
          RentCard(
            width: 300,
            height: 20,
            customerName: "Rei Ayanami",
            initialTime: DateTime.now(),
            endTime: DateTime.now(),
          ),
          RentCard(
            width: 300,
            height: 80,
            description:
                "Aliquip irure ipsum non anim. Tempor magna incididunt occaecat consequat labore commodo Lorem in cillum sunt elit ea nulla veniam. Do laborum eu sunt nisi nulla elit in culpa ullamco duis id nulla aliquip ipsum.Culpa in in laboris mollit culpa velit eiusmod enim. Reprehenderit qui veniam minim Lorem nulla in cupidatat qui. Dolore et velit nulla velit ipsum proident ad cillum pariatur voluptate aliqua ut. Consequat excepteur labore in et laborum laborum sint tempor Lorem qui occaecat velit. Reprehenderit ipsum nulla nulla officia consequat. Qui proident sint ad culpa fugiat aliqua deserunt sunt sint. Sint excepteur elit nostrud aute officia ut duis irure.",
          ),
        ],
      ),
    );
  }
}

class RentCard extends StatelessWidget {
  final double width;
  final double height;
  final String? customerName;
  final String? description;
  final DateTime? initialTime;
  final DateTime? endTime;
  final VoidCallback? onTap;

  const RentCard({
    super.key,
    required this.width,
    required this.height,
    this.customerName,
    this.description,
    this.initialTime,
    this.endTime,
    this.onTap,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      // Mantenemos tu color ámbar
      child: SizedBox(
        width: width,
        height: height,
        child: RichText(
          textAlign: description != null ? TextAlign.justify : TextAlign.start,
          text: TextSpan(
            style: const TextStyle(
              color: Colors.black,
            ), // Color base para que sea visible sobre ámbar
            children: [
              // Lógica del Título: Nombre + Fechas (si llegan)
              if (customerName != null) TextSpan(text: "$customerName "),

              if (initialTime != null && endTime != null)
                TextSpan(
                  text:
                      "Inicio ${initialTime!.day}/${initialTime!.month}/${initialTime!.year} "
                      "- Fin ${endTime!.day}/${endTime!.month}/${endTime!.year}",
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ), // Fechas en negrita
                ),

              // Lógica del Body: Descripción (si llega)
              if (description != null) ...[
                const TextSpan(), // Salto de línea para separar del título
                TextSpan(text: description),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
