import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Alarm extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Container(

        child: Center(

            child: CircularProgressIndicator(

              color: Colors.pink,
              backgroundColor: Colors.green,
              strokeWidth: 5

            )

            /*

            child: LinearProgressIndicator(

                color: Colors.pink,
                backgroundColor: Colors.green,
                minHeight: 6

            )


            */


            //child: Text('Hey, wake up!')

        )

    );

  }

}
