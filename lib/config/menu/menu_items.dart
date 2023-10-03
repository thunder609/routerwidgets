

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
       link: '/buttons',
       icon:Icons.smart_button_outlined),
  MenuItems(title: 'Tarjetas',
      subTitle:'Un Contenedor Estilizado',
      link: '/cards',
      icon:Icons.credit_card,),
  MenuItems(title: 'Progress Indicators',
    subTitle:'Gnerales y Controlados',
    link: '/progress',
    icon:Icons.refresh_rounded,),
  MenuItems(title: 'Snack Bar',
    subTitle:'Snack y Diologes',
    link: '/snackBar',
    icon:Icons.info_outline),
  MenuItems(title: 'Animated Cotainer',
      subTitle:'Stateful widgets',
      link: '/animated',
      icon:Icons.check_box_outline_blank_outlined),
];
