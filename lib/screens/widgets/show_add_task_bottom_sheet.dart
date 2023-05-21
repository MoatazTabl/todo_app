import 'package:flutter/material.dart';

class ShowAddTaskBottomSheet extends StatelessWidget {
  const ShowAddTaskBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Text(
                "Add Your New Task",
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(color: Colors.black),
              ),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.6,
            child: TextField(
              decoration: InputDecoration(
                hintText: "enter your task",
                hintStyle: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(color: const Color(0xff707070)),
                contentPadding: const EdgeInsets.only(left: 4),
                border: UnderlineInputBorder(
                  borderSide:  BorderSide(color: Theme.of(context).primaryColor),
                  borderRadius: BorderRadius.circular(18),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
