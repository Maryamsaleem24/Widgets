//Card bloc 

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';


class CardBloc extends Bloc<CardBlocEvent, CardBlocState> {
  int counter=0;
  CardBloc() : super(CardBlocInitial()) {
    on<CardBlocEvent>((event, emit) {
      if (event is IncrementEvent){
        counter = counter +1;
        emit(CardblocValueChangedState(counter: counter));
      
      }
      
    });
  }
}

//event


sealed class CardBlocEvent {}

class IncrementEvent extends CardBlocEvent{}
//class ResetEvent extends CardBlocEvent{}


//state


sealed class CardBlocState {}

final class CardBlocInitial extends CardBlocState {}

class CardblocValueChangedState extends CardBlocState{
 
  final int counter;

  CardblocValueChangedState({
    required this.counter,
  });

}