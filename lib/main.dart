import 'package:flutter/material.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:widgets/Myapp.dart';
import 'package:widgets/bloc/card_bloc_bloc.dart';
//import 'package:widgets/pafeone.dart';

void main() {
  runApp(MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CardBloc(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Myapp(),
      ),
    );
  }
}
