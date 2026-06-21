import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class email extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Container(

        child: Center(

          child: Card(
            shape: RoundedRectangleBorder(borderRadius: (BorderRadius.circular(30))),
            color: Colors.teal,
            shadowColor: Colors.teal ,
            elevation: 80 ,

            child: SizedBox(

              height: 200,
              width: 200,
              child: Center(
                  child: Text ('Open your Email!'),
              )

            )

          )

          //  To color the text inside the card, you might have to define a style class separately, outside the
          //  card widget, just like coloring texts inside buttons.




           // child: Text('Hey, knock knock, im home!')

        )

    );

  }

}
