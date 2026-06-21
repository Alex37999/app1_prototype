import 'package:flutter/cupertino.dart';
import 'package:app1/main.dart';
import 'package:flutter/material.dart';

class msg extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    mySnackBar( message, context )
    {
      return ScaffoldMessenger.of(context).showSnackBar(

          SnackBar(content: Text(message))

      );

    }

    var myImgList1=[

      { 'img':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS5k-CbxiEW5fywW1ZFsQ3f-LL0LCiosHnpjQ&s' , 'title':'Rahim'},
      { 'img':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS5k-CbxiEW5fywW1ZFsQ3f-LL0LCiosHnpjQ&s' , 'title':'Karim'},
      { 'img':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS5k-CbxiEW5fywW1ZFsQ3f-LL0LCiosHnpjQ&s' , 'title':'Messi'},
      { 'img':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS5k-CbxiEW5fywW1ZFsQ3f-LL0LCiosHnpjQ&s' , 'title':'Ronaldo'},
      { 'img':'https://static.vecteezy.com/system/resources/thumbnails/047/493/988/small_2x/hairy-fluffy-cat-playing-png.png' , 'title':'Neymar'},
      { 'img':'https://static.vecteezy.com/system/resources/thumbnails/047/493/988/small_2x/hairy-fluffy-cat-playing-png.png' , 'title':'Mbappe'},
      { 'img':'https://static.vecteezy.com/system/resources/thumbnails/047/493/988/small_2x/hairy-fluffy-cat-playing-png.png' , 'title':'Halaand'},
      { 'img':'https://static.vecteezy.com/system/resources/thumbnails/047/493/988/small_2x/hairy-fluffy-cat-playing-png.png' , 'title':'Yamal'},
      { 'img':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS5k-CbxiEW5fywW1ZFsQ3f-LL0LCiosHnpjQ&s' , 'title':'Rahim'},
      { 'img':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS5k-CbxiEW5fywW1ZFsQ3f-LL0LCiosHnpjQ&s' , 'title':'Karim'},
      { 'img':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS5k-CbxiEW5fywW1ZFsQ3f-LL0LCiosHnpjQ&s' , 'title':'Messi'},
      { 'img':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS5k-CbxiEW5fywW1ZFsQ3f-LL0LCiosHnpjQ&s' , 'title':'Ronaldo'},
      { 'img':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS5k-CbxiEW5fywW1ZFsQ3f-LL0LCiosHnpjQ&s' , 'title':'Rahim'},
      { 'img':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS5k-CbxiEW5fywW1ZFsQ3f-LL0LCiosHnpjQ&s' , 'title':'Karim'},
      { 'img':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS5k-CbxiEW5fywW1ZFsQ3f-LL0LCiosHnpjQ&s' , 'title':'Messi'},
      { 'img':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS5k-CbxiEW5fywW1ZFsQ3f-LL0LCiosHnpjQ&s' , 'title':'Ronaldo'},


    ];

    /*

    return Container(

        child: Center(

            child: Text('Hey, text me!'),

        )

    );

    */



      //to create a listview of lists of items in a single activity page....

       return ListView.builder(

        itemCount: myImgList1.length,
        itemBuilder: (context,index) {

          return GestureDetector(

            onTap: () { mySnackBar( myImgList1[index]['title'], context ); } ,

              child: Container(

               margin: EdgeInsets.all(10),
               width: double.infinity ,
               height: 200,
               child: Image.network(myImgList1[index]['img']!, fit: BoxFit.fill)

            )

          );

        }

        );




  }

}


