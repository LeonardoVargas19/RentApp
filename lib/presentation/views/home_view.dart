import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:rent_app/config/theme/app_theme.dart';
import 'package:rent_app/presentation/views/views.dart';


class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: _HomeFloatingAction(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: _HomeAppbar(),
      body: BodyWidget(),
    );
  }
}


class _HomeFloatingAction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () => context.push('/booking'),
      shape: CircleBorder(),
      child: const Icon(Symbols.calendar_add_on, size: 36),
    );
  }
}

class _HomeAppbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      notchMargin: 8.0,
      color: AppTheme.colorAppBar,
      child: SizedBox(
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: const Icon(Icons.home, size: 36),
              tooltip: 'Inicio',
              onPressed: () => context.go('/home'),
            ),
            IconButton(
              icon: const Icon(Symbols.finance_mode, size: 36),
              tooltip: 'Finanzas',
              onPressed: () => context.push('/finances'),
            ),

            const SizedBox(width: 48),

            IconButton(
              icon: const Icon(Icons.settings, size: 36),
              tooltip: 'Configuraciones',
              onPressed: () => context.push('/settings'),
            ),

            IconButton(
              icon: const Icon(Icons.person, size: 36),
              tooltip: 'Perfil',
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
