import 'package:flutter/material.dart';

void main() { runApp(Counter());
}

class Counter extends StatelessWidget {
  const Counter({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Counter2(),
        ),
      ),
    );
  }
    
}

class Counter2 extends StatefulWidget {
  @override
  _CounterState createState() => _CounterState();
}


class _CounterState extends State<Counter2> {
    int _counter = 0;

    void _increment() {
    setState(() {

          _counter++;
        });
    }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        ElevatedButton(
          onPressed: _increment,
          child: const Text('Increment'),
        ),
        const SizedBox(width: 16),
        Text('Count: $_counter'),
      ],
    );
  }
}
