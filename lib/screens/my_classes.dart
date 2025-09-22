import 'package:flutter/material.dart';
import 'package:learning_app_ui/model/class_model.dart';

class MyClasses extends StatefulWidget {
  const MyClasses({super.key});

  @override
  State<MyClasses> createState() => _MyClassesState();
}

class _MyClassesState extends State<MyClasses> {
  List<ClassModel> classes = [
    ClassModel(
      name: 'Mathematics',
      image:
          'https://th.bing.com/th/id/R.72419f04a93885e862a378df34f43c89?rik=3yNIvGPa8M2XfQ&pid=ImgRaw&r=0',
      studentCount: 200,
    ),
    ClassModel(
      name: 'Music',
      image:
          'https://th.bing.com/th/id/OIP.M3GvGDdf_7kASh-S61cvJAHaEW?o=7rm=3&rs=1&pid=ImgDetMain&o=7&rm=3',
      studentCount: 105,
    ),
    ClassModel(
      name: 'Science',
      image:
          'https://th.bing.com/th/id/OIP.9ULr3Be7QSJSTwi4c-L-9QHaE7?o=7rm=3&rs=1&pid=ImgDetMain&o=7&rm=3',
      studentCount: 105,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'MY CLASSES',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.purple,
          ),
        ),
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back_ios_new_rounded, color: Colors.purple),
        ),
      ),
      body: ListView.builder(
        itemCount: classes.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(classes[index].image),
            ),
            title: Text(classes[index].name),
            subtitle: Text(
              'Student Count - ${classes[index].studentCount.toString()}',
            ),
          );
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: 'Friends'),
          BottomNavigationBarItem(
            icon: Icon(Icons.emoji_people_outlined),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}
