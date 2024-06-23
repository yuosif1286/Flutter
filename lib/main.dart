import 'package:flutter/material.dart';

void main() {
  runApp(const BirthDateCard());
}

class BirthDateCard extends StatelessWidget {
  const BirthDateCard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xff0F0F0F),
        body: Container(
          margin: const EdgeInsets.symmetric(vertical: 100.0),
          child: ListView(
            children: [
              Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    border: Border.all(width: 3, color: Colors.white),
                    shape: BoxShape.circle,
                    image: const DecorationImage(
                        fit: BoxFit.fill, image: AssetImage('images/abod.png')),
                  )),
              const Divider(
                color: Colors.grey,
                thickness: 1,
                indent: 60,
                endIndent: 60,
                height: 60,
              ),
              Container(
                  margin: const EdgeInsets.symmetric(vertical: 20.0),
                  child: const Column(
                    children: [
                      Center(
                        child: Text(
                          'Abody Ahmed',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontFamily: 'PlaywriteUSATraditional',
                          ),
                        ),
                      ),
                      Center(
                        child: Text(
                          'Flutter Developer',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 10.0,
                            fontFamily: 'PlaywriteUSATraditional.ttf',
                          ),
                        ),
                      ),
                    ],
                  )),
              Card(
                margin:
                    const EdgeInsets.symmetric(horizontal: 32, vertical: 20),
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                color: Colors.white,
                child: const ListTile(
                  leading: Icon(
                    Icons.phone,
                    size: 25,
                    color: Colors.amber,
                  ),
                  title: Text(
                    'Hello yoyo',
                    style: TextStyle(
                      color: Color.fromARGB(255, 243, 225, 219),
                      fontFamily: 'PlaywriteUSATraditional.ttf',
                      fontSize: 20,
                    ),
                    textDirection: TextDirection.ltr,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  height: 50,
                  child: const Row(
                    children: [
                      Spacer(
                        flex: 1,
                      ),
                      Spacer(
                        flex: 2,
                      ),
                      Text(
                        '(+964) 7712345678',
                        style: TextStyle(fontSize: 17, color: Colors.grey),
                      ),
                      Spacer(
                        flex: 4,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(32),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  height: 50,
                  child: const Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Icon(
                          Icons.email,
                          size: 25,
                          color: Colors.amber,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 16),
                        child: Text(
                          'anyone@mail.com',
                          style: TextStyle(fontSize: 17, color: Colors.grey),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
