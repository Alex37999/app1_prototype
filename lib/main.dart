import 'package:app1/fragments/alarmFrag.dart';
import 'package:app1/fragments/contactFrag.dart';
import 'package:app1/fragments/emailFrag.dart';
import 'package:app1/fragments/home.dart';
import 'package:app1/fragments/msgFrag.dart';
import 'package:app1/fragments/personFrag.dart';
import 'package:app1/fragments/searchFrag.dart';
import 'package:app1/fragments/settingsFrag.dart';
import 'package:app1/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';
import 'package:responsive_grid/responsive_grid.dart';

//Work Flow: main > runApp > MyApp > materialApp > Activity Page > Scaffold > (appBar, body)

main()   //main function
{
  print("RUNNING NEW CODE ");
  runApp(const MyApp()); // 'MyApp' is the name of our app, we set it as 'const' value
}                        // since we won't change the name during our project

class MyApp extends StatelessWidget   //MyApp class inheriting StatelessWidget class
{

  const MyApp({super.key});          // As we've made our 'MyApp' as a constant value,
                                     // we have to make a constructor inside the MyApp class


  @override
  Widget build(BuildContext context) {

    return MaterialApp(

        theme: ThemeData(primarySwatch: Colors.deepPurple , useMaterial3: false,),
        darkTheme: ThemeData(primarySwatch: Colors.pink , useMaterial3: false,),
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.system ,
        color: Colors.teal,
        home: HomeActivity()

    );


    //inside the MaterialApp, we have to include


                                                      //activity pages

  }

  //We have to override the 'build' method that was residing into the 'StatelessWidget' class

}

