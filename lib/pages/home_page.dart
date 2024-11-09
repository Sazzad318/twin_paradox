import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:SafeArea(child: Container(
            child:_textWidget()
        ))
    );
  }
  Widget _textWidget(){
    return const Text("Twin Paradox",style:TextStyle(
      color:Colors.white,
      fontSize: 65,

    ),);


}

  Widget _twin_paradoxImage() {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.scaleDown,
          image: AssetImage('assets/images/twin paradox.jpg'),
        ),
      ),
    );
  }
}


