import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IuControlSceen extends StatelessWidget {
  static const name = 'iu_control_screen';

  const IuControlSceen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ui Controls'),
      ),
      body: const _IUControlsView(),
    );
  }
}

class _IUControlsView extends StatefulWidget {
  const _IUControlsView();


  @override
  State<_IUControlsView> createState() => _IUControlsViewState();

}
enum Transportation { car, plane, boat, submnary }

class _IUControlsViewState extends State<_IUControlsView> {
  bool isDeveloper = true;
  bool may =false;
  bool min=false;
  Transportation selectedTasportation = Transportation.car;

  @override
  Widget build(BuildContext context) {
    return ListView(
        physics: const ClampingScrollPhysics(),
        children: [
    SwitchListTile(
    title: Text('Developer Node'),
    subtitle: Text('Controls Addicionles'),
    value: isDeveloper,
    onChanged: (value) => setState(() {
    isDeveloper = !isDeveloper;
    }),


    ),
    ExpansionTile(
    title:const Text('Heviculo de Transporte') ,
    subtitle:  Text('$selectedTasportation'),
    children: [ RadioListTile(
    title:const Text('by Car'),
    subtitle: const Text('Por  Carro'),
    value: Transportation.car,
    groupValue: selectedTasportation,
    onChanged: (value)=>setState(() {
    selectedTasportation=Transportation.car;
    }),
    ),
    RadioListTile(
    title:const Text('by Boat'),
    subtitle: const Text('Por  Bote'),
    value: Transportation.boat,
    groupValue: selectedTasportation,
    onChanged: (value)=>setState(() {
    selectedTasportation=Transportation.boat;
    }),
    ), RadioListTile(
    title:const Text('by Plane'),
    subtitle: const Text('Por  Avion'),
    value: Transportation.plane,
    groupValue: selectedTasportation,
    onChanged: (value)=>setState(() {
    selectedTasportation=Transportation.plane;
    }),
    ),
    RadioListTile(
    title:const Text('by Submarine'),
    subtitle: const Text('Por  Submarino'),
    value: Transportation.submnary,
    groupValue: selectedTasportation,
    onChanged: (value)=>setState(() {
    selectedTasportation=Transportation.submnary;
    }),

    ),


    ],
    ),
          CheckboxListTile(value: may,
            title: const Text('Eres Mayor de edad'),
    onChanged: (value)=>setState(() {
      may=!may;

    }),),
          CheckboxListTile(value: min,
            title: const Text('Eres menor de edad'),
            onChanged: (value)=>setState(() {
              min=!min;

            }),),
    ],


  ) ;

}}