class HomeActivity extends StatelessWidget        // defining activity pages by creating their
                                                  // classes.
{

  HomeActivity({super.key});


  mySnackBar( message, context )
  {
    return ScaffoldMessenger.of(context).showSnackBar(

      SnackBar(content: Text(message))

    );

  }

  myAlertDialog(context)
  {
    return showDialog(

      context: context,
      builder: (BuildContext context){

        return AlertDialog(

            title: Text('Warning!'),
            content: Text('Do you want to delete these?'),
            actions: [

              TextButton( onPressed: () {
                mySnackBar( 'Messages Deleted Successfully', context );
                Navigator.of(context).pop(); },
                  child: Text('Yes')),
              TextButton(onPressed:(){Navigator.of(context).pop();}, child: Text('No'))

            ]

          );

      }

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


  @override
  Widget build(BuildContext context) {

     //////////

    return  DefaultTabController(
      length: 8,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Blueberry Kitchen", ),
          titleSpacing: 75,
          toolbarHeight: 90,
          toolbarOpacity: 1,
          leading: Text('Powered By-'),
          bottom: TabBar(

            isScrollable: true,
            tabs:
              [
                Tab(icon: Icon(Icons.home), text: 'Home'),
                Tab(icon: Icon(Icons.settings), text: 'settings'),
                Tab(icon: Icon(Icons.search), text: 'search'),
                Tab(icon: Icon(Icons.contact_phone), text: 'contact'),
                Tab(icon: Icon(Icons.person), text: 'person'),
                Tab(icon: Icon(Icons.alarm), text: 'alarm'),
                Tab(icon: Icon(Icons.email), text: 'email'),
                Tab(icon: Icon(Icons.message), text: 'message'),

              ]

          )

        ),
        body: TabBarView(
          children:
            [
              Home(),
              settings(),
              search(),
              contact(),
              person(),
              Alarm(),
              email(),
              msg()

            ]
        )


      )
    );



    ////////// app feature 1...

      /*


    // Home activity class > ... > override > widget build context > then these lines below...

    ButtonStyle bttnStyle = ElevatedButton.styleFrom(

      padding: EdgeInsets.fromLTRB(30,5,30,5),
      backgroundColor: Colors.cyan,
      foregroundColor: Colors.black87,
      shape: RoundedRectangleBorder(

        borderRadius: BorderRadius.all(Radius.circular(15)),


      )

    );

    ButtonStyle bttnStyle1 = OutlinedButton.styleFrom(

        padding: EdgeInsets.all(5),
        backgroundColor: Colors.pink,
        foregroundColor: Colors.black87,
        shape: RoundedRectangleBorder(

          borderRadius: BorderRadius.all(Radius.circular(5)),


        )

    );

    ButtonStyle bttnStyle2 = ElevatedButton.styleFrom(

        minimumSize: Size(double.infinity, 60),
        //padding: EdgeInsets.fromLTRB(30,5,30,5),
        //backgroundColor: Colors.cyan,
        //foregroundColor: Colors.black87,
       // shape: RoundedRectangleBorder(

        //  borderRadius: BorderRadius.all(Radius.circular(15)),


        );


    //we can apply any of these styles to every types of buttons
    //that means, we can apply the style of elevated button to the outlined button and vise versa


    return Scaffold(

      appBar: AppBar(

        title: Text ('My App'),
        titleSpacing: 10,
        //centerTitle: true,
        toolbarHeight: 60,
        toolbarOpacity: 0.9,
        elevation: 5,
       // backgroundColor: Colors.amber,
        actions: [

          IconButton(onPressed:(){ mySnackBar( 'cmnt', context ); }, icon: Icon(Icons.comment) ),
          IconButton(onPressed:(){ mySnackBar( 'sttng', context ); }, icon: Icon(Icons.settings) ),
          IconButton(onPressed:(){ mySnackBar( 'msg', context ); }, icon: Icon(Icons.message) ),
          IconButton(onPressed:(){ mySnackBar( 'mail', context ); }, icon: Icon(Icons.email) ),
          //IconButton(onPressed:(){ mySnackBar( 'call', context ); }, icon: Icon(Icons.add_call) ),
          //IconButton(onPressed:(){ mySnackBar( 'hello', context ); }, icon: Icon(Icons.add_a_photo) ),
          //IconButton(onPressed:(){ mySnackBar( 'notify me ', context ); }, icon: Icon(Icons.add_alert) ),


        ]

      ),
      //backgroundColor: Colors.pink,),

      floatingActionButton: FloatingActionButton(

        onPressed: () { mySnackBar('click me', context); },

        elevation: 10,

       // child: Icon(Icons.add),

        backgroundColor: Colors.green,

        child: Icon(Icons.add),


      ),

      bottomNavigationBar:  BottomNavigationBar(

        items: [

          BottomNavigationBarItem( icon : Icon(Icons.home) , label : 'Homie' ),
          BottomNavigationBarItem( icon : Icon(Icons.message) , label : 'Contact' ),
          BottomNavigationBarItem( icon : Icon(Icons.person) , label : 'Profile' ),
        ],

        //currentIndex: 1,

        onTap: ( int index )
          {
            if( index == 0 )
              {
                mySnackBar( 'come to my home', context );
              }
            if( index == 1 )
            {
              mySnackBar( 'talk over the phone', context );
            }
            if( index == 2 )
            {
              mySnackBar( 'how do you do?', context );
            }
          }


      ),

      drawer: Drawer(

        child: ListView(

          children: [

            DrawerHeader(
              padding: EdgeInsets.all(0) ,
              //child: Text('Muzahid')
              child: UserAccountsDrawerHeader(

                accountName: Text('Muzahidul Hassan', style: TextStyle(color:Colors.white)),
                accountEmail: Text('alexutshob@gmail.com', style: TextStyle(color: Colors.white)),
                currentAccountPicture: Image.network('https://static.vecteezy.com/system/resources/thumbnails/047/493/988/small_2x/hairy-fluffy-cat-playing-png.png'),
                decoration: BoxDecoration(color: Colors.green),
                onDetailsPressed: () { mySnackBar( 'click me', context ); }

              )

            ),
            ListTile(

                leading: Icon(Icons.home),
                title: Text('Home'),
                onTap: () { mySnackBar( 'Hello Homie', context ); }

            ),

            ListTile(

                leading: Icon(Icons.contact_phone_outlined),
                title: Text('Contact'),
                onTap: () { mySnackBar( 'Hello Homie', context ); }

            ),
            ListTile(

                leading: Icon(Icons.person_add_alt),
                title: Text('Profile'),
                onTap: () { mySnackBar( 'Hello Homie', context ); }

            ),
            ListTile(

                leading: Icon(Icons.message_outlined),
                title: Text('Email'),
                onTap: () { mySnackBar( 'Hello Homie', context ); }

            ),
            ListTile(

                leading: Icon(Icons.call),
                title: Text('Phone'),
                onTap: () { mySnackBar( 'Hello Homie', context ); }

            ),

          ]

        )

      ),

      endDrawer: Drawer(

          child: ListView(

              children: [

                DrawerHeader(
                    padding: EdgeInsets.all(0) ,
                    //child: Text('Muzahid')
                    child: UserAccountsDrawerHeader(

                        accountName: Text('Muzahidul Hassan', style: TextStyle(color:Colors.white)),
                        accountEmail: Text('alexutshob@gmail.com', style: TextStyle(color: Colors.white)),
                        currentAccountPicture: CircleAvatar(

                              child: Image.network('https://static.vecteezy.com/system/resources/thumbnails/047/493/988/small_2x/hairy-fluffy-cat-playing-png.png'),

                        ),
                        decoration: BoxDecoration(color: Colors.lightBlueAccent),
                        onDetailsPressed: () { mySnackBar( 'click me', context ); }

                    )

                ),
                ListTile(

                    leading: Icon(Icons.home),
                    title: Text('Home'),
                    onTap: () { mySnackBar( 'Hello Homie', context ); }

                ),

                ListTile(

                    leading: Icon(Icons.contact_phone_outlined),
                    title: Text('Contact'),
                    onTap: () { mySnackBar( 'Hello Homie', context ); }

                ),
                ListTile(

                    leading: Icon(Icons.person_add_alt),
                    title: Text('Profile'),
                    onTap: () { mySnackBar( 'Hello Homie', context ); }

                ),
                ListTile(

                    leading: Icon(Icons.message_outlined),
                    title: Text('Email'),
                    onTap: () { mySnackBar( 'Hello Homie', context ); }

                ),
                ListTile(

                    leading: Icon(Icons.call),
                    title: Text('Phone'),
                    onTap: () { mySnackBar( 'Hello Homie', context ); }

                ),

              ]

          )

      ),

        body: GridView.builder(

            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(

              crossAxisCount: 2,
              crossAxisSpacing: 3,
              childAspectRatio: 1.5

            ),

            itemCount: myImgList1.length,
            itemBuilder: (context,index) {

              return GestureDetector(

                  onTap: () {mySnackBar( myImgList1[index]['title'], context ); } ,

                  child: Container(

                      margin: EdgeInsets.all(5),
                      width: double.infinity ,
                      height: 300,
                      child: Image.network(myImgList1[index]['img']!, fit: BoxFit.fill)

                  )

              );

            }

        )

    );


      ////////////
      */


      /*

      //to create a listview of lists of items in a single activity page....

       body: ListView.builder(

        itemCount: myImgList1.length,
        itemBuilder: (context,index) {

          return GestureDetector(

            onTap: () {mySnackBar( myImgList1[index]['title'], context ); } ,

              child: Container(

               margin: EdgeInsets.all(10),
               width: double.infinity ,
               height: 200,
               child: Image.network(myImgList1[index]['img']!, fit: BoxFit.fill)

            )

          );

        }

        )


       */  //done

      /*


      // to create a form...


      body: Column(

        mainAxisAlignment: MainAxisAlignment.start,
        children: [

          Padding(
              padding: EdgeInsets.all(20),
              child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'First Name'
                  )
              ),
          ),

          Padding(
            padding: EdgeInsets.all(20),
            child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Last Name'
                )
            ),
          ),

          Padding(
            padding: EdgeInsets.all(20),
            child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email Address'
                )
            ),
          ),

          Padding(
            padding: EdgeInsets.all(10),
            child: ElevatedButton(onPressed: () {}, child: Text('Submit'), style: bttnStyle2 )
          )

        ]

      )

      */   //app feature 2...


      /*

      //to create buttons....(plus alert dialog)....

      body: Row(

          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [

            TextButton( onPressed: (){ mySnackBar( 'Its Txtbuttn', context ); }, child: Text('text'), style: bttnStyle ),
            ElevatedButton( onPressed: (){ myAlertDialog(context); } , child: Text('Elevated'), style: bttnStyle),
            OutlinedButton( onPressed: (){ mySnackBar( 'Outclassed', context );}, child: Text('Outlined'), style: bttnStyle1),

          ]

      ),

      */   //app feature 3...

      /*

      // to create containers (row-wise)......

      body: Row(

        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [

          Container( height: 100, width: 100, child: Text('Hey! How are you?')),
          Container( height: 100, width: 100, child: Text('Hey! How are you? ')),
          Container( height: 100, width: 100, child: Text('Hey! How are you? ')),

       ]

      ),


       */   //done

      /*

                        // to create containers ( column-wise ).....

      body: Column(

          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [

            Container( height: 100, width: 100, child: Text('Hey! How are you? ')),
            Container( height: 100, width: 100, child: Text('Hey! How are you?')),
            Container( height: 100, width: 100, child: Text('Hey! How are you?')),

          ]

      ),


       */   //done



      /*

                // to create and decorate containers.........

      body: Container(

        //alignment: Alignment.center,
        height: 300,
        width: 350,
        margin: EdgeInsets.fromLTRB(100, 150, 80, 50),
        padding: EdgeInsets.all(70),
        decoration: BoxDecoration(
          color: Colors.pink,
          border: Border.all(color: Colors.black , width: 5)
        ),
        alignment: Alignment.center, //alignment of the child
        child: Text('Hello there smart people'),

      )


       */  //soon to be... done
      
      
      /*

                // to add a text or an image in the center of the body........

      body: Center(

        //child: Text('Hello'),
        child: Image.network('https://static.vecteezy.'
               'com/system/resources/thumbnails/047/493/988/small_2x/'
               'hairy-fluffy-cat-playing-png.png')

      )
      //backgroundColor: Colors.cyan,

     */  //done 2 (af)
      



    //Inside the Scaffold method, we have to include all the elements or widgets that we want to
    // see in a activity page






  }  //widget build


}  //home activity


