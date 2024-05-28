import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: Theme.of(context).colorScheme.surface,
        child: Column(
          children: [
            DrawerHeader(
                child: Center(
              child: Icon(Icons.local_shipping_rounded,
                  color: Theme.of(context).colorScheme.primary, size: 40),
            )),
          ],
        ));
  }
}
