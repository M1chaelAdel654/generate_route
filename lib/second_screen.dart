import 'package:flutter/material.dart';
import 'package:generated_routes/routes.dart';

class SecondScreen extends StatelessWidget {
  String data;

  SecondScreen({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        title: Text(
          'S E C O N D S C R E E N',
          style: TextStyle(color: Colors.white),
        ),
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
                child: Text('back to first screen')),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, RoutesName.thirdScreen, arguments: data);
                },
                child: Text('go to third screen')),
          ],
        ),
      ),
    );
  }
}
