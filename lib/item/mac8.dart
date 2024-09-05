import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:widgets/bloc/card_bloc_bloc.dart';

void main (){
  runApp(mac8());
}

class mac8 extends StatefulWidget {
  const mac8({super.key});

  @override
  State<mac8> createState() => _mac8State();
}

class _mac8State extends State<mac8> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.red, title: Text('My App'), 
      elevation: 0,
      actions: [
        BlocBuilder<CardBloc, CardBlocState>(
          builder: (context, state) {
            if (state is CardblocValueChangedState) {
              return Badge.count(
                count: BlocProvider.of<CardBloc>(context).counter,
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.shopping_cart),
                ),
              );
              //Text(state.counter.toString());
            } else {
              return SizedBox();
            }
          },
        ),
      ]),
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image(
            image:NetworkImage("data:image/jpeg;base64,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"),
            height: 200,
            fit: BoxFit.cover,
          ),
         // Text(""),
          Text(
            "MacBook Air 256  2لابتوب ماك بوك اير (15-انج \ام جيجا بايت  )",
            overflow: TextOverflow.clip,
maxLines: 3,
          ),
          Text("1,785,000"),
          ElevatedButton(
             style: ElevatedButton.styleFrom(
    backgroundColor: Colors.red, 
    foregroundColor: Colors.white, 
  ),
              onPressed: () {
                BlocProvider.of<CardBloc>(context).add(IncrementEvent());
                ScaffoldMessenger.of(context)
                    .showSnackBar(SnackBar(content: Text('Added to cart'),
                     backgroundColor: Colors.red,));
              },
              child: Text("Add to cart"))
        ],
      ),
    );
  }
}