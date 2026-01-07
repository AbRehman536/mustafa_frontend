import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateTimePickerDemo extends StatefulWidget {
  const DateTimePickerDemo({super.key});

  @override
  State<DateTimePickerDemo> createState() => _DateTimePickerDemoState();
}

class _DateTimePickerDemoState extends State<DateTimePickerDemo> {
  DateTime selectedDate = DateTime.now();
  TimeOfDay? selectedTime;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Date Time"),
        backgroundColor: Colors.blue,
      ),
      body: Column(children: [
        Text(
          DateFormat.yMMMMEEEEd().format(selectedDate)
        ),
        ElevatedButton(onPressed: (){
          showDatePicker(
              context: context,
              firstDate: DateTime.now(),
              lastDate: DateTime(2300))
              .then((value){
                setState(() {
                  selectedDate = value!;
                });
          });
        }, child: Text("Select Date")),
        Text(
          selectedTime == null ? "No Time Selected":
          selectedTime!.format(context).toString()
        ),
        ElevatedButton(onPressed: (){
          showTimePicker(
              context: context,
              initialTime: TimeOfDay.now())
              .then((value){
                setState(() {
                  selectedTime = value;
                });
          });
        }, child: Text("Select Time"))

      ],),
    );
  }
}
