import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ProductInfo {
  final String name;
  final double price;

  ProductInfo(this.name, this.price);

}

final products = [
  ProductInfo('AAA', 1),
  ProductInfo('BBB', 2),
  ProductInfo('CCC', 3),
  ProductInfo('DDD', 4),
  ProductInfo('EEE', 5),
];


class HomePage extends StatefulWidget{
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentProductIndex = 0;
  int? _inputtedPrice;
  String _result = '';

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
                key: const Key('priceInput'),
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                textAlign: TextAlign.center,
                onChanged: (value){
                    _inputtedPrice = int.tryParse(value);
                },
              ),
            ),
            SizedBox(height: 10,),
            ElevatedButton(
              onPressed: () {

                setState(() {
                  if(_inputtedPrice == products[_currentProductIndex].price){
                    _result = 'pass';
                  }else{
                    _result = 'failed';
                  }
                });
              },
              child: Text('YYYYYY'),
            ),
            Visibility(
              visible: _result.isNotEmpty,
                child: Text(_result)),
            Visibility(
              visible: _result.isNotEmpty,
              child: ElevatedButton(
                  onPressed: (){
                    setState(() {
                      _result = '';
                      if(_currentProductIndex < 4) {
                        _currentProductIndex++;
                      }
                    });
                  },
                  child: Text('Next')),
            )
            
          ],
        ),
      ),
    );
  }
}