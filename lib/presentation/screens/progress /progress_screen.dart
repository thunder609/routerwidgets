import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProgressScreen extends StatelessWidget {
  static const name='progress_screen';
  const ProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title: Text('Progress indicator'),
       ),
      body:_ProgressView(),
    );
  }
}

class _ProgressView extends StatelessWidget {
  const _ProgressView();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
      children:const [
        SizedBox(height: 30),
        Text('Circulo progress indicator'),
        SizedBox(height: 10),
        CircularProgressIndicator(strokeAlign: 2,backgroundColor: Colors.lightBlue,),
        SizedBox(height: 20),
        Text('Cicula y linear Controlado'),
        SizedBox(height: 10),
        _ControllerProgrssIndicator(),
      ],
    ),
    );
  }
}


class _ControllerProgrssIndicator extends StatelessWidget {
  const _ControllerProgrssIndicator();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Stream.periodic(const Duration(milliseconds: 300),(value){
        return (value*2)/100;
    }).takeWhile((value)=> value< 100),
      builder: (context, snapshot) {
        final progressValue = snapshot.data    ?? 0;
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircularProgressIndicator(value:progressValue,strokeWidth: 2,backgroundColor: Colors.black12,),
                const SizedBox(width:20,),
                Expanded(
                    child: LinearProgressIndicator(value: progressValue,)
                ),
              ],
          ),

        );
      }
    );
  }
}
