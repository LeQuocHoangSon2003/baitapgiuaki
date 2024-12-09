import 'package:flutter/material.dart';

class ScreenThree extends StatelessWidget {
  final bool checkbox1;
  final bool checkbox2;
  final bool checkbox3;

  const ScreenThree({
    Key? key,
    required this.checkbox1,
    required this.checkbox2,
    required this.checkbox3,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Màn hình thứ 3'),
      ),
      body: Center(
        child: Text(
          'Kết quả chọn Checkbox 1, 2 và 3: $checkbox1 $checkbox2 $checkbox3',
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
