
import 'package:flutter/material.dart';

class Food extends StatelessWidget{
    
    const Food({super.key});


    @override
    Widget build(BuildContext context){
      List<Map> myList=[
  {
    "image":"assets/images/italian.jpeg",
    "name":"Italian",
    "place":"24 places"
  },
   {
    "image":"assets/images/thai.jpeg",
    "name":"Thai",
    "place":"30 places"
  },
  {
    "image":"assets/images/japanese.jpeg",
    "name":"Japanese",
    "place":"50 places"
  },
   {
    "image":"assets/images/korean.jpeg",
    "name":"Korean",
    "place":"36 places"
  },
   {
    "image":"assets/images/indian.jpeg",
    "name":"Indian",
    "place":"30 places"
  },
    {
    "image":"assets/images/british.jpeg",
    "name":"British",
    "place":"20 places"
  },
];

        return Scaffold(
          backgroundColor: Colors.black87,
            appBar:AppBar(
                backgroundColor:Colors.black87,
                leading:Icon(Icons.arrow_back,color: Colors.white,),
                title:Text("Cusines",style:TextStyle(fontWeight:FontWeight.bold,fontSize:25,color:Colors.white,)),
                centerTitle:true,
                actions: [
                  Icon(Icons.more_vert_outlined,color:Colors.white),
                ],
                
            ),
            body:Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.builder(
                 itemCount:6,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 15,
                crossAxisSpacing: 15), 
                itemBuilder: (context,index){
                return Container(
                  child:Column(children: [
                    Container(
                      height:145,
                      width: 200,
                      decoration: BoxDecoration(image: DecorationImage(image: AssetImage(myList[index]["image"]),fit:BoxFit.cover),borderRadius: BorderRadius.circular(15)),
                    ),
                    Text(myList[index]["name"],style:TextStyle(fontWeight:FontWeight.bold,fontSize:19,color:Colors.white,)),
                    Text(myList[index]["place"],style:TextStyle(fontSize:12,color:Colors.grey,))
                  ],)
              
                );
              }),
            )
        );
    }
}