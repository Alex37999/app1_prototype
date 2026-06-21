import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class search extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    /*

    return Container(

        child: Center(

            child: Text('Hey, im search!')

        )

    );

    */



                        // to create containers ( column-wise ).....

    return SingleChildScrollView(
      child: Column(
      
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      
            /*
      
            children: [
      
              Container( height: 100, width: 100, child: Text('Hey! How are you?')),
              Container( height: 100, width: 100, child: Text('Hey! How are you?')),
              Container( height: 100, width: 100, child: Text('Hey! How are you?')),
      
            ]
      
            */
      
      
      
                  // to create and decorate containers.........
      
            children:  [
      
      
          Container(
      
          //alignment: Alignment.center,
          height: 100,
          width: 100,
          margin: EdgeInsets.fromLTRB(30, 30, 30, 30),
          padding: EdgeInsets.all(70),
          decoration: BoxDecoration(
            color: Colors.pink,
            border: Border.all(color: Colors.black , width: 5)
          ),
          alignment: Alignment.center, //alignment of the child
          child: Text('Hello there smart people'),
      
        ),
      
          Container(
      
            //alignment: Alignment.center,
            height: 80,
            width: 80,
            margin: EdgeInsets.fromLTRB(30, 30, 30, 30),
            padding: EdgeInsets.all(70),
            decoration: BoxDecoration(
                color: Colors.lightGreenAccent,
                border: Border.all(color: Colors.black , width: 5)
            ),
            alignment: Alignment.center, //alignment of the child
            child: Text('Hello there smart people'),
      
          ),
      
          Container(
      
            //alignment: Alignment.center,
            height: 50,
            width: 50,
            margin: EdgeInsets.fromLTRB(100, 150, 80, 50),
            padding: EdgeInsets.all(70),
            decoration: BoxDecoration(
                color: Colors.lightBlue,
                border: Border.all(color: Colors.black , width: 5)
            ),
            alignment: Alignment.center, //alignment of the child
            child: Text('Hello there smart people'),
      
          ),
      
            ]
      
      ),
    );

  }

}
