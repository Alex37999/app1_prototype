import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class person extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    /*

    return Container(

        child: Center(

            child: Text('Hey, im Alex!')

        )

    );

    */




      // to create containers (row-wise)......

    return Row(

        mainAxisAlignment: MainAxisAlignment.spaceEvenly,


        /*

        children: [

          Container( height: 100, width: 100, child: Text('Hey! How are you?')),
          Container( height: 100, width: 100, child: Text('Hey! How are you?')),
          Container( height: 100, width: 100, child: Text('Hey! How are you?')),

       ]

        */

        // to create and decorate containers.........

      children: [

        Container(

        //alignment: Alignment.center,
        height: 50,
        width: 50,
        margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.pink,
          border: Border.all(color: Colors.black , width: 5)
        ),
        alignment: Alignment.center, //alignment of the child
        child: Text('Hello there smart people'),

      ),

        Container(

          //alignment: Alignment.center,
          height: 50,
          width: 50,
          margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: Colors.lightGreen,
              border: Border.all(color: Colors.black , width: 5)
          ),
          alignment: Alignment.center, //alignment of the child
          child: Text('Hello there smart people'),

        ),

        Container(

          //alignment: Alignment.center,
          height: 50,
          width: 50,
          margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: Colors.lightBlue,
              border: Border.all(color: Colors.black , width: 5)
          ),
          alignment: Alignment.center, //alignment of the child
          child: Text('Hello there smart people'),

        ),

      ]




      );






  }

}
