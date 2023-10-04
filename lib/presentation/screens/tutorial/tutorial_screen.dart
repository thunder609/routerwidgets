import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:animate_do/animate_do.dart';
class SlideInfo{
  final String title;
  final String caption;
  final String imageurl;
SlideInfo(this.title, this.caption, this.imageurl);

}
final slides=<SlideInfo>[
  SlideInfo('Buscar a Comida', 'sdfdfgfgffddd', 'assets/images/1.png'),
  SlideInfo('Ebtrega Rapida', 'sdfdfgfgffddd', 'assets/images/2.png'),
  SlideInfo('Disfruta la  Comida', 'sdfdfgfgffddd', 'assets/images/3.png'),
];

class TutorialScreen extends StatefulWidget{
  static const name='tutorial_screen';

  const TutorialScreen({super.key});
  @override
  State<TutorialScreen> createState() =>_TutorialScreenState();
}

class _TutorialScreenState extends State<TutorialScreen>{
  late final PageController pageviewController=PageController();
  bool endReached = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageviewController.addListener(() {
      final page=pageviewController.page??0;
     if(!endReached && page >= (slides.length-1.5)){
       setState(() {
         endReached=true;
       });
     }
    });
  }
  @override
  void dispose() {
    // TODO: implement dispose
    pageviewController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body: Stack(children: [
          PageView(
        controller:pageviewController,
        physics: const BouncingScrollPhysics(),
        children:slides.map((slideData) => _Slide(
          title: slideData.title,
           caption: slideData.caption ,
          imageUrl: slideData.imageurl,
        )
        ).toList()

      ),

          Positioned(
            right: 20,
            height: 100,
            child:TextButton(
            child:const Text('Salir') ,
            onPressed: ()=>context.pop(),
            )
          ),

        endReached ? Positioned(
           bottom:  20,
            height: 30,
            child: FadeInRight(
              from: 15,
              delay: const Duration(seconds: 1),
              child: FilledButton(
              child:const Text('Comenzar') ,
              onPressed: ()=>context.pop(),
            ),
            ),
        ): const SizedBox(),
        ],
    ),
    );
  }
}




class _Slide extends StatelessWidget {
  final String title;
  final String caption;
  final String imageUrl;

  const _Slide(
      { required this.title, required this.caption, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    final titleStyle=Theme.of(context).textTheme.titleLarge;
    final captionStyle=Theme.of(context).textTheme.bodySmall;
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image( image: AssetImage( imageUrl )),
            const SizedBox(height: 20),
            Text(title,style: titleStyle,),
            const SizedBox(height: 10),
            Text(title,style:captionStyle)

          ],
        ),
      ),
    );
  }
}


    

    
    
    
    
    
