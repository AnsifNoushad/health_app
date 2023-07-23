import 'package:flutter/material.dart';
import 'package:health_app/view/homepage.dart';

class Loginpage extends StatelessWidget {
  const Loginpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: Image.network(
              'https://www.incimages.com/uploaded_files/image/1920x1080/getty_962094932_385032.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              decoration: InputDecoration(
                  labelText: 'Enter your Email',
                  labelStyle: TextStyle(
                    color: Color.fromARGB(118, 0, 0, 0),
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              decoration: InputDecoration(
                  labelText: 'Enter your password',
                  labelStyle: TextStyle(
                    color: Color.fromARGB(118, 0, 0, 0),
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ))),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(
              top: 30,
              left: 130,
            ),
            height: 30,
            child: Row(
              children: [
                Image.network(
                    'https://www.freepnglogos.com/uploads/google-logo-png/google-logo-png-google-icon-logo-png-transparent-svg-vector-bie-supply-14.png'),
                const SizedBox(
                  width: 10,
                ),
                Image.network(
                    'https://upload.wikimedia.org/wikipedia/commons/thumb/0/05/Facebook_Logo_%282019%29.png/1024px-Facebook_Logo_%282019%29.png'),
                const SizedBox(
                  width: 10,
                ),
                Image.network(
                    'https://upload.wikimedia.org/wikipedia/commons/thumb/6/6f/Logo_of_Twitter.svg/512px-Logo_of_Twitter.svg.png?20220821125553'),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => Homepage(),
                ),
              );
            },
            child: Container(
              width: 150,
              height: 50,
              decoration: const BoxDecoration(
                  color: Color.fromARGB(78, 119, 114, 114),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Center(
                child: Text(
                  'SUBMIT',
                  style: TextStyle(
                    color: const Color.fromARGB(255, 0, 0, 0),
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
