import 'package:flutter/material.dart';
import 'package:rent_app/config/theme/app_theme.dart';
import 'package:rent_app/presentation/widgets/widgets.dart';

class BodyWidget extends StatelessWidget {
  const BodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _AppbarSearch(),
      body: ListView(
        padding: EdgeInsets.only(right: 30.0, left: 30.0),
        children: [Card.outlined(child: CardViewHome())],
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