// Pass via Navigation is only possible with activity pages, not with tab event pages/fragments.
// that means we can't navigate to one activity page to a tabular event page/fragment.
// But we can add buttons to tabular event pages/fragments, that can navigate to other activity pages.
// But we can not navigate from an activity page to a tabular event page/fragment.
// that's why we have created 3 activity pages below to demonstrate passing via navigation.



class Settings2 extends StatelessWidget {

  String msg;

   Settings2(

       this.msg,

       {super.key}

       );

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: Text(msg)
      ),

      body: Center(

        child: ElevatedButton( onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>Email2('From Settings2 to Email2')));
        }, child: Text('Go to Email2!') ),


      )

    );

  }

}


class Email2 extends StatelessWidget {

 final String msg;

   Email2(

      this.msg,

      {super.key}


      );


  @override
  Widget build(BuildContext context) {

    return Scaffold(

        appBar: AppBar(
            title: Text(msg)
        ),

        body: Center(

          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,

              children: [

                /*

                Padding(padding: EdgeInsets.all(60),


                child:

                  ElevatedButton( onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Settings2('From Email2 to Settings2')));
                  }, child: Text('Go to Settings2!') ),

                ),

                */

                Padding( padding: EdgeInsets.all(60)),

                ElevatedButton( onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Settings2('From Email2 to Settings2')));
                }, child: Text('Go to Settings2!') ),

                Padding(padding: EdgeInsets.all(80)),

                ElevatedButton( onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Home2('From Email2 to Home2')));
                }, child: Text('Go to Home2!') ),

              ]

          )
        )
    );

  }

}

