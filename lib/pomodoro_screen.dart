import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'utils.dart';
import 'widgets/progress_widget.dart';
import 'widgets/time_controller.dart';
import 'widgets/time_options.dart';
import 'widgets/timer_card.dart';
import 'widgets/timer_service.dart';

class PomodoroScreen extends StatelessWidget {
  const PomodoroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<TimerService>(context);
    return Scaffold(
      backgroundColor: renderColor(provider.currentState),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: renderColor(provider.currentState),
        title: Text(
          "POMODORO",
          style: textStyle(25, Colors.white, FontWeight.w700),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.refresh,
              color: Colors.white,
            ),
            iconSize: 40,
            onPressed: () {},
          )
        ],
      ),
      body: SingleChildScrollView(
          child: Container(
              alignment: Alignment.center,
              child: const Column(children: [
                SizedBox(height: 15),
                TimerCard(),
                SizedBox(height: 40),
                TimeOptions(),
                SizedBox(height: 40),
                TimeController(),
                SizedBox(height: 40),
                ProgressWidget(),
              ]))),
    );
  }
}
