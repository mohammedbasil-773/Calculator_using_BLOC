import 'package:block/clctr/calctr_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
void main(){
  runApp(clc1());
}
class clc1 extends StatelessWidget {
  const clc1({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
  create: (context) => CalctrBloc(),
  child: MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: clc2(),
    ),
);
  }
}
class clc2 extends StatefulWidget {
  const clc2({super.key});

  @override
  State<clc2> createState() => _clc2State();
}

class _clc2State extends State<clc2> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController txt1=TextEditingController();
    final TextEditingController txt2=TextEditingController();
    return Scaffold(
        appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text('Flutter Demo'),
        ),
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: txt1,
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
                controller: txt2,
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
            BlocBuilder<CalctrBloc, CalctrState>(
              builder: (context, state) {
                return Text(
                  state.init.toString(),
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
                context.read<CalctrBloc>().add(Addition(num1: int.parse(txt1.text), num2: int.parse(txt2.text),),);
              },
              tooltip: 'Addition',
              child: const Icon(Icons.add),
            ),
            FloatingActionButton(
              onPressed: (){
                context.read<CalctrBloc>().add(Subtraction(num1: int.parse(txt1.text), num2: int.parse(txt2.text),),);
              },
              tooltip: 'Subtraction',
              child: Icon(Icons.exposure_minus_1),
            ),
            FloatingActionButton(
              onPressed: (){
                context.read<CalctrBloc>().add(Multipliy(num1: int.parse(txt1.text), num2: int.parse(txt2.text),),);
              },
              tooltip: 'Multiply',
              child: Icon(Icons.star),
            ),
          ],
        ),
      ), //
    );
  }
}
