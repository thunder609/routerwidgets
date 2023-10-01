import 'package:flutter/material.dart';

import '../../../config/menu/menu_items.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:AppBar(
        title:Text('Flutter + Material 3'),

      ),
      body: const  _HomeView(),
    );
  }
}

class _HomeView extends StatelessWidget {
const _HomeView();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: AppMenuItems.length,
      itemBuilder: (context, index) {
        final menuItem = AppMenuItems[index];
        return _CustomListTitle(menuItem: menuItem);


      },
    );
  }
}

class _CustomListTitle extends StatelessWidget {
  const _CustomListTitle({
      required this.menuItem,
  });

  final MenuItems menuItem;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return ListTile(
      leading:Icon(menuItem.icon,color: colors.primary,),
      trailing: Icon(Icons.arrow_forward_ios_rounded,color: colors.primary),
      title: Text(menuItem.title),
      subtitle: Text(menuItem.subTitle),
      onTap: (){
        //Navegar a otra Pantalla
      }
      ,
    );
  }
}
