import 'package:flutter/material.dart';
import 'package:rent_app/config/theme/app_theme.dart';

class BodyWidget extends StatelessWidget {
  const BodyWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SafeArea(
          child: SearchBar(
            elevation: WidgetStateProperty.all(
              0,
            ), 
            backgroundColor: WidgetStateProperty.all(
              AppTheme.colorAppBar,
            ), 
            hintText: 'Search replies',
            hintStyle: WidgetStateProperty.all(
              const TextStyle(color: Colors.grey),
            ),
            leading: const Icon(Icons.search),
            trailing: [
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
      ],
    );
  }
}
