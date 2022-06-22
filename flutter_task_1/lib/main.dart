import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Home(),
));

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Column(
        children: [
          Image.asset('assets/a1sx2_custom_DSC01603.jpg'),
          SizedBox(height: 20.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Oeschinen Lake Campground',
                      style: TextStyle(
                        fontSize: 20.0,
                        //letterSpacing: 1.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      )),
                  SizedBox(height: 15.0,),
                  Text('Kandersteg, Switzerland',
                      style: TextStyle(
                        color: Colors.grey[700],
                      )),

                ],
              ),

              Row(
                children: [
                  Icon(Icons.star,
                      color: Colors.orange),
                  Text('43')
                ],
              ),

            ],
          ),
          SizedBox(height: 15.0),
          Row(

            children: [

            ],
          ),

          SizedBox(height: 25.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            Column(
                children: [

                  Icon(Icons.call,
                  color: Colors.blueAccent),
                  SizedBox(height: 10.0),
                  Text('CALL',
                  style: TextStyle(
                    color: Colors.blueAccent,
                  )),
                ],
            ),
             Column(
               children: [
                 Icon(Icons.navigation,
                 color: Colors.blueAccent,),
                 SizedBox(height: 10,),
                 Text('ROUTE',
                 style: TextStyle(
                   color: Colors.blueAccent
                 ),)
               ],
             ),
             Column(


               children: [
                 Icon(Icons.share,
                 color: Colors.blueAccent,),
                 SizedBox(height: 10,),
                 Text('SHARE',
                 style: TextStyle(
                   color: Colors.blueAccent
                 ),)
               ],
             ),
            ],
          ),
          SizedBox(height: 25.0),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Text('Lake Oeschinen lies at the foot of the Bluemlisalp in the Bernese Alps. Situated 1,578 meters above sea level,it is one of the larger Alpine Lakes. A gandola ride from Kandersteg, followed by a half-hour walk through pastures and pine forest, leads you to the lake, which warms to 20 degrees celsius in the summer. Activities enjoyed here include rowing, and riding the summer toboggan run.',
         ),
          ),

        ],
      ),
    );
  }
}
