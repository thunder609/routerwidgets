

import 'package:flutter/material.dart';

const cards = <Map<String,dynamic>>[
  {'elevation':0.0,'label':'Elevation 0'},
  {'elevation':1.0,'label':'Elevation 1'},
  {'elevation':2.0,'label':'Elevation 2'},
  {'elevation':3.0,'label':'Elevation 3'},
  {'elevation':4.0,'label':'Elevation 4'},
  {'elevation':5.0,'label':'Elevation 5'},
];
class CardsScreen extends StatelessWidget {
  static const String name="cards_screen";
  const CardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title:const Text('CardsScreen'),

      ),
      body:_CardsView(),
    );
  }
}

class _CardsView extends StatelessWidget {
  const _CardsView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children:[
        ...cards.map((car)=> _CardType1())
      ]
    );
  }
}

class _CardType1 extends StatelessWidget {
  final String label;
  final double elevation;

  const _CardType1({super.key, required this.label, required this.elevation});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
