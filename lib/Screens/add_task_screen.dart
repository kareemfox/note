import 'package:flutter/material.dart';

class AddTaskScreen extends StatefulWidget {

  final Function addTaskCallBack;
  AddTaskScreen(this.addTaskCallBack);
  String? newText;


  @override
  State<AddTaskScreen> createState() => _AddTaskScreenState();

}

class _AddTaskScreenState extends State<AddTaskScreen> {


  String? newText;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            Text(
              'Add Task',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.teal[400]),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              onChanged: (value){
                setState((){
                  newText = value;
                });
              },
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)))),
              autofocus: true,
              textAlign: TextAlign.center,
              
            ),
            SizedBox(
              height: 20,
            ),
            TextButton(
                onPressed: () {
                  widget.addTaskCallBack(newText);
                  Navigator.of(context).pop();
                },
                child: Text('Add'),
                style: TextButton.styleFrom(
                  backgroundColor: Colors.teal[400],
                  primary: Colors.white
                )),
          ],
        ),
      ),
    );
  }

  
}
