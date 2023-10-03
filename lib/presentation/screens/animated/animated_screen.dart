import 'dart:math' show Random;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnimaredScreen extends StatefulWidget {
  static const name = 'animated_screen';

  const AnimaredScreen({super.key});

  @override
  State<AnimaredScreen> createState() => _AnimaredScreenState();
}
  class _AnimaredScreenState extends State<AnimaredScreen> {
  double width=50;
  double height=50;
  Color color=Colors.orange;
  double borderRadius=10.0;
  void changeShape(){
    final random= Random();
    width=random.nextInt(300)+120;
    height=random.nextInt(400)+120;
    borderRadius=random.nextInt(100)+20;
    color=Color.fromRGBO(
        random.nextInt(255),
        random.nextInt(255),
        random.nextInt(255),
         1);
    setState(() {

    });
  }
  @override
  Widget build(BuildContext context) {
  return Scaffold(
  appBar: AppBar(
  title:const Text('Container Animated'),
  ),
  body:Center(
  child:AnimatedContainer(
  duration: const Duration(milliseconds: 400),
  curve: Curves.bounceOut,
  width: width<=0 ? 0:width,
  height: height<=0 ?0:width,
  decoration: BoxDecoration(
  color: color,
  borderRadius: BorderRadius.circular(borderRadius<=0 ? 0:borderRadius)
  ),
  ),
  ),
  floatingActionButton: FloatingActionButton(
  onPressed: changeShape,
  child:const Icon(Icons.play_arrow_rounded)
  ),
  );
  }
  }






