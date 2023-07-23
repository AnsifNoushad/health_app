import 'package:flutter/material.dart';

class StepsCountPage extends StatelessWidget {
  const StepsCountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          InkWell(
            onTap: () {
              // Navigator.of(context).push(
              //   MaterialPageRoute(
              //     builder: (context) => Homepage(),
              //   ),
              // );
            },
            child: Container(
              margin: EdgeInsets.only(
                top: 300,
                left: 75,
              ),
              width: 250,
              height: 50,
              decoration: const BoxDecoration(
                  color: Color.fromARGB(247, 89, 3, 3),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Center(
                child: Text(
                  'Get Steps Count',
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontWeight: FontWeight.w800,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
