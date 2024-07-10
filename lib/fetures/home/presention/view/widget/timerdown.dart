import 'package:flutter/material.dart';
import 'dart:async';

import 'package:task_mul/core/utiles/styel.dart';

class CountdownTimer extends StatefulWidget {
  const CountdownTimer({super.key});

  @override
  _CountdownTimerState createState() => _CountdownTimerState();
}

class _CountdownTimerState extends State<CountdownTimer> {
  late Timer _timer;
  int _start = 3600; // Total seconds for countdown

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    const oneSec = Duration(seconds: 1);
    _timer = Timer.periodic(
      oneSec,
      (Timer timer) {
        if (_start == 0) {
          setState(() {
            timer.cancel();
          });
        } else {
          setState(() {
            _start--;
          });
        }
      },
    );
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    int hours = _start ~/ 3600;
    int minutes = (_start % 3600) ~/ 60;
    int seconds = _start % 60;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildTimeContainer(context, hours.toString().padLeft(2, '0')),
        const Text(':', style: TextStyle(fontSize: 15, color: Colors.black)),
        _buildTimeContainer(context, minutes.toString().padLeft(2, '0')),
        const Text(':', style: TextStyle(fontSize: 15, color: Colors.black)),
        _buildTimeContainer(context, seconds.toString().padLeft(2, '0')),
      ],
    );
  }

  Widget _buildTimeContainer(BuildContext context, String value) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: const Color(0xffBD6633),
        borderRadius: BorderRadius.circular(3),
      ),
      child: Text(value, style: AppStyles.styleR9(context)),
    );
  }
}
