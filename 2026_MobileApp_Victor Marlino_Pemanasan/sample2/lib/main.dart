import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      home: const MyHomePage(title: 'Sample 2'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                  image: NetworkImage(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTdHLpYRPsN2tq21kObyqgMdptRiLR8uLGuZw&s",
                  ),
                  width: 150,
                  height: 150,
                ),
                Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Stanley",
                        style: TextStyle(fontSize: 30),
                        textAlign: TextAlign.start,
                      ),
                      Text(
                        "DBT - 2026",
                        style: TextStyle(fontSize: 20),
                        textAlign: TextAlign.start,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                  image: NetworkImage(
                    "https://media.licdn.com/dms/image/v2/C5603AQHjROJ_9AdqaA/profile-displayphoto-shrink_200_200/profile-displayphoto-shrink_200_200/0/1610375856689?e=2147483647&v=beta&t=cO5TCXohjdExfynmFN1eIy6eHUtHLBhkTXH7toADaVA",
                  ),
                  width: 150,
                  height: 150,
                ),
                Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Permata",
                        style: TextStyle(fontSize: 30),
                        textAlign: TextAlign.start,
                      ),
                      Text(
                        "DBT - 2026",
                        style: TextStyle(fontSize: 20),
                        textAlign: TextAlign.start,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                  image: NetworkImage(
                    "https://media.licdn.com/dms/image/v2/C5603AQHjROJ_9AdqaA/profile-displayphoto-shrink_200_200/profile-displayphoto-shrink_200_200/0/1610375856689?e=2147483647&v=beta&t=cO5TCXohjdExfynmFN1eIy6eHUtHLBhkTXH7toADaVA",
                  ),
                  width: 150,
                  height: 150,
                ),
                Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Permata",
                        style: TextStyle(fontSize: 30),
                        textAlign: TextAlign.start,
                      ),
                      Text(
                        "DBT - 2026",
                        style: TextStyle(fontSize: 20),
                        textAlign: TextAlign.start,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                  image: NetworkImage(
                    "https://media.licdn.com/dms/image/v2/C5603AQHjROJ_9AdqaA/profile-displayphoto-shrink_200_200/profile-displayphoto-shrink_200_200/0/1610375856689?e=2147483647&v=beta&t=cO5TCXohjdExfynmFN1eIy6eHUtHLBhkTXH7toADaVA",
                  ),
                  width: 150,
                  height: 150,
                ),
                Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Permata",
                        style: TextStyle(fontSize: 30),
                        textAlign: TextAlign.start,
                      ),
                      Text(
                        "DBT - 2026",
                        style: TextStyle(fontSize: 20),
                        textAlign: TextAlign.start,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
