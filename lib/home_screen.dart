import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            height: 230,
            decoration: BoxDecoration(
                borderRadius:
                    const BorderRadius.only(bottomRight: Radius.circular(50)),
                color: const Color(0xff040c50),
                boxShadow: [
                  BoxShadow(
                      color: const Color(0xff040c50).withOpacity(0.3),
                      offset: const Offset(-10, 0.0),
                      blurRadius: 20.0,
                      spreadRadius: 4.0)
                ]),
            child: Stack(
              children: [
                Positioned(
                    top: 80,
                    left: 0,
                    child: Container(
                      height: 100,
                      width: 300,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(50),
                            bottomRight: Radius.circular(50)),
                        color: Colors.white,
                      ),
                    )),
                const Positioned(
                    top: 110,
                    left: 20,
                    child: Text(
                      "Your Books",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff040c50)),
                    )),
              ],
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            height: 230,
            child: Stack(
              children: [
                Positioned(
                    top: 35,
                    left: 20,
                    child: Material(
                      child: Container(
                        height: 180,
                        width: width * 0.9,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8.0),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black87.withOpacity(0.3),
                                  offset: const Offset(-10, 10),
                                  blurRadius: 10.0,
                                  spreadRadius: 4.0)
                            ]),
                      ),
                    )),
                Positioned(
                    top: 0,
                    left: 30,
                    child: Card(
                      elevation: 10,
                      shadowColor: Colors.grey.withOpacity(0.5),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Container(
                        height: 200,
                        width: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            image: const DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage("asset/image/images.png"),
                            )),
                      ),
                    )),
                Positioned(
                    top: 60,
                    left: 200,
                    child: SizedBox(
                      height: 150,
                      width: 160,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Big Miracles",
                            style: TextStyle(
                                fontSize: 20,
                                color: Color(0xff040c50),
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            "Sadiq Goni",
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                          ),
                          Divider(
                            color: Colors.black87,
                          ),
                          Text(
                            "Dont be sad",
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ))
              ],
            ),
          ),
          Expanded(
              child: MediaQuery.removePadding(
                  context: context,
                  removeTop: true,
                  child: ListView(
                    children: const [
                      CardList(
                          borderRadiusGeometry: BorderRadius.only(
                              bottomLeft: Radius.circular(80.0)),
                          title: "Trailblazer",
                          subtitle: "Your life starts here"),
                      CardList(
                        borderRadiusGeometry:
                            BorderRadius.only(topRight: Radius.circular(80.0)),
                        title: "Champions",
                        subtitle: "The rectifier of your ideal",
                      ),
                      CardList(
                          borderRadiusGeometry: BorderRadius.only(
                              bottomLeft: Radius.circular(80.0)),
                          title: "Trailblazer",
                          subtitle: "Your life starts here"),
                      CardList(
                        borderRadiusGeometry:
                            BorderRadius.only(topRight: Radius.circular(80.0)),
                        title: "Champions",
                        subtitle: "The rectifier of your ideal",
                      ),
                    ],
                  ))),
        ],
      ),
    );
  }
}

class CardList extends StatelessWidget {
  final String title;
  final String subtitle;

  final BorderRadiusGeometry borderRadiusGeometry;

  const CardList({
    super.key,
    required this.borderRadiusGeometry,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10, top: 25),
      height: 200,
      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
      child: Container(
        decoration: BoxDecoration(
            color: const Color(0xff040c50),
            borderRadius: borderRadiusGeometry,
            // borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(80.0)),
            boxShadow: [
              BoxShadow(
                  color: const Color(0xff040c50).withOpacity(0.3),
                  offset: const Offset(-10, 0.0),
                  blurRadius: 20.0,
                  spreadRadius: 4.0)
            ]),
        padding: const EdgeInsets.only(
          left: 32,
          top: 50.0,
          bottom: 50,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 5),
            Text(
              subtitle,
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
