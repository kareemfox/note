import 'package:flutter/material.dart';
import 'package:note/Screens/add_task_screen.dart';
import 'add_task_screen.dart';

import '../models/Task.dart';

class TaskScreen extends StatefulWidget {


  @override
  State<TaskScreen> createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {


  bool? cheked = false;
  bool? chekedd = false;

  List<Task> tasks = [
    Task(name: 'Talk to your aunt'),
    Task(name: 'Walk')
  ];


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(35),
        child: FloatingActionButton(
          onPressed: (){
            showModalBottomSheet(
                context: context, builder: (context) => AddTaskScreen((newText){
                  setState((){
                    tasks.add(Task(name: newText));
                  });
            }));
          },
          backgroundColor: Colors.indigo[400],
          child: Icon(Icons.add),
        ),
      ),
      backgroundColor: Colors.teal[400],
      body: Container(
        padding: EdgeInsets.only(top: 60, left: 20, right: 20, bottom: 80),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  Icons.playlist_add_check,
                  size: 40,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  'Things U Have To Do',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      fontSize: 25,
                      color: Colors.white),
                ),
              ],
            ),
            Text(
              '4 Tasks',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: Container(
                height: 300,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: ListView(
                  children: [
                    ListTile(
                      title: Text('Talk to your aunt'),
                      trailing: Checkbox(
                        value: chekedd,
                        onChanged: (value){
                          setState((){
                            chekedd = value;
                          });

                        },
                      ),
                    ),
                    ListTile(
                      title: Text('Walk'),
                      trailing: Checkbox(
                        value: cheked,
                        onChanged: (value){
                          setState((){
                            cheked = value;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
