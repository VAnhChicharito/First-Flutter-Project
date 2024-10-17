import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text('XXX'),
            SizedBox(height: 10,),
            SizedBox(
              width: 200,
              child: TextField(
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 10,),
            ElevatedButton(
              onPressed: () {},
              child: Text('XXXXXXX'),)
          ],
        ),
      ),
    );
  }
  
}