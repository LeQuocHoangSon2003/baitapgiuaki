import 'package:flutter/material.dart';

class ScreenOne extends StatelessWidget {
  final bool checkbox1;
  final bool checkbox2;

  const ScreenOne({
    Key? key,
    required this.checkbox1,
    required this.checkbox2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Màn hình thứ 1'),
      ),
      body: Center(
        child: Text(
          'Kết quả chọn Checkbox 1 và 2: $checkbox1 $checkbox2',
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
