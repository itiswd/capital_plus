import 'package:flutter/material.dart';
import 'widgets/lesson_view_body.dart';


class LessonsView extends StatelessWidget {
  const LessonsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: LessonsViewBody(),
    );
  }
}