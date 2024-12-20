import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Details(),
      ),
    );
  }
}

class Details extends StatelessWidget {
  const Details({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: ClipRRect(
          child: Container(
            padding: EdgeInsets.all(10),
            width: 237,
            height: 300,
            color: Colors.white,
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(18),
                  child: Image(
                    width: 200,
                    image: AssetImage("assets/hands.png"),
                  ),
                ),
                Text(
                  "International Band Mu...",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.w400),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(14),
                          child: Image(
                            image: AssetImage("assets/profile_1.png"),
                            width: 24,
                            height: 24,
                          ),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image(
                            image: AssetImage("assets/profile_2.png"),
                            width: 24,
                            height: 24,
                          ),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(200),
                          child: Image(
                            image: AssetImage("assets/profile_3.png"),
                            width: 24,
                            height: 24,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "+20 going",
                      style: TextStyle(
                        color: Color(0xFF3F38DD),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SvgPicture.asset("assets/map.svg"),
                    Text(
                      "36 Guild Street London, UK ",
                      style: TextStyle(
                        color: Color(0xFF2B2849),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          borderRadius: BorderRadius.circular(18),
        ),
      ),
    );
  }
}
