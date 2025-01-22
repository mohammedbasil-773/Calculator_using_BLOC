import 'package:block/counter/cntr_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
  create: (context) => CntrBloc(),
  child: MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    ),
);
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController txtf1=TextEditingController();
  final TextEditingController txtf2=TextEditingController();
  @override
  Widget build(BuildContext context) {
    print("vhgv");

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: txtf1,
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                fillColor: Colors.blueGrey.shade800,
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(color: Colors.deepOrangeAccent,),
                ),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(13),
                    borderSide: BorderSide(color: Colors.black)
                ),
                labelText: 'CALCULATOR DEMO',
                labelStyle: TextStyle(color: Colors.black,),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: TextField(
                controller: txtf2,
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  fillColor: Colors.blueGrey.shade800,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: Colors.deepOrangeAccent,),
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(13),
                      borderSide: BorderSide(color: Colors.black)
                  ),
                  labelText: 'CALCULATOR DEMO',
                  labelStyle: TextStyle(color: Colors.black,),
                ),
              ),
            ),
            const Text(
              'You have pushed the button this many times:',
            ),
            BlocBuilder<CntrBloc, CntrState>(
  builder: (context, state) {
    return Text(
              state.res.toString(),
              style: Theme.of(context).textTheme.headlineMedium,
            );
  },
),
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding:  EdgeInsets.only(left: 170),
        child: Row(
          children: [
            FloatingActionButton(
              onPressed: (){
                context.read<CntrBloc>().add(Increment());
              },
              tooltip: 'Increment',
              child: const Icon(Icons.add),
            ),
            FloatingActionButton(
              onPressed: (){
                context.read<CntrBloc>().add(Decrement());
              },
              tooltip: 'Decrement',
              child: Icon(Icons.exposure_minus_1),
            ),
            FloatingActionButton(
              onPressed: (){
                context.read<CntrBloc>().add(Multiple());
              },
              tooltip: 'Multiply',
              child: Icon(Icons.star),
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
