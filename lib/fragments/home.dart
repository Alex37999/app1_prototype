import 'package:app1/fragments/emailFrag.dart';
import 'package:app1/fragments/settingsFrag.dart';
import 'package:app1/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Container(

        child: Center(

            child: Column(

                mainAxisAlignment: MainAxisAlignment.start,

                children: [

                  /*

                  Padding(padding: EdgeInsets.all(60)),

                  ElevatedButton( onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Settings2('From Home to Settings2')));
                  }, child: Text('Go to Settings') ),

                  Padding(padding:EdgeInsets.all(40)),

                  ElevatedButton( onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Email2("From Home to Email2")));
                  }, child: Text('Go to Email') ),


                  */


                  Padding(padding: EdgeInsets.all(60),

                    child: ElevatedButton( onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Settings2('From Home to Settings2')));
                    }, child: Text('Go to Settings') ),


                  ),


                  Padding(padding: EdgeInsets.all(60),

                    child: ElevatedButton( onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Email2("From Home to Email2")));
                    }, child: Text('Go to Email') ),

                  ),


                  Padding(padding: EdgeInsets.all(60),

                    child: ElevatedButton( onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>prac1()));
                    }, child: Text('Go to Practise 1') ),

                  ),

                ]

            )

            )


          //child: Text('Hey, im home!')


    );

  }

}



