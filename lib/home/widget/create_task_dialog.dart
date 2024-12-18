import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:seek_app/home/widget/widget.dart';
import 'package:seek_app/l10n/l10n.dart';
import 'package:tasks_repository/model/task.dart';

class CreateTaskDialog extends StatefulWidget {
  const CreateTaskDialog({super.key});

  @override
  State<CreateTaskDialog> createState() => _CreateTaskDialogState();
}

Task? task;

class _CreateTaskDialogState extends State<CreateTaskDialog> {
  final _formKey = GlobalKey<FormState>();
  final titleController = TextEditingController();
  final descriptionController = TextEditingController();
  final dateController = TextEditingController();

  @override
  void dispose() {
    titleController.dispose();
    descriptionController.dispose();
    dateController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return Container(
      height: 660,
      width: double.maxFinite,
      padding: EdgeInsets.all(30),
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Center(
              child: Text(
                l10n.newTask,
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            CustomTextfield(
              title: l10n.name,
              hint: l10n.nameYourTask,
              isRequired: true,
              controller: titleController,
            ),
            CustomTextfield(
              title: l10n.description,
              hint: l10n.describeYourTask,
              controller: descriptionController,
              maxLines: 8,
            ),
            CustomTextfield(
              title: l10n.dateOfRealization,
              hint: l10n.enterDate,
              controller: dateController,
              isRequired: true,
              onTap: () async {
                DateTime? pickedDate = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2100),
                );

                if (pickedDate != null) {
                  setState(() {
                    dateController.text =
                        DateFormat('dd/MM/yy').format(pickedDate);
                  });
                }
              },
            ),
            Spacer(),
            InkWell(
              onTap: () {
                if (_formKey.currentState!.validate()) {
                  final task = Task(
                    title: titleController.text,
                    description: descriptionController.text,
                    date: dateController.text,
                    state: TaskState.pending,
                  );

                  Navigator.pop(context, task);
                }
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.green,
                ),
                height: 50,
                width: 50,
                child: Icon(
                  Icons.check,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
