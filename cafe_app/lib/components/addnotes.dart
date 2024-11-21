import 'package:flutter/material.dart';

class AddNotes extends StatefulWidget {
  const AddNotes({super.key});

  @override
  State<AddNotes> createState() => _AddNotesState();
}

class _AddNotesState extends State<AddNotes> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {},
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(width: 1, color: const Color(0xffDEDEDE)),
                  borderRadius: BorderRadius.circular(35)),
              width: 120,
              height: 27,
              // color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/Document.png',
                    width: 12,
                    height: 12,
                    fit: BoxFit.contain,
                    color: Colors.black,
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  const Text(
                    'Edit Address',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(width: 8),
          GestureDetector(
            onTap: () {},
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(width: 1, color: const Color(0xffDEDEDE)),
                  borderRadius: BorderRadius.circular(35)),
              width: 101,
              height: 27,
              // color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/Document.png',
                    width: 12,
                    height: 12,
                    fit: BoxFit.contain,
                    color: Colors.black,
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  const Text(
                    'Add Note',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
