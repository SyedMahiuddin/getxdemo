import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller/counter_controller.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Controller c = Get.put(Controller());
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
           Obx(() => Text("Clicks: ${c.count}"))
          ],
        ),
      ),
        floatingActionButton: FloatingActionButton(
          onPressed:(){
            c.increment();
          },
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ),
    );
  }
}
