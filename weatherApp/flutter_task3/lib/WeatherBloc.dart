

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_task3/WeatherGet.dart';
import 'package:flutter_task3/WeatherModel.dart';

class WeatherEvent extends Equatable{
  @override
  // TODO: implement props
  List<Object> get props => [];

}



class FetchWeather extends WeatherEvent{
  final _city;

  FetchWeather(this._city);


  @override
  // TODO: implement props
  List<Object> get props => [_city];
}

class ResetWeather extends WeatherEvent{

}

class WeatherState extends Equatable{
  @override
  // TODO: implement props
  List<Object> get props => [];

}


class WeatherIsNotSearched extends WeatherState{

}

class WeatherIsLoading extends WeatherState{

}

class WeatherIsLoaded extends WeatherState{
  final _weather;

  WeatherIsLoaded(this._weather);

  WeatherModel get getWeather => _weather;

  @override
  // TODO: implement props
  List<Object> get props => [_weather];
}

class WeatherIsNotLoaded extends WeatherState{

}

class WeatherBloc extends Bloc<WeatherEvent, WeatherState>{

  WeatherGet weatherRepo;


  WeatherBloc(this.weatherRepo) : super(WeatherIsNotSearched()){


    Stream<WeatherState> _onFetchWeather(FetchWeather event ,Emitter<WeatherState> emit  ) async*{
      emit(WeatherIsLoading());
      try{
        WeatherModel weather = await weatherRepo.getWeather(event._city);
        yield WeatherIsLoaded(weather);
      }catch(e){
        print('e');
        yield WeatherIsNotLoaded();
      }
    }
    on<FetchWeather>(_onFetchWeather);

    on<ResetWeather>((event, emit) => emit(WeatherIsNotSearched()));


  }

  @override
  // TODO: implement initialState
  WeatherState get initialState => WeatherIsNotSearched();




  }




