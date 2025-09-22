import 'package:flutter/material.dart';
import 'package:learning_app_ui/components/primary_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: NetworkImage(
                  'https://static.vecteezy.com/system/resources/previews/010/810/357/original/student-pupil-in-learning-process-online-education-home-schooling-students-sit-at-the-table-and-study-do-homework-and-read-a-book-prepare-for-the-exam-vector.jpg',
                ),
              ),
              Text(
                'Online Learning Platform',
                style: TextStyle(
                  color: Colors.purple,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text(
                'Welcome to your gateway for interactive online learning. Explore a wide range of courses designed to boost your skills and knowledge. Start your educational journey today and unlock new opportunities for growth.',
                style: TextStyle(
                  color: Colors.grey.shade800,
                  fontWeight: FontWeight.w300,
                  fontSize: 12,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 8),
              PrimaryButton(size: size, text: 'Start Learning'),
            ],
          ),
        ),
      ),
    );
  }
}
