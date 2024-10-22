import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ProductInfo {
  final String name;
  final double price;

  ProductInfo(this.name, this.price);

}

final products = [
  ProductInfo('AAA', 0.2),
  ProductInfo('BBB', 0.2),
  ProductInfo('CCC', 0.2),
  ProductInfo('DDD', 0.2),
  ProductInfo('EEE', 0.2),
];


class HomePage extends StatefulWidget{
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentProductIndex = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text(products[_currentProductIndex].name),
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
              onPressed: () {
                setState(() {
                  if(_currentProductIndex < 4) {
                    _currentProductIndex++;
                  }
                });
              },
              child: Text('Push'),)
          ],
        ),
      ),
    );
  }
}