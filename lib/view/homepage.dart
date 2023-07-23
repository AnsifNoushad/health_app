import 'package:flutter/material.dart';
import 'package:health_app/view/stepscountpage.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Column(
        children: [
          SizedBox(
            height: 200,
          ),
          Image.network(
              'https://www.pngmart.com/files/15/Vector-Person-Jogging-PNG-Clipart.png')
        ],
      ),
      bottomNavigationBar: Container(
        // width: 260,
        height: 70,
        decoration: const BoxDecoration(
            color: Color.fromARGB(255, 61, 64, 66),
            borderRadius: BorderRadius.all(Radius.circular(20))),
        margin: const EdgeInsets.only(
          bottom: 5,
          left: 20,
          right: 20,
        ),
        padding: const EdgeInsets.symmetric(
            // horizontal: 20,
            // vertical: 10,
            ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              color: const Color.fromARGB(255, 255, 255, 255),
              iconSize: 30,
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.navigate_before),
            ),
            IconButton(
              color: const Color.fromARGB(255, 255, 255, 255),
              iconSize: 30,
              onPressed: () {
                // Navigator.pushAndRemoveUntil(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => const Mywidjet1(),
                //   ),
                //   (Route<dynamic> route) => false,
                // );
              },
              icon: const Icon(
                Icons.home,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const StepsCountPage(),
                    ),
                    (Route<dynamic> route) => false,
                  );
                },
                child: Container(
                  width: 150,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.black54,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Center(
                    child: Text(
                      'Get Steps Count',
                      style: TextStyle(
                        color: const Color.fromARGB(255, 255, 255, 255),
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
