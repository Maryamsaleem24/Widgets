import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:widgets/bloc/card_bloc_bloc.dart';
import 'package:badges/badges.dart' as badges;
import 'package:widgets/item/mac1.dart';
import 'package:widgets/item/mac10.dart';
import 'package:widgets/item/mac2.dart';
import 'package:widgets/item/mac3.dart';
import 'package:widgets/item/mac4.dart';
import 'package:widgets/item/mac5.dart';
import 'package:widgets/item/mac6.dart';
import 'package:widgets/item/mac7.dart';
import 'package:widgets/item/mac8.dart';
import 'package:widgets/item/mac9.dart';

// void main(){
//   runApp(MyApp());
// }
class Myapp extends StatefulWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  int selectedindex = 0;

  List<Widget> widgetpages = [
    PageOne(),
    pagetwo(),
  ];
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text('My App'),
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
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedindex,
          selectedItemColor: Colors.red,
          onTap: (index) {
            setState(() {
              selectedindex = index;
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.list), label: "List"),
            BottomNavigationBarItem(icon: Icon(Icons.grid_4x4), label: "Gride"),
          ]),
      body: widgetpages.elementAt(selectedindex),
    );
  }
}

class PageOne extends StatefulWidget {
  const PageOne({Key? key}) : super(key: key);

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          InkWell(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => mac1()));
            },
            child: Row(
              children: [
                IconButton(
                    onPressed: () {
                      BlocProvider.of<CardBloc>(context).add(IncrementEvent());
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Added to cart'),
                          backgroundColor: Colors.red,
                        ),
                      );
                    },
                    icon: Icon(Icons.favorite)),
                Expanded(
                  child: Column(
                    children: [
                      Text("MacBook Air 2لابتوب ماك بوك اير (15-انج \ام )"),
                      Text("2,040,000"),
                    ],
                  ),
                ),
                Image(
                  image: NetworkImage(),
                  alignment: Alignment.centerLeft,
                  width: 150,
                  height: 150,
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => mac2()));
            },
            child: Row(
              children: [
                IconButton(
                    onPressed: () {
                      BlocProvider.of<CardBloc>(context).add(IncrementEvent());
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Added to cart'),
                          backgroundColor: Colors.red,
                        ),
                      );
                    },
                    icon: Icon(Icons.favorite)),
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        "Mackbookلابتوب ماك بوك اير (15-انج\ام-2)512 جيجا بايت ",
                        overflow: TextOverflow.clip,
                        maxLines: 3,
                      ),
                      Text("2,040,000"),
                    ],
                  ),
                ),
                Image(
                  image: NetworkImage(),
                  alignment: Alignment.centerLeft,
                  width: 170,
                  height: 150,
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => mac3()));
            },
            child: Row(
              children: [
                IconButton(
                    onPressed: () {
                      BlocProvider.of<CardBloc>(context).add(IncrementEvent());
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Added to cart'),
                          backgroundColor: Colors.red,
                        ),
                      );
                    },
                    icon: Icon(Icons.favorite)),
                Expanded(
                  child: Column(
                    children: [
                      Text(
                          "MacBook Air 256   2لابتوب ماك بوك اير (15-انج \ام جيجا بايت  )"),
                      Text("1,780,000"),
                    ],
                  ),
                ),
                Image(
                  image: NetworkImage(),
                  alignment: Alignment.centerLeft,
                  width: 150,
                  height: 150,
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => mac4()));
            },
            child: Row(
              children: [
                IconButton(
                    onPressed: () {
                      BlocProvider.of<CardBloc>(context).add(IncrementEvent());
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Added to cart'),
                          backgroundColor: Colors.red,
                        ),
                      );
                    },
                    icon: Icon(Icons.favorite)),
                Expanded(
                  child: Column(
                    children: [
                      Text(
                          "MacBook Air 512  2لابتوب ماك بوك اير (15-انج \ام جيجا بايت  )"),
                      Text("2,040,000"),
                    ],
                  ),
                ),
                Image(
                  image: NetworkImage(),
                  alignment: Alignment.centerLeft,
                  width: 150,
                  height: 150,
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => mac5()));
            },
            child: Row(
              children: [
                IconButton(
                    onPressed: () {
                      BlocProvider.of<CardBloc>(context).add(IncrementEvent());
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Added to cart'),
                          backgroundColor: Colors.red,
                        ),
                      );
                    },
                    icon: Icon(Icons.favorite)),
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        "MacBook Air 256  2لابتوب ماك بوك اير (15-انج \ام جيجا بايت  )",
                        overflow: TextOverflow.clip,
                        maxLines: 3,
                      ),
                      Text("1,785,001"),
                    ],
                  ),
                ),
                Image(
                  image: NetworkImage(),
                  alignment: Alignment.centerLeft,
                  width: 150,
                  height: 150,
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => mac6()));
            },
            child: Row(
              children: [
                IconButton(
                    onPressed: () {
                      BlocProvider.of<CardBloc>(context).add(IncrementEvent());
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Added to cart'),
                          backgroundColor: Colors.red,
                        ),
                      );
                    },
                    icon: Icon(Icons.favorite)),
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        "MacBook Air 256  2لابتوب ماك بوك اير (15-انج \ام جيجا بايت  )",
                        overflow: TextOverflow.clip,
                        maxLines: 3,
                      ),
                      Text("1,785,001 "),
                    ],
                  ),
                ),
                Image(
                  image: NetworkImage(),
                  alignment: Alignment.centerLeft,
                  width: 150,
                  height: 150,
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => mac7()));
            },
            child: Row(
              children: [
                IconButton(
                    onPressed: () {
                      BlocProvider.of<CardBloc>(context).add(IncrementEvent());
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Added to cart'),
                          backgroundColor: Colors.red,
                        ),
                      );
                    },
                    icon: Icon(Icons.favorite)),
                Expanded(
                  child: Column(
                    children: [
                      Text(
                          "MacBook Air512  3لابتوب ماك بوك اير (15-انج \ام جيجا بايت  )"),
                      Text("2,235,000"),
                    ],
                  ),
                ),
                Image(
                  image: NetworkImage(),
                  alignment: Alignment.centerLeft,
                  width: 150,
                  height: 150,
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => mac8()));
            },
            child: Row(
              children: [
                IconButton(
                    onPressed: () {
                      BlocProvider.of<CardBloc>(context).add(IncrementEvent());
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Added to cart'),
                          backgroundColor: Colors.red,
                        ),
                      );
                    },
                    icon: Icon(Icons.favorite)),
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        "MacBook Air 256  2لابتوب ماك بوك اير (15-انج \ام جيجا بايت  )",
                        overflow: TextOverflow.clip,
                        maxLines: 3,
                      ),
                      Text("1,930,000"),
                    ],
                  ),
                ),
                Image(
                  image: NetworkImage(),
                  alignment: Alignment.centerLeft,
                  width: 150,
                  height: 150,
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => mac9()));
            },
            child: Row(
              children: [
                IconButton(
                    onPressed: () {
                      BlocProvider.of<CardBloc>(context).add(IncrementEvent());
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Added to cart'),
                          backgroundColor: Colors.red,
                        ),
                      );
                    },
                    icon: Icon(Icons.favorite)),
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        "MacBook Air 256  2لابتوب ماك بوك اير (15-انج \ام جيجا بايت  )",
                        overflow: TextOverflow.clip,
                        maxLines: 3,
                      ),
                      Text("1,785,001 "),
                    ],
                  ),
                ),
                Image(
                  image: NetworkImage(),
                  alignment: Alignment.centerLeft,
                  width: 150,
                  height: 150,
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => mac10()));
            },
            child: Row(
              children: [
                IconButton(
                    onPressed: () {
                      BlocProvider.of<CardBloc>(context).add(IncrementEvent());
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Added to cart'),
                          backgroundColor: Colors.red,
                        ),
                      );
                    },
                    icon: Icon(Icons.favorite)),
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        "MacBook Air 256   2لابتوب ماك بوك اير (15-انج \ام جيجا بايت  )",
                        overflow: TextOverflow.clip,
                        maxLines: 3,
                      ),
                      Text("1,930,000"),
                    ],
                  ),
                ),
                Image(
                  image: NetworkImage(),
                  alignment: Alignment.centerLeft,
                  width: 150,
                  height: 150,
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class pagetwo extends StatefulWidget {
  const pagetwo({Key? key}) : super(key: key);

  @override
  State<pagetwo> createState() => _pagetwoState();
}

class _pagetwoState extends State<pagetwo> {
  bool reverse = true;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(
                width: 250,
                height: 120,
                child: InkWell(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => mac1()));
                  },
                  child: Row(
                    children: [
                      IconButton(
                          onPressed: () {
                            BlocProvider.of<CardBloc>(context)
                                .add(IncrementEvent());
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text('Added to cart'),
                                backgroundColor: Colors.red,
                              ),
                            );
                          },
                          icon: Icon(Icons.favorite)),
                      Expanded(
                        child: const Column(
                          children: [
                            Text(
                              "MacBook Air 2لابتوب ماك بوك اير (15-انج \ام )",
                              overflow: TextOverflow.clip,
                              maxLines: 3,
                            ),
                            Text("2,040,000"),
                          ],
                        ),
                      ),
                      Image(
                        image: NetworkImage(),
                        alignment: Alignment.centerLeft,
                        width: 150,
                        height: 150,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              SizedBox(
                width: 250,
                height: 120,
                child: InkWell(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => mac2()));
                  },
                  child: Row(
                    children: [
                      IconButton(
                          onPressed: () {
                            BlocProvider.of<CardBloc>(context)
                                .add(IncrementEvent());
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text('Added to cart'),
                                backgroundColor: Colors.red,
                              ),
                            );
                          },
                          icon: Icon(Icons.favorite)),
                      Expanded(
                        child: Column(
                          children: [
                            Text(
                              "Mackbookلابتوب ماك بوك اير (15-انج\ام-2)512 جيجا بايت ",
                              overflow: TextOverflow.clip,
                              maxLines: 3,
                            ),
                            Text("2,040,000"),
                          ],
                        ),
                      ),
                      Image(
                        image: NetworkImage(),
                        alignment: Alignment.centerLeft,
                        width: 150,
                        height: 150,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              SizedBox(
                width: 250,
                height: 120,
                child: InkWell(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => mac3()));
                  },
                  child: Row(
                    children: [
                      IconButton(
                          onPressed: () {
                            BlocProvider.of<CardBloc>(context)
                                .add(IncrementEvent());
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text('Added to cart'),
                                backgroundColor: Colors.red,
                              ),
                            );
                          },
                          icon: Icon(Icons.favorite)),
                      Expanded(
                        child: Column(
                          children: [
                            Text(
                              "MacBook Air 256   2لابتوب ماك بوك اير (15-انج \ام جيجا بايت  )",
                              overflow: TextOverflow.clip,
                              maxLines: 3,
                            ),
                            Text("1,780,000"),
                          ],
                        ),
                      ),
                      Image(
                        image: NetworkImage(),
                        alignment: Alignment.centerLeft,
                        width: 150,
                        height: 150,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 250,
                height: 120,
                child: InkWell(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => mac4()));
                  },
                  child: Row(
                    children: [
                      IconButton(
                          onPressed: () {
                            BlocProvider.of<CardBloc>(context)
                                .add(IncrementEvent());
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text('Added to cart'),
                                backgroundColor: Colors.red,
                              ),
                            );
                          },
                          icon: Icon(Icons.favorite)),
                      Expanded(
                        child: Column(
                          children: [
                            Text(
                              "MacBook Air 512  2لابتوب ماك بوك اير (15-انج \ام جيجا بايت  )",
                              overflow: TextOverflow.clip,
                              maxLines: 3,
                            ),
                            Text("2,040,000"),
                          ],
                        ),
                      ),
                      Image(
                        image: NetworkImage(),
                        alignment: Alignment.centerLeft,
                        width: 150,
                        height: 150,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              SizedBox(
                width: 250,
                height: 120,
                child: InkWell(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => mac5()));
                  },
                  child: Row(
                    children: [
                      IconButton(
                          onPressed: () {
                            BlocProvider.of<CardBloc>(context)
                                .add(IncrementEvent());
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text('Added to cart'),
                                backgroundColor: Colors.red,
                              ),
                            );
                          },
                          icon: Icon(Icons.favorite)),
                      Expanded(
                        child: Column(
                          children: [
                            Text(
                              "MacBook Air 256  2لابتوب ماك بوك اير (15-انج \ام جيجا بايت  )",
                              overflow: TextOverflow.clip,
                              maxLines: 3,
                            ),
                            Text("1,785,001"),
                          ],
                        ),
                      ),
                      Image(
                        image: NetworkImage(),
                        alignment: Alignment.centerLeft,
                        width: 150,
                        height: 150,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 250,
                height: 120,
                child: InkWell(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => mac6()));
                  },
                  child: Row(
                    children: [
                      IconButton(
                          onPressed: () {
                            BlocProvider.of<CardBloc>(context)
                                .add(IncrementEvent());
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text('Added to cart'),
                                backgroundColor: Colors.red,
                              ),
                            );
                          },
                          icon: Icon(Icons.favorite)),
                      Expanded(
                        child: Column(
                          children: [
                            Text(
                              "MacBook Air 256  2لابتوب ماك بوك اير (15-انج \ام جيجا بايت  )",
                              overflow: TextOverflow.clip,
                              maxLines: 3,
                            ),
                            Text("1,785,001 "),
                          ],
                        ),
                      ),
                      Image(
                        image: NetworkImage(),
                        alignment: Alignment.centerLeft,
                        width: 150,
                        height: 150,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              SizedBox(
                width: 250,
                height: 120,
                child: InkWell(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => mac7()));
                  },
                  child: Row(
                    children: [
                      IconButton(
                          onPressed: () {
                            BlocProvider.of<CardBloc>(context)
                                .add(IncrementEvent());

                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text('Added to cart'),
                                backgroundColor: Colors.red,
                              ),
                            );
                          },
                          icon: Icon(Icons.favorite)),
                      Expanded(
                        child: Column(
                          children: [
                            Text(
                              "MacBook Air512  3لابتوب ماك بوك اير (15-انج \ام جيجا بايت  )",
                              overflow: TextOverflow.clip,
                              maxLines: 3,
                            ),
                            Text("2,235,000"),
                          ],
                        ),
                      ),
                      Image(
                        image: NetworkImage(),
                        alignment: Alignment.centerLeft,
                        width: 150,
                        height: 150,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 250,
                height: 120,
                child: InkWell(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => mac8()));
                  },
                  child: Row(
                    children: [
                      IconButton(
                          onPressed: () {
                            BlocProvider.of<CardBloc>(context)
                                .add(IncrementEvent());
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text('Added to cart'),
                                backgroundColor: Colors.red,
                              ),
                            );
                          },
                          icon: Icon(Icons.favorite)),
                      Expanded(
                        child: Column(
                          children: [
                            Text(
                              "MacBook Air 256  2لابتوب ماك بوك اير (15-انج \ام جيجا بايت  )",
                              overflow: TextOverflow.clip,
                              maxLines: 3,
                            ),
                            Text("1,785,000"),
                          ],
                        ),
                      ),
                      Image(
                        image: NetworkImage(),
                        alignment: Alignment.centerLeft,
                        width: 150,
                        height: 150,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              SizedBox(
                width: 250,
                height: 120,
                child: InkWell(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => mac9()));
                  },
                  child: Row(
                    children: [
                      IconButton(
                          onPressed: () {
                            BlocProvider.of<CardBloc>(context)
                                .add(IncrementEvent());
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text('Added to cart'),
                                backgroundColor: Colors.red,
                              ),
                            );
                          },
                          icon: Icon(Icons.favorite)),
                      Expanded(
                        child: Column(
                          children: [
                            Text(
                              "MacBook Air 256  2لابتوب ماك بوك اير (15-انج \ام جيجا بايت  )",
                              overflow: TextOverflow.clip,
                              maxLines: 3,
                            ),
                            Text("1,785,001 "),
                          ],
                        ),
                      ),
                      Image(
                        image: NetworkImage(),
                        alignment: Alignment.centerLeft,
                        width: 150,
                        height: 150,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 250,
                height: 120,
                child: InkWell(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => mac10()));
                  },
                  child: Row(
                    children: [
                      IconButton(
                          onPressed: () {
                            BlocProvider.of<CardBloc>(context)
                                .add(IncrementEvent());
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text('Added to cart'),
                                backgroundColor: Colors.red,
                              ),
                            );
                          },
                          icon: Icon(Icons.favorite)),
                      Expanded(
                        child: Column(
                          children: [
                            Text(
                              "MacBook Air 256   2لابتوب ماك بوك اير (15-انج \ام جيجا بايت  )",
                              overflow: TextOverflow.clip,
                              maxLines: 3,
                            ),
                            Text("1,930,000"),
                          ],
                        ),
                      ),
                      Image(
                        image: NetworkImage(),
                        alignment: Alignment.centerLeft,
                        width: 150,
                        height: 150,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