class Home2 extends StatelessWidget {

  String msg;

   Home2(

       this.msg,

      {super.key}

      );


  @override
  Widget build(BuildContext context) {

    var scrnHeight = MediaQuery.of(context).size.height;
    var scrnWidth = MediaQuery.of(context).size.width;
    var scrnOrientation = MediaQuery.of(context).orientation;

    // By using Media query, we can get the screen size information (width, height) and orientation (portrait/landscape)

    return Scaffold(

        appBar: AppBar(
            title: Text(msg)
        ),

        body: Center(

          child: Column(

            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Text('The screen height is = $scrnHeight'),
              Text('The Screen width is = $scrnWidth'),
              Text(' Orientation is = $scrnOrientation'),

            ]

          )

        )



        // Expanded (Row wise)....

       /*

        // Expanded means dividing the screen into an equal portions of containers or into a specific ratio/proportion of containers, without even mentioning the sizes.
        // No matter how many containers we use, 'Expanded' widget will fit any number of containers into a single screen, with equal or specific proportions.

        body: Row(

        mainAxisAlignment: MainAxisAlignment.start,
        children: [

          Expanded(

              flex: 1,
              child: Container(color: Colors.lightGreenAccent)

          ),

          Expanded(

              flex: 1,
              child: Container(color: Colors.purpleAccent)

          ),

          Expanded(

              flex: 1,
              child: Container(color: Colors.deepOrange)

          ),

          Expanded(

              flex: 1,
              child: Container(color: Colors.blueAccent)

          ),

        ]

    )

        */   //app feature 4... done

        // Expanded (Column Wise)....

        /*

        body: Column(

          mainAxisAlignment: MainAxisAlignment.start,
          children: [

            Expanded(

              flex: 1,
              child: Container(color: Colors.lightGreenAccent)

            ),

            Expanded(

                flex: 2,
                child: Container(color: Colors.purpleAccent)

            ),

            Expanded(

                flex: 2,
                child: Container(color: Colors.deepOrange)

            ),

            Expanded(

                flex: 1,
                child: Container(color: Colors.blueAccent)

            ),

          ]

        )

        */   //app feature 5... done

        // Single Child Scroll View- Row wise (Horizontal Scroll)....

        /*

        body: SingleChildScrollView(

            scrollDirection: Axis.horizontal,
            child: Row(

                mainAxisAlignment: MainAxisAlignment.start,
                children: [

                  Container( width: 400, height: 300, color: Colors.deepOrangeAccent),
                  Container( width: 400, height: 300, color: Colors.lightBlue),
                  Container( width: 400, height: 300, color: Colors.purpleAccent),
                  Container( width: 400, height: 300, color: Colors.teal),
                  Container( width: 400, height: 300, color: Colors.brown),
                  Container( width: 400, height: 300, color: Colors.green),
                  Container( width: 400, height: 300, color: Colors.lightGreenAccent),

                ]

            )

        )

        */   //app feature 6... done

        /*

        // Single Child Scroll View- Column wise (Vertical Scroll)....

        body: SingleChildScrollView(

          scrollDirection: Axis.vertical,
          child: Column(

            mainAxisAlignment: MainAxisAlignment.start,
            children: [

              Container( width: 400, height: 300, color: Colors.deepOrangeAccent),
              Container( width: 400, height: 300, color: Colors.lightBlue),
              Container( width: 400, height: 300, color: Colors.purpleAccent),
              Container( width: 400, height: 300, color: Colors.teal),
              Container( width: 400, height: 300, color: Colors.brown),
              Container( width: 400, height: 300, color: Colors.green),
              Container( width: 400, height: 300, color: Colors.lightGreenAccent),

            ]

          )


        )

        */   //app feature 7... done

       /*

        //Example of Layout Builder according to display sizes (desktop, laptop, mobile).....

        body: LayoutBuilder(

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

          )

        */   //done


      /*

      //example of Fractionally Sized Box

        body: Center(

          child: FractionallySizedBox(

            widthFactor: 0.3,
            heightFactor: 0.8,
            child: Container(

              color: Colors.purpleAccent,

            )

          )


        )


        */   //done 2


        /*


        // example of Aspect Ratio.....

        body: Container(

          width: double.infinity,
          height: 300,
          color: Colors.redAccent,
          alignment: Alignment.center,
          child: AspectRatio(

            aspectRatio: 16/9,
            child: Container(
              color: Colors.lightBlueAccent,
            )

          )

        )

       */ //done 2


        /*


         // example of using an Icon


         body: Center(

          child: Icon(Icons.camera_alt, size: 250, color: Colors.pink)

              // We can only use 'Icon' class in activity pages, not in tab event pages/fragments
              // or we can say, we can use this class inside 'body', not 'containers'

          // child: Text('Welcome Home')


          /*

          child: ElevatedButton( onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Email2()));
          }, child: Text('Go to Email2!') ),

          */

        )

