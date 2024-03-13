import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../utils.dart';
import 'timer_service.dart';

class TimerCard extends StatelessWidget {
  const TimerCard({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<TimerService>(context);
    final minutes = provider.currentDuration ~/ 60;
    final seconds = provider.currentDuration % 60;
    return Column(
      children: [
        Text(
          provider.currentState,
          style: textStyle(35, Colors.white, FontWeight.w700),
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width / 3.2,
              height: 170,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.5), spreadRadius: 4, blurRadius: 4, offset: const Offset(0, 2))]),
              child: Center(
                child: Text(
                  minutes == 0
                      ? '00'
                      : minutes < 10
                          ? '0$minutes'
                          : minutes.toString(),
                  style: textStyle(70, renderColor(provider.currentState), FontWeight.w700),
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Text(":", style: textStyle(60, Colors.white, FontWeight.bold)),
            const SizedBox(width: 10),
            Container(
              width: MediaQuery.of(context).size.width / 3.2,
              height: 170,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.5), spreadRadius: 4, blurRadius: 4, offset: const Offset(0, 2))]),
              child: Center(
                child: Text(
                  seconds == 0
                      ? '00'
                      : seconds < 10
                          ? '0${seconds.round()}'
                          : '${seconds.round()}',
                  style: textStyle(70, renderColor(provider.currentState), FontWeight.w700),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
