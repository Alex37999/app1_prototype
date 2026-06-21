import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class settings extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    /*

    return Container(

        child: Center(

            //child: Icon(Icons.settings , size: 200, color: Colors.)

            child: Text('Hey, im settings!')

        )

    );

    */



        //Example of Layout Builder according to display sizes (desktop, laptop, mobile).....

    return LayoutBuilder(

          builder: (BuildContext context, BoxConstraints constraints ) {

            if(constraints.maxWidth<600){

              return Container(

                height: 200,
                width: 150,
                color: Colors.lightBlue

              );

            }

            else{

              return Container(

                height: 400,
                width: 500,
                color: Colors.deepOrangeAccent


              );

            }

          }

          );



  }

}
