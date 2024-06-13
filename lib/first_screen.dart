import 'package:flutter/material.dart';
import 'package:generated_routes/routes.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        title: Text('F I R S T S C R E E N',style: TextStyle(color: Colors.white),),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              Navigator.pushNamed(context, RoutesName.secondScreen,arguments: 'Hello');
            }, child: Text('Go to second screen'))
          ],
        ),
      ),
    );
  }
}
