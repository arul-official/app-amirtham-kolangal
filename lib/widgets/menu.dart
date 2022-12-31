import 'package:flutter/material.dart';

import '../business_logic/constants.dart';

class Menu extends StatelessWidget {
  final VoidCallback onPressed;
  const Menu({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: onPressed,
        child: const CircleAvatar(
          backgroundColor: Colors.white,
          child: Icon(Icons.grid_view_rounded,
              color: ThemeColors.primary //Theme.of(context).primaryColor,
              ),
          //foregroundColor: Theme.of(context).,
        ),
      ),
    );
  }
}
