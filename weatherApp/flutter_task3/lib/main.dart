



import 'package:flutter/material.dart';
import 'package:flutter_task3/WeatherBloc.dart';
import 'package:http/http.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_task3/WeatherModel.dart';
import 'package:flutter_task3/WeatherGet.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          title: Text('Weather App'),
        ),


        body: BlocProvider(
          create: (BuildContext context) => WeatherBloc(WeatherGet()),


          child: SearchPage(),
        ),

      ),
    );
  }
}


class SearchPage extends StatelessWidget {

  final weatherBloc = BlocProvider.of<WeatherBloc>;
  var cityController = TextEditingController();
  


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [

        BlocBuilder<WeatherBloc, WeatherState>(
            builder: (context, state){
              if(state is WeatherIsNotSearched)
                return Center(
                  child: Container(
                      padding: EdgeInsets.only(left: 32, right: 32,),
                      child: Column(
                        children: <Widget>[
                          Text("Search Weather", style: TextStyle(fontSize: 40, fontWeight: FontWeight.w500, color: Colors.white70),),
                          SizedBox(height: 24,),
                          TextFormField(
                            controller: cityController,

                            decoration: InputDecoration(

                              prefixIcon: Icon(Icons.search, color: Colors.white70,),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(10)),
                                  borderSide: BorderSide(
                                      color: Colors.white70,
                                      style: BorderStyle.solid
                                  )
                              ),

                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(10)),
                                  borderSide: BorderSide(
                                      color: Colors.blue,
                                      style: BorderStyle.solid
                                  )
                              ),




                              hintText: "City Name",
                              hintStyle: TextStyle(color: Colors.white70),

                            ),
                            style: TextStyle(color: Colors.white70),

                          ),
                          SizedBox(height: 20,),
                          Container(
                            width: double.infinity,
                            height: 50,
                            child: RaisedButton(
                              onPressed: () {
                                weatherBloc(context).add(FetchWeather(cityController.text));
                              },
                              child: Text("Search", style: TextStyle(color: Colors.white70, fontSize: 16),),
                              color: Colors.lightBlue,

                            ),
                          ),


                        ],
                      )
                  ),
                );
              else if(state is WeatherIsLoading)
                return Center(child : CircularProgressIndicator());
              else if(state is WeatherIsLoaded)
                return ShowWeather(state.getWeather,cityController.text);
              else
                return Text("Error",style: TextStyle(color: Colors.white),);

            })
      ],
    );
  }
}
class ShowWeather extends StatelessWidget {
  WeatherModel weather;
  final city;

  ShowWeather(this.weather, this.city);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(right: 32, left: 32, top: 10),
        child: Column(
          children: <Widget>[
            Text(city,style: TextStyle(color: Colors.white70, fontSize: 30, fontWeight: FontWeight.bold),),
            SizedBox(height: 10,),

            Text(weather.getTemp.round().toString()+"C",style: TextStyle(color: Colors.white70, fontSize: 50),),
            Text("Temperature",style: TextStyle(color: Colors.white70, fontSize: 14),),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Text(weather.getMinTemp.round().toString()+"C",style: TextStyle(color: Colors.white70, fontSize: 30),),
                    Text("Min Temperature",style: TextStyle(color: Colors.white70, fontSize: 14),),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Text(weather.getMaxTemp.round().toString()+"C",style: TextStyle(color: Colors.white70, fontSize: 30),),
                    Text("Max Temperature",style: TextStyle(color: Colors.white70, fontSize: 14),),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),

            Container(
              width: double.infinity,
              height: 50,
              child: FlatButton(
                shape: new RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                onPressed: (){
                  BlocProvider.of<WeatherBloc>(context).add(ResetWeather());
                },
                color: Colors.lightBlue,
                child: Text("Search", style: TextStyle(color: Colors.white70, fontSize: 16),),

              ),
            )
          ],
        )
    );
  }
}