import 'package:flutter/material.dart';
import 'package:generated_routes/routes.dart';

class ThirdScreen extends StatelessWidget {
  String data;
  ThirdScreen({super.key,required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        title: Text('T H I R D S C R E E N',style: TextStyle(color: Colors.white),),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('the data: $data'),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('back to second screen')),
            ElevatedButton(onPressed: (){
              Navigator.pushNamed(context, RoutesName.secondScreen,arguments: 'Hello');
            }, child: Text('go to second screen'))
          ],
        ),
      ),
    );
  }
}
