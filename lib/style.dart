import 'package:flutter/material.dart';

TextStyle headLine1 (context) {

  var width = MediaQuery.of(context).size.width;

  if(width <= 700)
    {
      return TextStyle(

        color: Colors.pink,
        fontSize: 38

      );

    }
  else
    {
      return TextStyle(

        color: Colors.deepPurple,
        fontSize: 64,

      );

    }






}







