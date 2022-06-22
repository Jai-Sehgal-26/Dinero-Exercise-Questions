import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:hexcolor/hexcolor.dart';

class Page_2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(









      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 45,horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Saving plans',
              style: TextStyle(
                color: HexColor('#06244B'),
                fontWeight: FontWeight.w700,
                fontSize: 24,
                fontFamily: 'Inter',

              ),),
              SizedBox(height: 7,),
              Text('Create new plan and save towards that big goal',
              style: TextStyle(
                color: HexColor('#666666'),
                fontWeight: FontWeight.w400,
                fontSize: 14,
                fontFamily: 'Inter',
              ),),
              SizedBox(height: 35,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                    Container(
                      height: 130 ,
                      width: 160 ,
                      color: HexColor('#E8F1FD'),
                      child: Padding(
                        padding: const EdgeInsets.all(14.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(Icons.account_balance_wallet_rounded,
                              color: HexColor('#2F80ED'),
                            ),
                            SizedBox(height: 20,),
                            Text('Tesla goals',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              fontFamily: 'Inter',
                            ),),
                            Text('\$4000/12000',
                            style: TextStyle(
                              color: Colors.grey[400],
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              fontFamily: 'Inter',
                            ),),
                            SizedBox(height: 15,),
                            LinearPercentIndicator(
                              width: 100,
                              lineHeight: 8.0,
                              percent: 0.33,
                              progressColor: HexColor('#2F80ED'),
                            ),


                          ],

                        ),
                      ),
                    ),
                  Container(
                    height: 130 ,
                    width: 160 ,
                    color: HexColor('#E8F1FD'),
                    child: Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(Icons.account_balance_wallet_rounded,
                          color: HexColor('#2F80ED'),
                          ),
                          SizedBox(height: 20,),
                          Text('MacBook 202x',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              fontFamily: 'Inter',
                            ),),
                          Text('\$400/1200',
                            style: TextStyle(
                              color: Colors.grey[400],
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              fontFamily: 'Inter',
                            ),),
                          SizedBox(height: 15,),
                          LinearPercentIndicator(
                            width: 100,
                            lineHeight: 8.0,
                            percent: 0.33,
                            progressColor: HexColor('#2F80ED'),
                          ),



                        ],

                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 130 ,
                    width: 160 ,
                    color: HexColor('#E8F1FD'),
                    child: Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(Icons.account_balance_wallet_rounded,
                            color: HexColor('#2F80ED'),
                          ),
                          SizedBox(height: 12,),
                          Text('Avoid see finish for village',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              fontFamily: 'Inter',
                            ),),
                          Text('\$1000/2000',
                            style: TextStyle(
                              color: Colors.grey[400],
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              fontFamily: 'Inter',
                            ),),
                          SizedBox(height: 5.0,),
                          LinearPercentIndicator(
                            width: 100,
                            lineHeight: 8.0,
                            percent: 0.5,
                            progressColor: HexColor('#2F80ED'),
                          ),



                        ],

                      ),
                    ),
                  ),
                  Container(
                    height: 130 ,
                    width: 160 ,
                    color: HexColor('#E8F1FD'),
                    child: Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(Icons.account_balance_wallet_rounded,
                            color: HexColor('#2F80ED'),
                          ),
                          SizedBox(height: 20,),
                          Text('Maldives way',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              fontFamily: 'Inter',
                            ),),
                          Text('\$980/22000',
                            style: TextStyle(
                              color: Colors.grey[400],
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              fontFamily: 'Inter',
                            ),),
                          SizedBox(height: 15,),
                          LinearPercentIndicator(
                            width: 100,
                            lineHeight: 8.0,
                            percent: 0.33,
                            progressColor: HexColor('#2F80ED'),
                          ),



                        ],

                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 130 ,
                    width: 160 ,
                    color: HexColor('#E8F1FD'),
                    child: Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(Icons.account_balance_wallet_rounded,
                            color: HexColor('#2F80ED'),
                          ),
                          SizedBox(height: 20,),
                          Text('iphone X',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              fontFamily: 'Inter',
                            ),),
                          Text('\$800/-',
                            style: TextStyle(
                              color: Colors.grey[400],
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              fontFamily: 'Inter',
                            ),),
                          SizedBox(height: 15,),
                          LinearPercentIndicator(
                            width: 100,
                            lineHeight: 8.0,
                            percent: 0.1,
                            progressColor: HexColor('#2F80ED'),
                          ),



                        ],

                      ),
                    ),
                  ),
                  Container(
                    height: 130 ,
                    width: 160 ,
                    color: HexColor('#E8F1FD'),
                    child: Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(Icons.account_balance_wallet_rounded,
                            color: HexColor('#2F80ED'),
                          ),
                          SizedBox(height: 20,),
                          Text('God when',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              fontFamily: 'Inter',
                            ),),
                          Text('\$3200/-',
                            style: TextStyle(
                              color: Colors.grey[400],
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              fontFamily: 'Inter',
                            ),),
                          SizedBox(height: 15,),
                          LinearPercentIndicator(
                            width: 100,
                            lineHeight: 8.0,
                            percent: 0.1,
                            progressColor: HexColor('#2F80ED'),
                          ),



                        ],

                      ),
                    ),
                  ),
                ],
              ),

            ],
          ),
        ),
      ),






      bottomNavigationBar: BottomNavigationBar(
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
    );
  }
}
