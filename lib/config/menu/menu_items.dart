

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MenuItems{
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

 const  MenuItems({required this.title,
   required this.subTitle,
   required this.link,
   required this.icon});



}

const AppMenuItems=<MenuItems>[
   MenuItems(title: 'Botones',
       subTitle:'Varios Bototnes en el Fluter',
       link: '/botones',
       icon:Icons.smart_button_outlined),
  MenuItems(title: 'Tarjetas',
      subTitle:'Un Contenedor Estilizado',
      link: '/cards',
      icon:Icons.credit_card,),
];
