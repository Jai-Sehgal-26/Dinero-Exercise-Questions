import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 40,
                    width: 40,

                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Colors.blueGrey[50],
                    ),

                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Colors.grey[100],
                    ),
                    height: 40,
                    width: 223,

                    child: Row(
                      children: [
                        SizedBox(width: 8,),
                        Icon(Icons.search,
                          color: Colors.grey[350],
                        ),
                        SizedBox(width: 10,),
                        Text('Search here',
                        style: TextStyle(
                          color: Colors.grey[400],
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                        ),),
                      ],
                    ),

                  ),
                  Container(
                    height: 40,
                    width: 40,
                    child: Image.asset('assets/profile.png'),


                  ),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      color: Colors.blue[700],
                    ),
                    height: 185,
                    width: 158,

                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 23,horizontal: 18),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(Icons.account_balance_wallet_rounded,
                          color: Colors.white,),
                          SizedBox(height: 20,),
                          Text('MAIN BALANCE',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: Colors.grey,
                            fontFamily: 'Inter',
                          ),),
                          SizedBox(height: 10,),
                          Text('\$4,523',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 32,
                            color: Colors.white,
                            fontFamily: 'Inter',
                          ),),
                          SizedBox(height: 8,),
                          Container(
                            height: 23,
                            width: 44,
                            color: Colors.blue[200],
                            child: Center(
                              child: Text('+2.3%',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: Colors.white,
                                fontFamily: 'Inter',
                              ),),
                            ),
                          ),

                        ],
                      ),
                    ),


                  ),
                  Container(
                    height: 185,
                    width: 158,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      color: Colors.deepOrange[50],
                    ),

                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 23,horizontal: 18),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(Icons.account_balance_wallet_rounded,
                            color: Colors.brown,),
                          SizedBox(height: 20,),
                          Text('MAIN CARD',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: Colors.grey,
                              fontFamily: 'Inter',
                            ),),
                          SizedBox(height: 10,),
                          Text('**5677',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 32,
                              color: Colors.brown,
                              fontFamily: 'Inter',
                            ),),
                          SizedBox(height: 8,),
                          Image.asset('assets/mastercard.jpg',
                          height: 23,),


                        ],
                      ),
                    ),

                  ),
                ],
              ),
              SizedBox(height: 13,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Expenditure breakdown',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: Colors.black,
                    fontFamily: 'Inter',
                  ),),
                  Text('+\$23,400',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: Colors.black,
                    fontFamily: 'Inter',
                  ),),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('This week',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Colors.black,
                      fontFamily: 'Inter',
                  ),),
                ],
              ),
              SizedBox(height: 5,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('+2.5%',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: Colors.green,
                      fontFamily: 'Inter',
                    ),
                  ),
                ],
              ),
              Image.asset('assets/graph.jpg',
                height: 132,
                width: 450,
              ),
              SizedBox(height: 20,),
              Container(
                height: 89,
                width: 335,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Colors.blue[50],
                ),

                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset('assets/piggybank.jpg'),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text('Create quick saving goals',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: Colors.black,
                            fontFamily: 'Inter',
                          ),),
                          Text('with friends and colleagues',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                              color: Colors.black,
                              fontFamily: 'Inter',
                            ),),
                          SizedBox(height: 10,),
                          Text('save now',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: Colors.blue[400],
                            fontFamily: 'Inter',
                            decoration: TextDecoration.underline,
                          ),)
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),




      ),
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.white,
        elevation: 0,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: <BottomNavigationBarItem> [
          BottomNavigationBarItem(
            icon: IconButton(onPressed: () {Navigator.pushNamed(context, '/home');},
              icon: Icon(Icons.home_outlined),
              color: Colors.black,),
            label: 'home',
          ),
          BottomNavigationBarItem(
            icon: IconButton(onPressed: () {Navigator.pushNamed(context, '/page_2');},
              icon: Icon(Icons.account_balance_wallet_outlined),
              color: Colors.black,),
            label: 'wallet',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.pie_chart_outline_rounded,
            color: Colors.black,),
              label: 'graph'
          ),
          BottomNavigationBarItem(icon: Icon(Icons.widgets_outlined,
            color: Colors.black,),
              label: 'categories'
          )
        ],
      ),
    );;
  }
}



