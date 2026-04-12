import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:rent_app/config/theme/app_theme.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home View')),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        shape: CircleBorder(),
        child: const Icon(Symbols.calendar_add_on,size: 36),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      bottomNavigationBar: homeAppbar(),
    );
  }
}

// ignore: camel_case_types
class homeAppbar extends StatelessWidget {
  const homeAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      notchMargin: 8.0,
      color: AppTheme.surfaceTintLight,
      child: SizedBox(
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: const Icon(Icons.home,size: 36,),
              tooltip: 'Inicio',
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.find_in_page,size: 36,),
              tooltip: 'Finanzas',
              onPressed: () {},
            ),
    
    
            const SizedBox(width: 48), 
    
           
            IconButton(
              icon: const Icon(Icons.settings,size: 36),
              tooltip: 'Configuraciones',
              onPressed: () {},
            ),
       
            IconButton(
              icon: const Icon(Icons.person,size: 36),
              tooltip: 'Perfil',
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
