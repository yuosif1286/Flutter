import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(BirthDateCard());
}

class BirthDateCard extends StatelessWidget {
  BirthDateCard();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xff0F0F0F),
        body: Container(
          margin: new EdgeInsets.symmetric(vertical: 100.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    border: Border.all(width: 3, color: Colors.white),
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        fit: BoxFit.fill, image: AssetImage('images/abod.png')),
                  )),
              Container(
                  margin: new EdgeInsets.symmetric(vertical: 20.0),
                  child: Column(
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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  height: 50,
                  child: Row(
                    children: [
                      Spacer(
                        flex: 1,
                      ),
                      Icon(
                        Icons.phone,
                        size: 25,
                        color: Colors.amber,
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
                  child: Row(
                    children: [
                      Spacer(
                        flex: 1,
                      ),
                      Icon(
                        Icons.email,
                        size: 25,
                        color: Colors.amber,
                      ),
                      Spacer(
                        flex: 2,
                      ),
                      Text(
                        'anyone@mail.com',
                        style: TextStyle(fontSize: 17, color: Colors.grey),
                      ),
                      Spacer(
                        flex: 4,
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
