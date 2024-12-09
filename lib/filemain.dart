import 'package:flutter/material.dart';
import 'screen_one.dart';
import 'screen_two.dart';
import 'screen_three.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool checkbox1 = true;
  bool checkbox2 = false;
  bool checkbox3 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Drawer Menu Test'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(color: Colors.yellow),
              child: const Text('Menu', style: TextStyle(fontSize: 24)),
            ),
            ListTile(
              title: const Text('Màn hình thứ 1'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ScreenOne(
                      checkbox1: checkbox1,
                      checkbox2: checkbox2,
                    ),
                  ),
                );
              },
            ),
            ListTile(
              title: const Text('Màn hình thứ 2'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ScreenTwo(
                      checkbox2: checkbox2,
                      checkbox3: checkbox3,
                    ),
                  ),
                );
              },
            ),
            ListTile(
              title: const Text('Màn hình thứ 3'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ScreenThree(
                      checkbox1: checkbox1,
                      checkbox2: checkbox2,
                      checkbox3: checkbox3,
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Checkbox with Header and Subtitle',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            CheckboxListTile(
              title: const Text('Báo thức lúc 4h30 AM mỗi ngày'),
              subtitle: const Text('Báo thức sau 12h giờ'),
              value: checkbox1,
              onChanged: (value) {
                setState(() {
                  checkbox1 = value!;
                });
              },
            ),
            CheckboxListTile(
              title: const Text('Báo thức lúc 5h30 AM mỗi ngày'),
              subtitle: const Text('Báo thức sau 12h giờ'),
              value: checkbox2,
              onChanged: (value) {
                setState(() {
                  checkbox2 = value!;
                });
              },
            ),
            CheckboxListTile(
              title: const Text('Báo thức lúc 6h30 AM mỗi ngày'),
              subtitle: const Text('Báo thức sau 12h giờ'),
              value: checkbox3,
              onChanged: (value) {
                setState(() {
                  checkbox3 = value!;
                });
              },
            ),
            const SizedBox(height: 20),
            Text(
              'Kết quả chọn: $checkbox1 $checkbox2 $checkbox3',
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
