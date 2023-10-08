import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class InfinitedScrollScreen extends StatefulWidget {
  static const name='infiite_screen';
  const InfinitedScrollScreen({super.key});
  @override
State<InfinitedScrollScreen>  createState()=>_InfiniteScrollState();

}
class _InfiniteScrollState extends State<InfinitedScrollScreen> {
List<int> imagesIds=[1,2,3,4,5];
bool isLoading=false;
bool isMounted=true;
final ScrollController scrollController = ScrollController();
void initState(){
  super.initState();
scrollController.addListener(() {
  if((scrollController.position.pixels+500)>=scrollController.position.maxScrollExtent ){
    loadNextPage();
  }
});


}
@override
  void dispose() {
  isMounted=false;
    // TODO: implement dispose
scrollController.dispose();

    super.dispose();
  }
  Future loadNextPage() async{;
  if(isLoading)  return;
  isLoading=true;
  setState(() {
    moveScrolToBottom();
  });
  await Future.delayed(const Duration(seconds: 2));
  addFivesImages();
  isLoading=false;
  //revisar si esta montado el componente widgets
  if(!isMounted )return;
  setState(() {
    //mover scroll

  });
  }

Future<void> onRefresh() async {
  isLoading =true;
  setState(() {

  });
  await Future.delayed(const Duration(seconds: 3));
  if (!isMounted  )  return;

  final lastId = imagesIds.last;
 isLoading=false;
 imagesIds.clear();
 imagesIds.add(lastId+1);
 addFivesImages();
 setState(() {

 });

}
void addFivesImages() {
  final lastId=imagesIds.last;
 imagesIds.addAll(
    [1, 2, 3, 4, 5].map((e) => lastId + e)
 );
}
void moveScrolToBottom(){
  if(scrollController.position.pixels+150<=scrollController.position.maxScrollExtent)  return;
  scrollController.animateTo(
     scrollController.position.pixels+120,
      duration: const Duration(milliseconds: 300),
      curve: Curves.fastOutSlowIn,
  );
}
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body:MediaQuery.removePadding(
          context: context,
          removeTop: true,
          removeBottom: true,
          child: RefreshIndicator(
            edgeOffset: 10,
            strokeWidth: 2,
            onRefresh: onRefresh,
            child: ListView.builder(
            controller: scrollController,
               itemCount: imagesIds.length,
              itemBuilder:(context,index)
      {
              return FadeInImage(
              fit :BoxFit.cover,
                  width: double.infinity,
                  height: 300,
                  placeholder: const AssetImage('assets/images/jar-loading.gif'),
                  image: NetworkImage('https://picsum.photos/id/${imagesIds[index]}/500/300'),
                   );
    }
            ),
          ),
        ),
           floatingActionButton:  FloatingActionButton(
             onPressed: ()=>context.pop(),
            // child:CircularProgressIndicator(),
            // child:const Icon(Icons.arrow_forward_ios_rounded),
             child:isLoading
                 ? SpinPerfect(
               infinite:true,
                 child: const Icon(Icons.refresh_outlined)
             )
                 : FadeIn(child: const Icon(Icons.arrow_back_ios_new_rounded)),
           ),
    );

  }
}



