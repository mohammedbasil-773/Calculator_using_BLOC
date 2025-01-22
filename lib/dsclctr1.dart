import 'package:block/dsclctr/dsclctr_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
void main(){
  runApp(dsc1());
}
class dsc1 extends StatelessWidget {
  const dsc1({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
  create: (context) =>  DsclctrBloc(),
  child: MaterialApp(
      debugShowCheckedModeBanner: false,
      home: dsc2(),
    ),
);
  }
}
class dsc2 extends StatefulWidget {
  const dsc2({super.key});

  @override
  State<dsc2> createState() => _dsc2State();
}

class _dsc2State extends State<dsc2> {


  final TextEditingController cntrl=TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator",style:  TextStyle(color: Colors.black,),),
        centerTitle: true,
        shadowColor: Colors.grey,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.black,Colors.lightBlue.shade100],
            ),
          ),
        ),
      ),
      backgroundColor: Colors.blueGrey.shade400,
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                child: BlocBuilder<DsclctrBloc, DsclctrState>(
  builder: (context, state) {
    cntrl.text=state.init;
    return TextField(
                  textDirection: TextDirection.rtl,controller:cntrl,style: TextStyle(color:Colors.white,fontSize: 60),);
  },
),
                padding: EdgeInsets.only(top: 300),
                decoration: BoxDecoration(color: Colors.black,),

              ),

              Padding(padding: EdgeInsets.all(20.0),),
              Row(
                children: [
                  Padding(padding: EdgeInsets.only(left: 25.0),),
                  SizedBox(
                    height: 70,
                    width: 70,
                    child: ElevatedButton(onPressed: (){
                     context.read<DsclctrBloc>().add(Clik(clicked: "AC"),);
                    }, child: Text("C",style: TextStyle(color: Colors.white),
                    ),
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.black,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),),

                      ),
                    ),
                  ),

                  Padding(padding: EdgeInsets.only(left: 30.0),),
                  SizedBox(
                    height: 70,
                    width: 70,
                    child: ElevatedButton(onPressed: (){
                      context.read<DsclctrBloc>().add(Clik(clicked: "%"),);

                    }, child: Text("%",style: TextStyle(color: Colors.white),
                    ),
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.black,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),),
                      ),
                    ),
                  ),

                  Padding(padding: EdgeInsets.only(left: 30.0),),
                  SizedBox(
                    height: 70,
                    width: 70,
                    child: IconButton(onPressed: (){
                      context.read<DsclctrBloc>().add(Clik(clicked: "pari"),);

                    }, icon: Icon(Icons.backspace),
                      style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),),backgroundColor: Colors.black87,

                      ),
                    ),
                  ),

                  Padding(padding: EdgeInsets.only(left: 30.0),),
                  SizedBox(
                    height: 70,
                    width: 70,
                    child: ElevatedButton(onPressed: (){
                      context.read<DsclctrBloc>().add(Clik(clicked: "/"),);

                    }, child: Text("/",style: TextStyle(color: Colors.white),
                    ),
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.black,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),),
                      ),
                    ),
                  ),
                ],
              ),

              Padding(padding: EdgeInsets.only(top: 20.0),),
              Row(
                children: [
                  Padding(padding: EdgeInsets.only(left: 25.0,),),
                  SizedBox(
                    height: 70,
                    width: 70,
                    child: ElevatedButton(onPressed: (){
                      context.read<DsclctrBloc>().add(Clik(clicked: "7"),);

                    }, child: Text("7",style: TextStyle(color: Colors.white),
                    ),

                      style: ElevatedButton.styleFrom(backgroundColor: Colors.black,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),),
                      ),
                    ),
                  ),

                  Padding(padding: EdgeInsets.only(left: 30.0,),),

                  SizedBox(
                    height: 70,
                    width:  70,
                    child: ElevatedButton(onPressed: (){
                      context.read<DsclctrBloc>().add(Clik(clicked: "8"),);

                    }, child: Text("8",style: TextStyle(color: Colors.white),
                    ),
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.black,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),),
                      ),
                    ),
                  ),

                  Padding(padding: EdgeInsets.only(left: 30.0,),),

                  SizedBox(
                    height: 70,
                    width: 70,
                    child: ElevatedButton(onPressed: (){
                      context.read<DsclctrBloc>().add(Clik(clicked: "9"),);

                    }, child: Text("9",style: TextStyle(color: Colors.white),
                    ),
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.black,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),),
                      ),
                    ),
                  ),

                  Padding(padding: EdgeInsets.only(left: 30.0),),
                  SizedBox(
                    width: 70,
                    height: 70,
                    child: ElevatedButton(onPressed: (){
                      context.read<DsclctrBloc>().add(Clik(clicked: "*"),);

                    }, child: Text("*",style: TextStyle(color: Colors.white),
                    ),
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.black,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),),
                      ),
                    ),
                  ),

                ],
              ),
              Padding(padding: EdgeInsets.only(top: 20.0),),
              Row(

                children: [

                  Padding(padding: EdgeInsets.only(left: 25.0),),
                  SizedBox(
                    height: 70,
                    width:  70,
                    child: ElevatedButton(onPressed: (){
                      context.read<DsclctrBloc>().add(Clik(clicked: "4"),);

                    }, child: Text("4",style: TextStyle(color: Colors.white),
                    ),
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.black,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),),
                      ),
                    ),
                  ),

                  Padding(padding: EdgeInsets.only(left: 30.0),),
                  SizedBox(
                    height: 70,
                    width: 70,
                    child: ElevatedButton(onPressed: (){
                      context.read<DsclctrBloc>().add(Clik(clicked: "5"),);

                    }, child: Text("5",style: TextStyle(color: Colors.white),
                    ),
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.black,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),),
                      ),
                    ),
                  ),

                  Padding(padding: EdgeInsets.only(left: 30.0),),
                  SizedBox(
                    height: 70,
                    width: 70,
                    child: ElevatedButton(onPressed: (){
                      context.read<DsclctrBloc>().add(Clik(clicked: "6"),);

                    }, child: Text("6",style: TextStyle(color: Colors.white),
                    ),
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.black,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),),
                      ),
                    ),
                  ),

                  Padding(padding: EdgeInsets.only(left: 30.0),),
                  SizedBox(
                    height: 70,
                    width: 70,
                    child: IconButton(onPressed: (){
                      context.read<DsclctrBloc>().add(Clik(clicked: "rm"),);

                    }, icon: Icon(Icons.remove),
                      style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),),backgroundColor: Colors.black87,
                      ),
                    ),
                  ),
                ],
              ),

              Padding(padding: EdgeInsets.only(top: 20.0),),
              Row(
                children: [
                  Padding(padding: EdgeInsets.only(left: 25.0),),
                  SizedBox(
                    height: 70,
                    width: 70,
                    child: ElevatedButton(onPressed: (){
                      context.read<DsclctrBloc>().add(Clik(clicked: "1"),);

                    }, child: Text("1",style: TextStyle(color: Colors.white),
                    ),
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.black,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),),
                      ),
                    ),
                  ),

                  Padding(padding: EdgeInsets.only(left: 30.0),),
                  SizedBox(
                    height: 70,
                    width: 70,
                    child: ElevatedButton(onPressed: (){
                      context.read<DsclctrBloc>().add(Clik(clicked: "2"),);
                    }, child: Text("2",style: TextStyle(color: Colors.white),
                    ),
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.black,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),),
                      ),
                    ),
                  ),

                  Padding(padding: EdgeInsets.only(left: 30.0),),
                  SizedBox(
                    height: 70,
                    width: 70,
                    child: ElevatedButton(onPressed: (){
                      context.read<DsclctrBloc>().add(Clik(clicked: "3"),);
                    }, child: Text("3",style: TextStyle(color: Colors.white),
                    ),
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.black,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),),
                      ),
                    ),
                  ),

                  Padding(padding: EdgeInsets.only(left: 30.0),),
                  SizedBox(
                    height: 70,
                    width: 70,
                    child: ElevatedButton(onPressed: (){
                      context.read<DsclctrBloc>().add(Clik(clicked: "+"),);

                    }, child: Text("+",style: TextStyle(color: Colors.white),
                    ),
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.black,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),),
                      ),
                    ),
                  ),
                ],
              ),

              Padding(padding: EdgeInsets.only(top: 20.0),),
              Row(
                children: [
                  Padding(padding: EdgeInsets.only(left: 25.0),),
                  SizedBox(
                    height: 70,
                    width: 70,
                    child: ElevatedButton(onPressed: (){
                      context.read<DsclctrBloc>().add(Clik(clicked: "00"),);
                    }, child: Text("00",style: TextStyle(color: Colors.white),
                    ),
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.black,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),),
                      ),
                    ),
                  ),

                  Padding(padding: EdgeInsets.only(left: 30.0),),
                  SizedBox(
                    height: 70,
                    width: 70,
                    child: ElevatedButton(onPressed: (){
                      context.read<DsclctrBloc>().add(Clik(clicked: "0"),);
                    }, child: Text("0",style: TextStyle(color: Colors.white),
                    ),
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.black,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),),
                      ),
                    ),
                  ),

                  Padding(padding: EdgeInsets.only(left: 30.0),),
                  SizedBox(
                    height: 70,
                    width: 70,
                    child: ElevatedButton(onPressed: (){
                      context.read<DsclctrBloc>().add(Clik(clicked: "-"),);
                    }, child: Text(".",style: TextStyle(color: Colors.white),
                    ),
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.black,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),),
                      ),
                    ),
                  ),

                  Padding(padding: EdgeInsets.only(left: 30.0),),
                  SizedBox(
                    height: 70,
                    width: 70,
                    child: ElevatedButton(onPressed: (){
                      context.read<DsclctrBloc>().add(Clik(clicked: "="),);
                    }, child: Text("=",style: TextStyle(color: Colors.white),
                    ),
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.black,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),),
                      ),
                    ),
                  ),
                ],
              ),

            ],
          ),


        ),
      ),
    );
  }
}
