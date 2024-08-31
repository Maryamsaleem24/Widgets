import 'package:bloc/bloc.dart';

part 'card_bloc_event.dart';
part 'card_bloc_state.dart';

class CardBloc extends Bloc<CardBlocEvent, CardBlocState> {
  CardBloc() : super(CardBlocInitial()) {
    on<CardBlocEvent>((event, emit) {

    });
  }
}
