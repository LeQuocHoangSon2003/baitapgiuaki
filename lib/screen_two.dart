import 'package:flutter/material.dart';

class ScreenTwo extends StatelessWidget {
  final bool checkbox2;
  final bool checkbox3;

  const ScreenTwo({
    Key? key,
    required this.checkbox2,
    required this.checkbox3,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Màn hình thứ 2'),
      ),
      body: Center(
        child: Text(
          'Kết quả chọn Checkbox 2 và 3: $checkbox2 $checkbox3',
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