        */  // done 2

    );

  }

}

//creating a page to practise media query using a separate style file....and other practices are also there...

class prac1 extends StatelessWidget{
  const prac1({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(

        title: (Text('Practice 1')),

      ),

        // Example of Flutter Bootstrap instead of Responsive Grid....

        body: SingleChildScrollView(

          scrollDirection: Axis.vertical,
          child: BootstrapContainer(

            fluid: true,  // Fluid = true, means less padding on both sides, false means more padding on both sides
            children:[

              BootstrapRow(

                children: [

                  BootstrapCol(

                      sizes: 'col-12 col-sm-6 col-md-4 col-lg-3 col-xl-2' ,
                      child: Container(height: 100, color: Colors.blue)

                  ),
                  BootstrapCol(
                      sizes: 'col-12 col-sm-6 col-md-4 col-lg-3 col-xl-2' ,
                      child: Container(height: 100, color: Colors.amber)

                  ),
                  BootstrapCol(
                      sizes: 'col-12 col-sm-6 col-md-4 col-lg-3 col-xl-2' ,
                      child: Container(height: 100, color: Colors.brown)

                  ),
                  BootstrapCol(
                      sizes: 'col-12 col-sm-6 col-md-4 col-lg-3 col-xl-2' ,
                      child: Container(height: 100, color: Colors.lightGreenAccent)

                  ),
                  BootstrapCol(
                      sizes: 'col-12 col-sm-6 col-md-4 col-lg-3 col-xl-2' ,
                      child: Container(height: 100, color: Colors.deepOrange)

                  ),
                  BootstrapCol(
                      sizes: 'col-12 col-sm-6 col-md-4 col-lg-3 col-xl-2' ,
                      child: Container(height: 100, color: Colors.pink)

                  ),
                  BootstrapCol(
                      sizes: 'col-12 col-sm-6 col-md-4 col-lg-3 col-xl-2' ,
                      child: Container(height: 100, color: Colors.purple)

                  ),
                  BootstrapCol(
                      sizes: 'col-12 col-sm-6 col-md-4 col-lg-3 col-xl-2' ,
                      child: Container(height: 100, color: Colors.teal)

                  ),
                  BootstrapCol(
                      sizes: 'col-12 col-sm-6 col-md-4 col-lg-3 col-xl-2' ,
                      child: Container(height: 100, color: Colors.amberAccent)

                  ),
                  BootstrapCol(
                      sizes: 'col-12 col-sm-6 col-md-4 col-lg-3 col-xl-2' ,
                      child: Container(height: 100, color: Colors.purpleAccent)

                  ),
                  BootstrapCol(
                      sizes: 'col-12 col-sm-6 col-md-4 col-lg-3 col-xl-2' ,
                      child: Container(height: 100, color: Colors.lightGreen)

                  ),
                  BootstrapCol(
                      sizes: 'col-12 col-sm-6 col-md-4 col-lg-3 col-xl-2' ,
                      child: Container(height: 100, color: Colors.blueGrey)

                  ),

                ]

              )

            ]

          )

        )


        //Example of Responsive Grid....

        /*

        body: SingleChildScrollView(
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
        )


        */    //done


        // Responsive way of using Media Query by importing a separate style file...

        /*


        body: Column(

        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Text('Hello', style: headLine1(context)),

        ]

      )


        */


    );

  }

}


