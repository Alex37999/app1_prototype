import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';

class contact extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    /*

    return Container(

        child: Center(

            child: Text('Hey, im 911!')

        )

    );

    */


    return SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: ResponsiveGridRow(
            children: [

              ResponsiveGridCol(

                xs: 12, sm: 6, md: 4, lg: 3, xl: 2,
                child: Container(
                  height: 100,
                  color: Colors.pink
                )

              ),
              ResponsiveGridCol(

                  xs: 12, sm: 6, md: 4, lg: 3, xl: 2,
                  child: Container(
                      height: 100,
                      color: Colors.blueAccent
                  )

              ),
              ResponsiveGridCol(

                  xs: 12, sm: 6, md: 4, lg: 3, xl: 2,
                  child: Container(
                      height: 100,
                      color: Colors.deepOrange
                  )

              ),
              ResponsiveGridCol(

                  xs: 12, sm: 6, md: 4, lg: 3, xl: 2,
                  child: Container(
                      height: 100,
                      color: Colors.lightGreenAccent
                  )

              ),
              ResponsiveGridCol(

                  xs: 12, sm: 6, md: 4, lg: 3, xl: 2,
                  child: Container(
                      height: 100,
                      color: Colors.brown
                  )

              ),
              ResponsiveGridCol(

                  xs: 12, sm: 6, md: 4, lg: 3, xl: 2,
                  child: Container(
                      height: 100,
                      color: Colors.amber
                  )

              ),
              ResponsiveGridCol(

                  xs: 12, sm: 6, md: 4, lg: 3, xl: 2,
                  child: Container(
                      height: 100,
                      color: Colors.indigo
                  )

              ),
              ResponsiveGridCol(

                  xs: 12, sm: 6, md: 4, lg: 3, xl: 2,
                  child: Container(
                      height: 100,
                      color: Colors.blueGrey
                  )

              ),


            ]

          )
        );




  }

}
